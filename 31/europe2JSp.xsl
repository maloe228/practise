<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>
  <xsl:template match="/">

    <table border="1">
        <tr>
            <th><a href="#" onClick="loadStyle('europe2JSn.xsl','data');">Название</a></th>
            <th><a href="#" onClick="loadStyle('europe2JSc.xsl','data');">Столица</a></th>
            <th><a href="#" onClick="loadStyle('europe2JSns.xsl','data');">Население</a></th>
            <th><a href="#" onClick="loadStyle('europe2JSp.xsl','data');">Площадь</a></th>
        </tr>
        <xsl:for-each select="//Страна">
            <xsl:sort data-type="number" select="@Площадь"/>
            <tr>
                <td><xsl:value-of select="@Название"/></td>
                <td><xsl:value-of select="@Столица"/></td>
                <td class="number"><xsl:value-of select="@Население"/></td>
                <td class="number"><xsl:value-of select="@Площадь"/></td>
            </tr>
        </xsl:for-each>
    </table>

  </xsl:template>
</xsl:stylesheet>