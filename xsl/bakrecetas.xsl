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
                <link rel="stylesheet" href="../css/index.css" type="text/css" />
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
                                <a href="../recetas/recetas.html">RECETAS</a>
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
                <h1>Recetas</h1>
                <ul>
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
                        <!-- aqui le metemos mas mierdas -->
                        <h3>Ingredientes:</h3>
                        <xsl:for-each select="dificultad">
                            <p>
                                <xsl:value-of select="." />
                            </p>
                        </xsl:for-each>

                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>