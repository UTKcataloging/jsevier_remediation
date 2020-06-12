<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.og/2001/XMLSchema"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns="http://www.loc.gov/mods/v3"
    xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-5.xsd"
    exclude-result-prefixes="xs"
    xpath-default-namespace="http://www.loc.gov/mods/v3"
    version="2.0">
    
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="text()">
        <xsl:value-of select="normalize-space(.)"/>
    </xsl:template>
    
    <xsl:template match="subject"/>

    <xsl:template match="relatedItem[@displayLabel='Project']"/>

    <xsl:template match="relatedItem[@displayLabel='Collection']"/>

    <xsl:template match="accessCondition"/>
    
    <xsl:template match='mods'>
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
            <physicalDescription>
                <form authority="aat" valueURI="http://vocab.getty.edu/aat/300026877">correspondence</form>
                <form authority="aat" valueURI="http://vocab.getty.edu/aat/300028569">manuscripts (documents)</form>
            </physicalDescription>
            <subject authority="lcsh" valueURI="http://id.loc.gov/authorities/subjects/sh85140194">
                <topic>United States -- History -- War of 1812</topic>
            </subject>
            <subject authority="lcsh" valueURI="http://id.loc.gov/authorities/subjects/sh85056115">
                <topic>Governors</topic>
            </subject>
            <subject authority="naf" valueURI="http://id.loc.gov/authorities/names/n79055568">
                <name>
                    <namePart>Dearborn, Henry, 1751-1829</namePart>
                </name>
            </subject>
            <subject authority="naf" valueURI="http://id.loc.gov/authorities/names/n85198931">
                <name>
                    <namePart>Henley, David, 1749-1823</namePart>
                </name>
            </subject>
            <subject authority="naf" valueURI="http://id.loc.gov/authorities/names/n92008354">
                <name>
                    <namePart>Meigs, Return Jonathan, 1740-1823</namePart>
                </name>
            </subject>
            <subject authority="naf" valueURI="http://id.loc.gov/authorities/names/n89613198">
                <name>
                    <namePart>Overton, John, 1766-1833</namePart>
                </name>
            </subject>
            <subject authority="naf" valueURI="http://id.loc.gov/authorities/names/n79060965">
                <geographic>Tennessee</geographic>
            </subject>
            <relatedItem displayLabel="Project" type="host">
                <titleInfo>
                    <title>John Sevier Papers</title>
                </titleInfo>
            </relatedItem>
            <relatedItem displayLabel="Collection" type="host">
                <titleInfo>
                    <title>John Sevier Collection</title>
                </titleInfo>
                <identifier>MS.1941</identifier>
            </relatedItem>
            <accessCondition type="use and reproduction" xlink:href="http://rightsstatements.org/vocab/NoC-US/1.0/">No Copyright - United States</accessCondition>
        </xsl:copy>
    </xsl:template>
    
    <xsl:strip-space elements="*"/>
</xsl:stylesheet>