
from rest_framework_gis.serializers import GeoFeatureModelSerializer
from rest_framework import serializers
from django.contrib.gis.geos import GEOSGeometry
from .models import Station, EU_Station, AP_Station

class TodoSerializer(GeoFeatureModelSerializer):


    class Meta:
        model = Station
        geo_field = 'geom'
        fields = ["id", "station", "longitude", "latitude", "altitude", "provider", "pilot", "commercial", "access", "sla", "base", "rover", "stationtype", "status"]

class EUSerializer(GeoFeatureModelSerializer):


    class Meta:
        model = EU_Station
        geo_field = 'geom'
        fields = ["id", "station", "longitude", "latitude", "altitude", "provider", "pilot", "commercial", "access", "sla", "base", "rover", "stationtype", "status"]


class APSerializer(GeoFeatureModelSerializer):


    class Meta:
        model = AP_Station
        geo_field = 'geom'
        fields = ["id", "station", "longitude", "latitude", "altitude", "provider", "pilot", "commercial", "access", "sla", "base", "rover", "stationtype", "status"]