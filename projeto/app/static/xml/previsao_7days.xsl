<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

            <div class="col-lg-12 col-12 text-center">
                <div class="weather-part-second-icon bg-white">
                    <div class="row">
                            <xsl:for-each select="cidade/previsao">
                                <div class="col-lg-2 col-6 p-2">
                                        <p> <xsl:value-of select="dia"/> </p>
                                        <p class="text-danger"> <xsl:value-of select="maxima"/>º </p>
                                        <p class="text-info"> <xsl:value-of select="minima"/>º </p>
                                </div>
                            </xsl:for-each>
                    </div>
                </div>
            </div>

    </xsl:template>
</xsl:stylesheet>