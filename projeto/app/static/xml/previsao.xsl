<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <section>
           
            <table>
                <tr>
                    <th align="center">dia</th>
                    <th align="center">tempo</th>
                    <th align="center">max</th>
                    <th align="center">min</th>
                </tr>
                <xsl:for-each select="cidade/previsao">
                    <tr>
                        <td><xsl:value-of select="dia"/></td>
                        <td><xsl:value-of select="tempo"/></td>
                        <td><xsl:value-of select="maxima"/></td>
                        <td><xsl:value-of select="minima"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </section>
    </xsl:template>

</xsl:stylesheet>