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
            <td><xsl:value-of select="//Страна/Название"/></td>
            <td><xsl:value-of select="//Страна/Столица"/></td>
        </tr>
    </table>

<!-- ........................................... --> 

</body>
</html>

  </xsl:template>
</xsl:stylesheet>