from django.shortcuts import render
from lxml import etree
from lxml import builder

import urllib.request
import xml.etree.ElementTree as ET
from urllib.request import urlopen

# Create your views here.
def base(request):
    return render(request, 'index.html')

def forecast(request):
	#city_id=request.GET.get('city_id', '')

    url = 'http://servicos.cptec.inpe.br/XML/cidade/7dias/241/previsao.xml'
    l=[]
    with urlopen(url) as f:
        x=f.read()
        xml = etree.XML(x)
        query = "//previsao"
        xml_f = xml.xpath(query)
        #for c in xml_f:
        #	l+=c.text
        

    context = {
        #"courses": courses_dict,
        "forecast": xml_f
        #"root":x,
    }

    return render(request, 'forecast.html', context)
