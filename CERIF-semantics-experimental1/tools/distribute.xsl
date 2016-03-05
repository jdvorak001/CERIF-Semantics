<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cf="urn:xmlns:org:eurocris:cerif-1.6.1-3">
	<xsl:template match="cf:cfClassScheme">
		<xsl:variable name="filename" select="concat( replace( cf:cfName[@cfTrans='o'], ' ', '_' ), '--', cf:cfClassSchemeId, '.xml' )"/>
        <xsl:variable name="scheme" select="current()"/>
        <xsl:result-document href="{$filename}">
            <xsl:for-each select="/*">
                    <xsl:text>
</xsl:text>
                <xsl:copy copy-namespaces="yes">
                    <xsl:copy-of select="@*"/>
                    <xsl:text>
</xsl:text>
                    <xsl:copy-of select="$scheme"/>
                    <xsl:text>
</xsl:text>
                </xsl:copy>
            </xsl:for-each>
        </xsl:result-document>
	</xsl:template>
</xsl:stylesheet>