<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>
  <xsl:template match="/">

<html>
<head>
    <meta charset="UTF-8"/>
    <title>xml</title>

    <link rel="stylesheet" href="css/style.css"/>

    <link rel="shortcut icon" href="images/logo4.svg"/>
</head>
<body>

<!-- Правила преобразования XML-документа в HTML -->
    <table border="1">
        <tr>
            <th>Название0</th>
            <th>Столица</th>
            <th>Население</th>
            <th>Площадь</th>
        </tr>
        <xsl:for-each select="//Страна">
            <xsl:sort data-type="text" order="ascending" select="Название"/>
            <tr>
                <td><xsl:value-of select="@Название"/></td>
                <td><xsl:value-of select="@Столица"/></td>
                <td class="number"><xsl:value-of select="@Население"/></td>
                <td class="number"><xsl:value-of select="@Площадь"/></td>
            </tr>
        </xsl:for-each>
    </table>

    <table border="1">
        <tr>
            <th>Название1</th>
            <th>Столица</th>
            <th>Население</th>
            <th>Площадь</th>
        </tr>
        <xsl:for-each select="//Страна">
            <xsl:sort data-type="number" order="descending" select="Население"/>
            <tr>
                <td><xsl:value-of select="@Название"/></td>
                <td><xsl:value-of select="@Столица"/></td>
                <td class="number"><xsl:value-of select="@Население"/></td>
                <td class="number"><xsl:value-of select="@Площадь"/></td>
            </tr>
        </xsl:for-each>
    </table>

    <table border="1">
        <tr>
            <th>Название2</th>
            <th>Столица</th>
            <th>Население</th>
            <th>Площадь</th>
        </tr>
        <xsl:for-each select="//Страна">
            <xsl:sort data-type="number" order="descending" select="@Население"/>
            <xsl:if test="@Население > 20">
                <tr>
                    <td><xsl:value-of select="@Название"/></td>
                    <td><xsl:value-of select="@Столица"/></td>
                    <td class="number"><xsl:value-of select="@Население"/></td>
                    <td class="number"><xsl:value-of select="@Площадь"/></td>
                </tr>
            </xsl:if>
        </xsl:for-each>
    </table>

    <table border="1">
        <tr>
            <th>Название3</th>
            <th>Столица</th>
            <th>Население</th>
            <th>Площадь</th>
        </tr>
        <xsl:for-each select="//Страна">
            <xsl:sort data-type="number" order="ascending" select="@Площадь"/>
            <xsl:if test="@Площадь &lt; 200">
                <xsl:if test="@Население > 10">
                    <tr>
                        <td><xsl:value-of select="@Название"/></td>
                        <td><xsl:value-of select="@Столица"/></td>
                        <td class="number"><xsl:value-of select="@Население"/></td>
                        <td class="number"><xsl:value-of select="@Площадь"/></td>
                    </tr>
                </xsl:if>
            </xsl:if>
        </xsl:for-each>
    </table>

    <table border="1">
        <tr>
            <th>Название4</th>
            <th>Столица</th>
            <th>Население</th>
            <th>Площадь</th>
        </tr>
        <xsl:for-each select="//Страна[@Население > 10 and @Площадь &lt;200]">
            <xsl:sort data-type="number" order="ascending" select="@Площадь"/>
            <tr>
                <xsl:if test="position() mod 2 = 0">
                    <xsl:attribute name="bgcolor">#E6E6FF</xsl:attribute>
                </xsl:if>
                <td><xsl:value-of select="@Название"/></td>
                <td><xsl:value-of select="@Столица"/></td>
                <td class="number"><xsl:value-of select="@Население"/></td>
                <td class="number"><xsl:value-of select="@Площадь"/></td>
            </tr>
        </xsl:for-each>
    </table>

    <table border="1">
        <tr>
            <th>Название5</th>
            <th>Столица</th>
            <th>Население</th>
            <th>Площадь</th>
        </tr>
        <xsl:for-each select="//Страна[@Население &lt; 20 or @Площадь > 100]">
            <xsl:sort data-type="number" order="ascending" select="@Площадь"/>
            <tr>
                <xsl:if test="position() mod 2 = 0">
                    <xsl:attribute name="bgcolor">#E6E6FF</xsl:attribute>
                </xsl:if>
                <td><xsl:value-of select="@Название"/></td>
                <td><xsl:value-of select="@Столица"/></td>
                <td class="number"><xsl:value-of select="@Население"/></td>
                <td class="number"><xsl:value-of select="@Площадь"/></td>
            </tr>
        </xsl:for-each>
    </table>

<!-- ........................................... --> 

</body>
</html>

  </xsl:template>
</xsl:stylesheet>