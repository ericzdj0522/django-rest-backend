from django.contrib import admin
from django.contrib.gis.admin import OSMGeoAdmin
from .models import Station, EU_Station, AP_Station

@admin.register(Station)
@admin.register(EU_Station)
@admin.register(AP_Station)
class ShopAdmin(OSMGeoAdmin):
    list_display = ('station', 'geom')