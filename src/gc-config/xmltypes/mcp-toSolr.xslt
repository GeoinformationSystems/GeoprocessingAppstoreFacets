<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" 
xmlns:wps="http://www.opengis.net/wps/1.0.0" 
xmlns:xlink="http://www.w3.org/1999/xlink" 
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
xmlns:ows="http://www.opengis.net/ows/1.1" 
xmlns:mcp="http://gis.geo.tu-dresden.de/movingcode/1.1.0">

  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
  <xsl:strip-space elements="*"/>
  <xsl:include href="mcp-base-toSolr.xslt"/>
<!-- unsicher -->
  <xsl:template match="/mcp:packageDescription">
  <doc>
    <xsl:call-template name="writeBaseInfo"/>
  </doc>    
  </xsl:template>

</xsl:stylesheet>
