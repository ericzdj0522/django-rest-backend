from django.contrib.gis.db import models

# Create your models here.

class Station(models.Model):
    id = models.CharField(max_length=100, primary_key=True)
    station = models.CharField(max_length=100, null=True)
    geom = models.PointField(srid=4326, null=True)
    longitude = models.CharField(max_length=100, null=True)
    latitude = models.CharField(max_length=100, null=True)
    altitude = models.CharField(max_length=100, null=True)
    provider = models.CharField(max_length=100, null=True)
    pilot = models.CharField(max_length=100, null=True)
    commercial = models.CharField(max_length=100, null=True)
    access = models.CharField(max_length=100, null=True)
    sla = models.CharField(max_length=100, null=True)
    base = models.CharField(max_length=100, null=True)
    rover = models.CharField(max_length=100, null=True)
    stationtype = models.CharField(max_length=100, null=True)
    status = models.CharField(max_length=100, null=True)

class EU_Station(models.Model):
    id = models.CharField(max_length=100, primary_key=True)
    station = models.CharField(max_length=100, null=True)
    geom = models.PointField(srid=4326, null=True)
    longitude = models.CharField(max_length=100, null=True)
    latitude = models.CharField(max_length=100, null=True)
    altitude = models.CharField(max_length=100, null=True)
    provider = models.CharField(max_length=100, null=True)
    pilot = models.CharField(max_length=100, null=True)
    commercial = models.CharField(max_length=100, null=True)
    access = models.CharField(max_length=100, null=True)
    sla = models.CharField(max_length=100, null=True)
    base = models.CharField(max_length=100, null=True)
    rover = models.CharField(max_length=100, null=True)
    stationtype = models.CharField(max_length=100, null=True)
    status = models.CharField(max_length=100, null=True)

class AP_Station(models.Model):
    id = models.CharField(max_length=100, primary_key=True)
    station = models.CharField(max_length=100, null=True)
    geom = models.PointField(srid=4326, null=True)
    longitude = models.CharField(max_length=100, null=True)
    latitude = models.CharField(max_length=100, null=True)
    altitude = models.CharField(max_length=100, null=True)
    provider = models.CharField(max_length=100, null=True)
    pilot = models.CharField(max_length=100, null=True)
    commercial = models.CharField(max_length=100, null=True)
    access = models.CharField(max_length=100, null=True)
    sla = models.CharField(max_length=100, null=True)
    base = models.CharField(max_length=100, null=True)
    rover = models.CharField(max_length=100, null=True)
    stationtype = models.CharField(max_length=100, null=True)
    status = models.CharField(max_length=100, null=True)

class Controlpoints_NA(models.Model):
    id = models.CharField(max_length=100, primary_key=True)
    geom = models.PointField(srid=4326, null=True)
    longitude = models.CharField(max_length=100, null=True)
    latitude = models.CharField(max_length=100, null=True)
    count = models.CharField(max_length=100, null=True)
    sl1_time = models.IntegerField(default=0)
    sl2_time= models.IntegerField(default=0)
    sl3_time = models.IntegerField(default=0)

class Controlpoints_EU(models.Model):
    id = models.CharField(max_length=100, primary_key=True)
    geom = models.PointField(srid=4326, null=True)
    longitude = models.CharField(max_length=100, null=True)
    latitude = models.CharField(max_length=100, null=True)
    count = models.CharField(max_length=100, null=True)
    sl1_time = models.IntegerField(default=0)
    sl2_time= models.IntegerField(default=0)
    sl3_time = models.IntegerField(default=0)

class Controlpoints_AP(models.Model):
    id = models.CharField(max_length=100, primary_key=True)
    geom = models.PointField(srid=4326, null=True)
    longitude = models.CharField(max_length=100, null=True)
    latitude = models.CharField(max_length=100, null=True)
    count = models.CharField(max_length=100, null=True)
    sl1_time = models.IntegerField(default=0)
    sl2_time= models.IntegerField(default=0)
    sl3_time = models.IntegerField(default=0)

class CPcells_NA(models.Model):
    id = models.CharField(max_length=100, primary_key=True)
    geom = models.PolygonField(srid=4326, null=True)
    longitude = models.CharField(max_length=100, null=True)
    latitude = models.CharField(max_length=100, null=True)
    count = models.CharField(max_length=100, null=True)

class CPcells_EU(models.Model):
    id = models.CharField(max_length=100, primary_key=True)
    geom = models.PolygonField(srid=4326, null=True)
    longitude = models.CharField(max_length=100, null=True)
    latitude = models.CharField(max_length=100, null=True)
    count = models.CharField(max_length=100, null=True)

class CPcells_AP(models.Model):
    id = models.CharField(max_length=100, primary_key=True)
    geom = models.PolygonField(srid=4326, null=True)
    longitude = models.CharField(max_length=100, null=True)
    latitude = models.CharField(max_length=100, null=True)
    count = models.CharField(max_length=100, null=True)

