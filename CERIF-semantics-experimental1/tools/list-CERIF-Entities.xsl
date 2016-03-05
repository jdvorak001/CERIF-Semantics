<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cf="urn:xmlns:org:eurocris:cerif-1.6.1-3">
    <xsl:output method="text"/>

    <xsl:template match="cf:cfClass">
        <xsl:value-of select="upper-case( cf:cfClassId )"/>
        <xsl:text> </xsl:text>
        <xsl:value-of select="cf:cfTerm[@cfTrans='o']"/>
        <xsl:text>
</xsl:text>
    </xsl:template>
    
    <xsl:template match="text()"/>

</xsl:stylesheet>