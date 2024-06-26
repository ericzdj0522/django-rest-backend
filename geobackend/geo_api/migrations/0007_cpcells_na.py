# Generated by Django 4.2.5 on 2024-06-24 17:33

import django.contrib.gis.db.models.fields
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('geo_api', '0006_controlpoints_ap_controlpoints_eu'),
    ]

    operations = [
        migrations.CreateModel(
            name='CPcells_NA',
            fields=[
                ('id', models.CharField(max_length=100, primary_key=True, serialize=False)),
                ('geom', django.contrib.gis.db.models.fields.PolygonField(null=True, srid=4326)),
                ('longitude', models.CharField(max_length=100, null=True)),
                ('latitude', models.CharField(max_length=100, null=True)),
                ('count', models.CharField(max_length=100, null=True)),
            ],
        ),
    ]
