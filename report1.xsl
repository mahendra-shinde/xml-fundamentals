<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- "/" referes to ROOT element in XML document.
     It means: All data from XML need to be processed-->
    <xsl:template match="/">
        <!-- Actual Formatting Template -->
        <html>
            <head>
                <title>Loan Report 2021-2022</title>
                <link type="text/css" rel="stylesheet" href="style1.css"/>
            </head>
            <body>
                <h1>The Loan Report Year 2021-2022</h1>
                <table>
                    <thead>
                        <tr>
                            <td>Account Number</td>
                            <td>Amount</td>
                            <td>Category</td>
                        </tr>
                    </thead>
                    <tbody>

                        <xsl:for-each select="loans/loan">
                            
                                <xsl:sort order="descending" data-type="number" select="@Amount" />
                                <tr>
                                <td>
                                    <xsl:value-of select="@AccountNumber" />
                                </td>
                                <td>
                                    <xsl:value-of select="@Amount" />
                                </td>
                                <td>
                                    <xsl:value-of select="@LoanCategory" />
                                </td>

                            </tr>

                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>