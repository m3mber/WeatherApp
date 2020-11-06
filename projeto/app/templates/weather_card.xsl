{% extends 'base.html' %}

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">


        {% block content %}
        
            <!--/.Weather Widget -->
            <div class="row p-0 m-0 container mainsection p-2 text-center">
                <div class="col-lg-14 pb-4 text-center">
                    <div class="weather-part-second border text-center">
                        <div class="row text-center">
                            <div class="col-lg-12 weather-part-second-image">
                                <img src="http://nicesnippets.com/demo/weather-image2.jpg">
                                <div class="badge badge-danger weather-part-second-image-label pl-3 pr-3 pt-2 rounded-0">
                                    <p>15</p>
                                    <p>jun</p>
                                </div>
                            </div>
                            <div class="col-lg-12 col-12 text-center">
                                <div class="weather-part-second-icon bg-white">
                                    <div class="row">
                                        <div class="col-lg-2 col-6 p-2">
                                            <p class="pt-3"><i class="fa fa-thermometer-quarter" aria-hidden="true"></i></p>
                                            <p>25 <sup><i class="fa fa-circle-o" aria-hidden="true"></i></sup></sup></p>
                                            <p>6pm</p>
                                        </div>
                                        <div class="col-lg-2 col-6 p-2">
                                            <p class="pt-3"><i class="fa fa-cloud" aria-hidden="true"></i></p>
                                            <p>30 <sup>C <sup><i class="fa fa-circle-o" aria-hidden="true"></i></sup></sup></p>
                                            <p>8pm</p>
                                        </div>
                                        <div class="col-lg-2 col-6 p-2">
                                            <p class="pt-3"><i class="fa fa-sun-o" aria-hidden="true"></i></p>
                                            <p>28<sup>C <sup><i class="fa fa-circle-o" aria-hidden="true"></i></sup></sup></p>
                                            <p>12am</p>
                                        </div>
                                        <div class="col-lg-2 col-6 p-2">
                                            <p class="pt-3"><i class="fa fa-thermometer-quarter" aria-hidden="true"></i></p>
                                            <p>25 <sup>C <sup><i class="fa fa-circle-o" aria-hidden="true"></i></sup></sup></p>
                                            <p>8am</p>
                                        </div>
                                        <div class="col-lg-2 col-6 p-2">
                                            <p class="pt-3"><i class="fa fa-bolt" aria-hidden="true"></i></p>
                                            <p>50%</p>
                                            <p>10pm</p>
                                        </div>
                                        <div class="col-lg-2 col-6 p-2">
                                            <p class="pt-3"><i class="fa fa-thermometer-quarter" aria-hidden="true"></i></p>
                                            <p>2MPH</p>
                                            <p>1am</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        {% endblock %}


    </xsl:template>
</xsl:stylesheet>