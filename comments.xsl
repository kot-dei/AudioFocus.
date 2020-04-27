<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <style>
                    body {
                        font-size: 24px;
                    }
                    table {
                        border: 1px solid black;
                    }

                    td {
                        border: 1px solid black;
                    }
                </style>
            </head>
            <body>
                <div>
                    <table>
                        <thead>
                            <th>user</th>
                            <th>comments</th>
                            <th>mark</th>дf
                            <th>id</th>
                        </thead>
                        <tbody>
                            <xsl:apply-templates select="//comments" mode="head"></xsl:apply-templates>
                        </tbody>
                    </table>
                </div>

            </body>
        </html>
    </xsl:template>

    <xsl:template match="comments" mode="head">

            <tr>
                <td>
                    <xsl:value-of select="//nameofuser/@name"></xsl:value-of>
                </td>
                <td>
                    <xsl:value-of select="//comments/@attachments"></xsl:value-of>
                </td>
                <td>
                    <xsl:value-of select="//time/@days"></xsl:value-of>:<xsl:value-of select="//time/@hours"></xsl:value-of>:<xsl:value-of select="//time/@minutes"></xsl:value-of>:<xsl:value-of select="//time/@seconds"></xsl:value-of>
                </td>
                <td>
                    <xsl:value-of select="//mark/@comments"></xsl:value-of>
                </td>
                <td>
                    <xsl:text><xsl:value-of select="generate-id()"/></xsl:text>
                </td>
            </tr>
    </xsl:template>


</xsl:stylesheet>