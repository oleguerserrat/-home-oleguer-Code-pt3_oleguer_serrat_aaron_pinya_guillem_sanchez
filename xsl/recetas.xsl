<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <!-- <meta charset='utf-8'>
                <meta http-equiv='X-UA-Compatible' content='IE=edge'> -->
                <title>Receptes</title>
                <!-- <meta name='viewport' content='width=device-width, initial-scale=1'> -->
                <!-- <link rel="stylesheet" href="../css/b.css" type="text/css" /> -->
                <link />
                <link rel="stylesheet" href="../css/menu.css" type="text/css" />
                <link rel="stylesheet" href="../css/recetas.css" type="text/css" />
            </head>

            <body>
                <header class="header">
                    <img class="imagen-header" src="../imagenes/Logo-Delicias.png"></img>
                    <nav>
                        <ul id="menulist">
                            <li class="menuitem">
                                <a href="../index.html">INICIO</a>
                            </li>
                            <li class="selected-menuitem">
                                <a href="../sobremi/sobremi.html">SOBRE MI</a>
                            </li>
                            <li class="menuitem">
                                <a href="../recetas/recetas.xml">RECETAS</a>
                            </li>
                            <li class="menuitem">
                                <a href="../formulario/formulario.html">CONTACTO</a>
                            </li>
                            <li class="menuitem">
                                <a href="../otrascosas/otrascosas.html">OTRAS COSAS</a>
                            </li>
                        </ul>
                    </nav>
                </header>


                <div class="grid-container">
                    <xsl:for-each select="recetas/receta">


                        <div class="grid-item item">
                            <div class="item-content">



                                <div style='visibility: hidden; position: absolute;'><xsl:value-of select="url" /></div>
                                <a href="{url}">
                                    <!-- no tocar asi funciona -->
                                    <div style='visibility: hidden; position: absolute;'><xsl:value-of select="imagen" /></div>
                                    <div  style='background: url("{imagen}") no-repeat left center;' class='image'></div>
                                    <!-- <xsl:variable name="imagen">/imagen-1</xsl:variable>
                                    
                                    <xsl:template match="imagen">
                                        <div style="background-image: url({imagen-1});"></div>

                                        <img src="{imagen}/{href}" />
                                    </xsl:template> -->


                                    <div class="description">
                                        <h3>
                                            <xsl:value-of select="nombre" />
                                        </h3>
                                        <xsl:for-each select="ingredientes">
                                            <p>
                                                <xsl:value-of select="." />
                                            </p>
                                        </xsl:for-each>
                                    </div>

                                </a>
                            </div>
                        </div>

                    </xsl:for-each>
                </div>

                <!-- <ul>
                    <xsl:for-each select="recetas/receta">
                        <h2>
                            <xsl:value-of select="nombre" />
                        </h2>
                        <h3>Dificultad:</h3>
                        <xsl:for-each select="ingredientes">
                            <p>
                                <xsl:value-of select="." />
                            </p>
                        </xsl:for-each>
                        <h3>Ingredientes:</h3>
                        <xsl:for-each select="dificultad">
                            <p>
                                <xsl:value-of select="." />
                            </p>
                        </xsl:for-each>

                    </xsl:for-each>
                </ul> -->

            </body>

            <footer class="footer">
                <a class="xarxes-socials" href="https://www.facebook.com/deliciaskitchen">FACEBOOK</a>
                <a class="xarxes-socials" href="https://www.twitter.com/deliciaskitchen">TWITTER</a>
                <a class="xarxes-socials" href="https://www.instagram.com/deliciaskitchen">INSTAGRAM</a>
                <a class="xarxes-socials" href="https://www.pinterest.com/deliciaskitchen">PINTEREST</a>
                <a class="xarxes-socials" href="mailto:contact@deliciaskitchen.com">EMAIL</a>
                <a class="xarxes-socials" href="#">RSS</a>
            </footer>

        </html>
    </xsl:template>
</xsl:stylesheet>