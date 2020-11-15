<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">


        <xsl:for-each select="cidade/previsao[1]">

            <!-- ec	Encoberto com Chuvas Isoladas -->
            <xsl:if test="tempo = 'ec' ">
                <h5 class="text-white">Encoberto com chuvas isoladas</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- ci	Chuvas Isoladas -->
            <xsl:if test="tempo= 'ci' ">
                <h5 class="text-white">Chuvas isoladas</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- c	Chuva -->
            <xsl:if test="tempo= 'c' ">
                <h5 class="text-white">Chuva</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- in	Instável -->
            <xsl:if test="tempo= 'in' ">
                <h5 class="text-white">Tempo instável</h5>
                <img src="https://www.zougla.gr/assets/images/2423786.jpg" />
            </xsl:if>

            <!-- pp	Poss. de Pancadas de Chuva -->
            <xsl:if test="tempo= 'pp' ">
                <h5 class="text-white">Pancadas de chuva</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- cm	Chuva pela Manhã -->
            <xsl:if test="tempo= 'cm' ">
                <h5 class="text-white">Chuva pela manhã</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- cn	Chuva a Noite -->
            <xsl:if test="tempo= 'cn' ">
                <h5 class="text-white">Chuva à noite</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- pt	Pancadas de Chuva a Tarde -->
            <xsl:if test="tempo= 'pt' ">
                <h5 class="text-white">Chuva à tarde</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>


            <!-- pm	Pancadas de Chuva pela Manhã -->
            <xsl:if test="tempo= 'pm' ">
                <h5 class="text-white">Pancadas de chuva pela manhã</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- np	Nublado e Pancadas de Chuva -->
            <xsl:if test="tempo= 'np' ">
                <h5 class="text-white">Nublado e pancadas de chuva</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- pn	Parcialmente Nublado -->
            <xsl:if test="tempo= 'pn' ">
                <h5 class="text-white">Parcialmente Nublado</h5>
                <img src="https://acreagora.com/wp-content/uploads/2019/03/temponublado.jpg" />
            </xsl:if>

            <!-- cv	Chuvisco -->
            <xsl:if test="tempo = 'cv' ">
                <h5 class="text-white">Chuviso</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- ch	Chuvoso -->
            <xsl:if test="tempo= 'ch' ">
                <h5 class="text-white">Chuvoso</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- t	Tempestade -->
            <xsl:if test="tempo= 't' ">
                <h5 class="text-white">Tempestade</h5>
                <img src="https://cdn.vezdavoz.com.br/wp-content/uploads/2018/04/tempestade-de-raios.jpg" />
            </xsl:if>

            <!-- ps	Predomínio de Sol -->
            <xsl:if test="tempo= 'ps' ">
                <h5 class="text-white">Sol</h5>
                <img src="https://www.eaglevalleynews.com/wp-content/uploads/2019/04/16619380_web1_SunnyFarmland1WEB.jpg" />
            </xsl:if>

            <!-- e	Encoberto -->
            <xsl:if test="tempo= 'e' ">
                <h5 class="text-white">Encoberto</h5>
                <img src="https://acreagora.com/wp-content/uploads/2019/03/temponublado.jpg" />
            </xsl:if>

            <!-- n	Nublado -->
            <xsl:if test="tempo= 'n' ">
                <h5 class="text-white">Nublado</h5>
                <img src="https://acreagora.com/wp-content/uploads/2019/03/temponublado.jpg" />
            </xsl:if>

            <!-- cl	Céu Claro -->
            <xsl:if test="tempo= 'cl' ">
                <h5 class="text-white">Céu claro</h5>
                <img src="https://www.eaglevalleynews.com/wp-content/uploads/2019/04/16619380_web1_SunnyFarmland1WEB.jpg" />
            </xsl:if>

            <!-- nv	Nevoeiro -->
            <xsl:if test="tempo= 'nv' ">
                <h5 class="text-white">Nevoeiro</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

           <!-- g	Geada -->
            <xsl:if test="tempo = 'g' ">
                <h5 class="text-white">Geada</h5>
                <img src="https://www.wallpaperup.com/uploads/wallpapers/2015/02/25/629052/c5f796f72e2ecd32442e15b1b2a65a81.jpg" />
            </xsl:if>

            <!-- ne	Neve -->
            <xsl:if test="tempo= 'ne' ">
                <h5 class="text-white">Neve</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- nd	Não Definido-->
            <xsl:if test="tempo= 'nd' ">
                <h5 class="text-white">Indefinido</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- pnt	Pancadas de Chuva a Noite -->
            <xsl:if test="tempo= 'pnt' ">
                <h5 class="text-white">Pancadas de chuva à noite</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- psc	Possibilidade de Chuva -->
            <xsl:if test="tempo= 'psc' ">
                <h5 class="text-white">Possibilidade de chuva</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- pcm	Possibilidade de Chuva pela Manhã -->
            <xsl:if test="tempo= 'pcm' ">
                <h5 class="text-white">Possibilidade de chuva pela manhã</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- pct	Possibilidade de Chuva a Tarde -->
            <xsl:if test="tempo= 'pct' ">
                <h5 class="text-white">Possibilidade de chuva à tarde</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- pcn	Possibilidade de Chuva a Noite -->
            <xsl:if test="tempo= 'pcn' ">
                <h5 class="text-white">Possibilidade de chuva à noite</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- npt	Nublado com Pancadas a Tarde -->

            <xsl:if test="tempo= 'npt' ">
                <h5 class="text-white">Nublado com chuva à tarde</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- npn	Nublado com Pancadas a Noite -->
            <xsl:if test="tempo= 'npn' ">
                <h5 class="text-white">Nublado com chuva à noite</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- ncn	Nublado com Poss. de Chuva a Noite -->
            <xsl:if test="tempo= 'ncn' ">
                <h5 class="text-white">Nublado com prob. chuva à noite</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- nct	Nublado com Poss. de Chuva a Tarde -->
            <xsl:if test="tempo= 'nct' ">
                <h5 class="text-white">Nublado com prob. chuva à tarde</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- ncm	Nubl. c/ Poss. de Chuva pela Manhã -->
            <xsl:if test="tempo= 'ncm' ">
                <h5 class="text-white">Nublado com prob chuva pela manhã</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- npm	Nublado com Pancadas pela Manhã -->
            <xsl:if test="tempo= 'npm' ">
                <h5 class="text-white">Nublado com pancadas pela manhã</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- npp	Nublado com Possibilidade de Chuva -->
            <xsl:if test="tempo= 'pcn' ">
                <h5 class="text-white">Nublado com prob. de chuva</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- vn	Variação de Nebulosidade -->
            <xsl:if test="tempo= 'vn' ">
                <h5 class="text-white">Veriação de nebulosidade</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

             <!-- ct	Nublado com Pancadas pela Manhã -->
            <xsl:if test="tempo= 'ct' ">
                <h5 class="text-white">Nublado com pancadas pela manhã</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- ppn	Poss. de Panc. de Chuva a Noite -->
            <xsl:if test="tempo= 'ppn' ">
                <h5 class="text-white">Prob. chuva à noite</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- ppt	Poss. de Panc. de Chuva a Tarde -->
            <xsl:if test="tempo= 'ppt' ">
                <h5 class="text-white">Prob. chuva à tarde</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

            <!-- ppm	Poss. de Panc. de Chuva pela Manhã -->
            <xsl:if test="tempo= 'ppm' ">
                <h5 class="text-white">Prob. chuva pela manhã</h5>
                <img src="https://mynorthwest.com/wp-content/uploads/2019/11/seattle-rain-620-flickr.jpg" />
            </xsl:if>

        </xsl:for-each>



    </xsl:template>
</xsl:stylesheet>