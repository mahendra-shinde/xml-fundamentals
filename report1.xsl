<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!-- "/" referes to ROOT element in XML document.
     It means: All data from XML need to be processed-->
<xsl:template match="/"> 
<!-- Actual Formatting Template -->
<html>
    <head>
        <title>Loan Report 2021-2022</title>
    </head>
    <body>
        <xsl:for-each select="loans/loan">
        <xsl:sort order="descending" data-type="number" select="@Amount" />
                Loan Account Number: <xsl:value-of select="@AccountNumber" /> <br/>
                Loan Amount : <xsl:value-of select="@Amount" /> <br/>
                <hr />
        </xsl:for-each>
    </body>
</html>

</xsl:template>

</xsl:stylesheet>