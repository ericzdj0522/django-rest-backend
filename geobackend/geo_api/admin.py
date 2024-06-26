from django.contrib.gis import admin
from .models import Station, EU_Station, AP_Station

@admin.register(Station)
@admin.register(EU_Station)
@admin.register(AP_Station)
class ShopAdmin(admin.GISModelAdmin):
    list_display = ('station', 'geom')