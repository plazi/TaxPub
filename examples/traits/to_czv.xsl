<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tp="http://www.plazi.org/taxpub"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output encoding="UTF-8" indent="no" method="text"/>
    <xsl:template match="/">
        <xsl:apply-templates select="//tp:descriptive-statement"/>
    </xsl:template>
    <xsl:template match="tp:descriptive-statement">
        <xsl:apply-templates select="tp:descriptive-statement-part">
            
        </xsl:apply-templates>
    </xsl:template>
    <xsl:template match="tp:descriptive-statement-part">
        <xsl:apply-templates select="@*"></xsl:apply-templates>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="@*">
        <xsl:value-of select="."></xsl:value-of>
    </xsl:template>
</xsl:stylesheet>