<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/blog">
    <html>
        <body>
            <h1><xsl:value-of select="author" />'s Blog</h1>
        </body>
    </html>
    </xsl:template>

</xsl:stylesheet>
