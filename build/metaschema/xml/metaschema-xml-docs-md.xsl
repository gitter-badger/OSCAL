<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:import href="metaschema-xml-html.xsl"/>
    <xsl:import href="../../../util/publish/XSLT/html-to-markdown.xsl"/>
    
<!-- output method must be text for good markdown including unescaped code snips   -->
    <xsl:output method="text"/>
    
    <xsl:template match="/">
        <xsl:variable name="html">
            <xsl:apply-imports/>
        </xsl:variable>
        <!--<xsl:copy-of select="$html"/>-->
        <xsl:apply-templates select="$html" mode="md"/>
    </xsl:template>
    
</xsl:stylesheet>