<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">


<xsl:for-each select="cidade/previsao">

        <div class="row p-0 m-0 container mainsection p-2 text-center">
            <div class="col-lg-14 pb-4 text-center">
                <div class="weather-part-second border text-center">
                    <div class="row text-center">

                        

                        <div class="col-lg-12 weather-part-second-image">
                            
                                <p> <xsl:value-of select="dia"/> </p>
                            
                        </div>
                        <div class="col-lg-12 col-12 text-center">
                            <div class="weather-part-second-icon bg-white">
                                <div class="row">
                                    <div class="col-lg-2 col-6 p-2">
                                        <p class="pt-3"> <i class="fa fa-thermometer-quarter" aria-hidden="true"></i></p>
                                        <p>  <xsl:value-of select="maxima"/> <sup><i class="fa fa-circle-o" aria-hidden="true"></i></sup></p>
                                        <p>  <xsl:value-of select="minima"/> </p>
                                    </div> 
                                </div>
                            </div>
                        </div>

                    



                    </div>
                </div>
            </div>
        </div>
            </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>