<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">

        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>car</title>

                <link rel="stylesheet" href="css/style.css"/>

                <link rel="shortcut icon" href="images/logo4.svg"/>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <th>Фото</th>
                        <th>Ссылка</th>
                    </tr>
                    <xsl:for-each select="//Авто">
                        <xsl:sort select="@Название"/>
                        <tr>
                            <td>
                                <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="@Фото"/>
                                    </xsl:attribute>
                                </img>
                            </td>
                            <td>
                                <a>
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="@Ссылка"/>
                                    </xsl:attribute>
                                    <xsl:value-of select="@Название"/>
                                </a>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>