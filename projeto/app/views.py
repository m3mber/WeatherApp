from django.shortcuts import render
from lxml import etree
from lxml import builder
import re
import os
import unicodedata
from EDC_WEATHER.settings import BASE_DIR

import urllib.request
import xml.etree.ElementTree as ET
from urllib.request import urlopen


# Create your views here.
def index(request):
    return render(request, 'index.html')


def forecast_city(request):
    city_id=0
    if 'cityText' in request.POST:
        city_name=request.POST['cityText']
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
                city_id = c.find('id').text

        if city_id!=0:
            url_forecast = 'http://servicos.cptec.inpe.br/XML/cidade/7dias/'+city_id+'/previsao.xml'
            with urlopen(url_forecast) as d:
                xml_forecast = etree.parse(d)
            #xml_forecast = urlopen(url_forecast)
            xslt_path = os.path.join(BASE_DIR, "app", "static","xml","previsao.xsl")
            xslt_file = etree.parse(xslt_path)
            transform = etree.XSLT(xslt_file)

            forecast_table = transform(xml_forecast)

            context = {
                'city_name':city_name,
                'forecast':forecast_table,
            }

        else:
            context = {
                'forecast':"cidade inexistente no Brasil",
            }

    else:
        context= {
            'forecast':"tem de escolher cidade!"
        }



    return render(request, 'forecast.html', context)

def weather_card(request):
    return render(request, 'weather_card.xsl')
