# GeoprocessingAppstoreFacets 

Based on ESRI Geoportal Facets (https://github.com/Esri/geoportal-server/wiki/Geoportal-Facets, Download: https://github.com/Esri/geoportal-server/wiki/Geoportal-Server-Downloads).<br/><br/>

GeoprocessingAppstoreFacets is Web site to browse and filter geospatial algorithms.                                                      <br/>
The project is linked to and used in the Geoprocessing Appstore project (https://github.com/GeoinformationSystems/GeoprocessingAppstore) <br/>
It uses Apache solr (further information @see ESRI Geoportal Facets link below).<br/>

## Structure

The application is based on Java, XML, Javascript and HTML. The modules and their functionality are briefly described here.

* /WebContent - Browser part of the application (Javscript, HTML)
  * Website to browse geospatial algorithms: g.html
* /src - Server components of the application (Java) and configuration files (XML)
* 
## Installation

Information about the installation can be found here: https://github.com/Esri/geoportal-server/wiki/Geoportal-Facets#How_to_setup_the_GFC

## Configuration

Configurations (e.g. database, scheme, appstore reference, ...) can be made in src/gc-config/gptdb2solr.xml and WebContent/config.js


## ESRI Geoportal Facets

Features, License, Support, Issues for the ESRI Geoportal Facets can be found here: https://github.com/Esri/geoportal-server/wiki/Geoportal-Facets

## License

The Geoprocessing Appstore project is licensed under The Apache Software License, Version 2.0

## Contact (for TUD modifications)
Christin Henzen (christin.henzen@tu-dresden.de)
