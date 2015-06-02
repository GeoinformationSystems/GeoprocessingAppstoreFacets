<?xml version="1.0" encoding="UTF-8"?>	
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
xmlns:wps="http://www.opengis.net/wps/1.0.0" 
xmlns:xlink="http://www.w3.org/1999/xlink" 
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
xmlns:ows="http://www.opengis.net/ows/1.1" 
xmlns:mcp="http://gis.geo.tu-dresden.de/movingcode/1.1.0">
  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
  <xsl:strip-space elements="*"/>
	
  <xsl:template name="writeBaseInfo">
    <xsl:call-template name="writeGeneralInfo"/>
<!--     <xsl:call-template name="writeSpatialInfo"/>
    <xsl:call-template name="writeTemporalInfo"/>
	<xsl:call-template name="writeServiceInfo"/>
 -->  </xsl:template>
  
  <xsl:template name="writeGeneralInfo">
    <!--  id.fileid_s ??-->
    <field name="title"> <!-- _txt -->
      <xsl:value-of select="//mcp:wps100ProcessDescription/ows:Title"/>
    </field>
    <field name="description"><!-- _t -->
      <xsl:value-of select="./mcp:functionality/mcp:wps100ProcessDescription/ows:Title"/>
    </field>
    <xsl:for-each select="./mcp:functionality/mcp:wps100ProcessDescription/ows:Title">
      <field name="links"><!-- _ss -->
        <xsl:value-of select="current()"/>
      </field>
    </xsl:for-each>
    <field name="url.thumbnail_s">
      <xsl:value-of select="./mcp:functionality/mcp:wps100ProcessDescription/ows:Title"/>
    </field>
    <field name="keywords">
      <xsl:for-each select="./mcp:functionality/mcp:wps100ProcessDescription/ows:Metadata/@xlink:title">
        <xsl:value-of select="current()"/>
        <xsl:text> </xsl:text>
      </xsl:for-each>
    </field>
    <field name="containerType">
      <xsl:for-each select="./mcp:workspace/mcp:containerType">
        <xsl:value-of select="current()"/>
        <xsl:text> </xsl:text>
      </xsl:for-each>
    </field>
    <field name="platform">
      <xsl:for-each select="./mcp:platform/@mcp:platformId">
        <xsl:value-of select="current()"/>
        <xsl:text> </xsl:text>
      </xsl:for-each>
    </field>
<!--     <xsl:for-each select="./mcp:functionality/mcp:wps100ProcessDescription/ows:Title">
      <field name="keywords_ss">
        <xsl:value-of select="current()"/>
      </field>
    </xsl:for-each>    
     <xsl:for-each select="./mcp:functionality/mcp:wps100ProcessDescription/ows:Title">
      <field name="contact.organizations_ss">
        <xsl:value-of select="current()"/>
      </field>
    </xsl:for-each>
     <xsl:for-each select="./mcp:functionality/mcp:wps100ProcessDescription/ows:Title">
      <field name="contact.people_ss">
        <xsl:value-of select="current()"/>
      </field>
    </xsl:for-each>
 -->  </xsl:template>
  
</xsl:stylesheet>
		