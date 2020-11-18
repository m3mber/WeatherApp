<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

            <div class="col-lg-12 col-12 text-center">
                <div class="weather-part-second-icon bg-white">
                    <div class="row">
                        <div class="col-lg-2 col-6 p-2">
                            <p> <xsl:value-of select="cidade/previsao[1]/dia"/> </p>
                            <p class="text-danger"> <xsl:value-of select="cidade/previsao[1]/maxima"/>º </p>
                            <p class="text-info"> <xsl:value-of select="cidade/previsao[1]/minima"/>º </p>
                    	</div>
                          
                            
                        <div class="col-lg-2 col-6 p-2">
                            <p> <xsl:value-of select="cidade/previsao[2]/dia"/> </p>
                            <p class="text-danger"> <xsl:value-of select="cidade/previsao[2]/maxima"/>º </p>
                            <p class="text-info"> <xsl:value-of select="cidade/previsao[2]/minima"/>º </p>
                        </div>
                           
                            
                        <div class="col-lg-2 col-6 p-2">
                            <p> <xsl:value-of select="cidade/previsao[3]/dia"/> </p>
                            <p class="text-danger"> <xsl:value-of select="cidade/previsao[3]/maxima"/>º </p>
                            <p class="text-info"> <xsl:value-of select="cidade/previsao[3]/minima"/>º </p>
                        </div>
                            
                 
                        <div class="col-lg-2 col-6 p-2">
                            <p> <xsl:value-of select="cidade/previsao[4]/dia"/> </p>
                            <p class="text-danger"> <xsl:value-of select="cidade/previsao[4]/maxima"/>º </p>
                            <p class="text-info"> <xsl:value-of select="cidade/previsao[4]/minima"/>º </p>
                        </div>
                            
                        <div class="col-lg-2 col-6 p-2">
                            <p> <xsl:value-of select="cidade/previsao[5]/dia"/> </p>
                            <p class="text-danger"> <xsl:value-of select="cidade/previsao[5]/maxima"/>º </p>
                            <p class="text-info"> <xsl:value-of select="cidade/previsao[5]/minima"/>º </p>
                        </div>
                         
                        <div class="col-lg-2 col-6 p-2">
                            <p> <xsl:value-of select="cidade/previsao[6]/dia"/> </p>
                            <p class="text-danger"> <xsl:value-of select="cidade/previsao[6]/maxima"/>º </p>
                            <p class="text-info"> <xsl:value-of select="cidade/previsao[6]/minima"/>º </p>
                        </div>
                    </div>
                </div>
            </div>

    </xsl:template>
</xsl:stylesheet>