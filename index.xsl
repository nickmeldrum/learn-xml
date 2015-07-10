<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/blog">
    <html>
        <body>
            <header>
                <h1><xsl:value-of select="author" />'s Blog</h1>
            </header>

            <nav>
                <xsl:call-template name="postlist" />
            </nav>

            <xsl:apply-templates select="posts/post" />
        </body>
    </html>
    </xsl:template>

    <xsl:template match="posts/post">
        <article>
            <xsl:apply-templates />
        </article>
    </xsl:template>

    <xsl:template match="//@*|node()">
        <xsl:copy>
          <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template name="postlist">
        <ul>
            <xsl:for-each select="posts/post">
                <xsl:value-of select="h2" />
            </xsl:for-each>
        </ul>
    </xsl:template>

</xsl:stylesheet>

