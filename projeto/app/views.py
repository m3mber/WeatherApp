from django.shortcuts import render
from lxml import etree
from lxml import builder
from datetime import date
import re
import os
import unicodedata
from EDC_WEATHER.settings import BASE_DIR
import urllib.request
import xml.etree.ElementTree as ET
from urllib.request import urlopen
from BaseXClient import BaseXClient

from django.contrib.auth import login, authenticate
from django.shortcuts import render, redirect
from app.forms import SignUpForm

# Create your views here.
def index(request):
    return render(request, 'index.html')


#********************* 7 DAY WEATHER WIDGET ********************************
#*****************************************************************************
def forecast_city(request):
    
    if 'cityText' in request.POST:
        city_name=request.POST['cityText']
        city_id= findCityId(city_name)

        if city_id!=0:
            url_forecast = 'http://servicos.cptec.inpe.br/XML/cidade/7dias/'+str(city_id)+'/previsao.xml'
            with urlopen(url_forecast) as d:
                xml_forecast = etree.parse(d)
            #xml_forecast = urlopen(url_forecast)

            #Template da previsão dos 7 dias
            xslt_path = os.path.join(BASE_DIR, "app", "static","xml","previsao_7days.xsl")
            xslt_file = etree.parse(xslt_path)
            transform = etree.XSLT(xslt_file)
            forecast_template = transform(xml_forecast)

            #Template para mudar a imagem dinamicamente
            xslt_path = os.path.join(BASE_DIR, "app", "static","xml","previsao_image.xsl")
            xslt_file = etree.parse(xslt_path)
            transform = etree.XSLT(xslt_file)
            image_template = transform(xml_forecast)
            data_pt = day_card()

            context = {
                'city_name':city_name,
                'forecast':forecast_template,
                'image': image_template,
                'day': data_pt,
            }

        else:
            context = {
                'forecast':"Cidade inexistente no Brasil",
            }

    else:
        context= {
            'forecast':"Tem que escolher uma cidade!"
        }

    return render(request, 'weather_card.html', context)

#*********************************************************************************************
def waves_card(request):
    
    if 'cityText' in request.POST:
        city_name=request.POST['cityText']
        city_id= findCityId(city_name)

        if city_id!=0:
            url_ondas = 'http://servicos.cptec.inpe.br/XML/cidade/' + str(city_id) +'/dia/0/ondas.xml'
            with urlopen(url_ondas) as d:
                xml_ondas = etree.parse(d)

            if xml_ondas.xpath('//nome')[0].text == '' or xml_ondas.xpath('//nome')[0].text == 'undefined':
                context = {
                    'city_name': city_name,
                    'forecast': '',
                    'image': '',
                    'day': day_card(),
                }
            else:
                #Template da ondulação
                xslt_path = os.path.join(BASE_DIR, "app", "static","xml","ondulacao.xsl")
                xslt_file = etree.parse(xslt_path)
                transform = etree.XSLT(xslt_file)
                ondas_template = transform(xml_ondas)

                xslt_path = os.path.join(BASE_DIR, "app", "static","xml","previsao_mar.xsl")
                xslt_file = etree.parse(xslt_path)
                transform = etree.XSLT(xslt_file)
                image_template = transform(xml_ondas)

                context = {
                    'city_name': city_name,
                    'forecast': ondas_template,
                    'image': image_template,
                    'day': day_card(),
                }
        else:
            context = {
                'day':day_card(),
                'forecast': 'Cidade Inválida!',
            }
    else:
        context= {
            'forecast':"Tem que escolher uma cidade!",
            'day':day_card(),
        }

    return render(request, 'ondulacao.html', context)
#*********************************************************************************************

def signup(request):
    if request.method == 'POST':
        form = SignUpForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            raw_password = form.cleaned_data.get('password1')
            user = authenticate(username=username, password=raw_password)
            login(request, user)
            return redirect('index')
    else:
        form = SignUpForm()
    return render(request, 'signup.html', {'form': form})

########################################################################################
# Funções Auxiliares
########################################################################################

def findCityId(city_name):
	# create session
    session = BaseXClient.Session('localhost', 1984, 'admin', 'admin')
    city_id = 0
    try:
        city_name_norm=unicodedata.normalize('NFD', city_name.lower())\
            .encode('ascii', 'ignore')\
            .decode("utf-8")
        c_n=re.sub(r"[^\w\s]", '', city_name_norm)
        c_n=re.sub(r"\s+", '%20', c_n)
        url_city="http://servicos.cptec.inpe.br/XML/listaCidades?city="+c_n
        city_name = city_name.lower()
        # create new database
        xml = urlopen(url_city).read().decode("iso-8859-1")
        session.create("cidades", str(xml))

        query = "let $cs := doc('cidades') for $c in $cs//cidade where lower-case($c/nome)='" + city_name + "' return $c/id/text()"
        queryResult = session.query(query)
        
	    # loop through all results
        for typecode, item in queryResult.iter():
            city_id = int(item)

        # close query object
        queryResult.close()

    finally:
        # close session
        if session:
            session.close()

    return city_id
    
    """city_id = 0
    city_name=unicodedata.normalize('NFD', city_name.lower())\
        .encode('ascii', 'ignore')\
        .decode("utf-8")
    c_n=re.sub(r"[^\w\s]", '', city_name)
    c_n=re.sub(r"\s+", '%20', c_n)

    url_city="http://servicos.cptec.inpe.br/XML/listaCidades?city="+c_n
    f = urlopen(url_city).read()

    xml_city=etree.fromstring(f)

    query = "//cidades/cidade"

    cities = xml_city.xpath(query)

    for c in cities:
        name = c.find('nome').text.lower()
        name = unicodedata.normalize('NFD', name)\
            .encode('ascii', 'ignore')\
            .decode("utf-8")
        if name == city_name:
            city_id = c.find('id').text"""

    

#**************************************************************************************
def day_card():
    today = date.today()
    d2 = today.strftime("%d %B")
    data = d2.split()

    for item in data:
        if item == 'January':
            data[1] = 'de Janeiro'
        if item == 'February':
            data[1] = 'de Fevereiro'
        if item == 'November':
            data[1] = 'de Novembro'
        if item == 'December':
            data[1] = 'de Dezembro'

    data_pt = " ".join(data)
    return data_pt
