<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>
  <xsl:template match="/">

<html>
<head>
</head>
<body>

<!-- Правила преобразования XML-документа в HTML -->
    <table border="1">
        <tr>
            <th>Название</th>
            <th>Столица</th>
            <th>Население</th>
            <th>Площадь</th>
        </tr>
        <xsl:for-each select="//Страна">
            <xsl:sort data-type="text" order="ascending" select="Название"></xsl:sort>
            <tr>
                <td><xsl:value-of select="Название"/></td>
                <td><xsl:value-of select="Столица"/></td>
                <td><xsl:value-of select="Население"/></td>
                <td><xsl:value-of select="Площадь"/></td>
            </tr>
        </xsl:for-each>
    </table>

    <table border="1">
        <tr>
            <th>Название</th>
            <th>Столица</th>
            <th>Население</th>
            <th>Площадь</th>
        </tr>
        <xsl:for-each select="//Страна">
            <xsl:sort data-type="number" order="descending" select="Население"></xsl:sort>
            <xsl:if test="Население > 20">
            <tr>
                <td><xsl:value-of select="Название"/></td>
                <td><xsl:value-of select="Столица"/></td>
                <td><xsl:value-of select="Население"/></td>
                <td><xsl:value-of select="Площадь"/></td>
            </tr>
            </xsl:if>
        </xsl:for-each>
    </table>

<!-- ........................................... --> 

</body>
</html>

  </xsl:template>
</xsl:stylesheet>