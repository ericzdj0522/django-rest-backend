# Generated by Django 4.2.5 on 2024-07-26 22:43

import django.contrib.gis.db.models.fields
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('geo_api', '0008_cpcells_ap_cpcells_eu'),
    ]

    operations = [
        migrations.CreateModel(
            name='CN_Station',
            fields=[
                ('id', models.CharField(max_length=100, primary_key=True, serialize=False)),
                ('station', models.CharField(max_length=100, null=True)),
                ('geom', django.contrib.gis.db.models.fields.PointField(null=True, srid=4326)),
                ('longitude', models.CharField(max_length=100, null=True)),
                ('latitude', models.CharField(max_length=100, null=True)),
                ('altitude', models.CharField(max_length=100, null=True)),
                ('provider', models.CharField(max_length=100, null=True)),
                ('pilot', models.CharField(max_length=100, null=True)),
                ('commercial', models.CharField(max_length=100, null=True)),
                ('access', models.CharField(max_length=100, null=True)),
                ('sla', models.CharField(max_length=100, null=True)),
                ('base', models.CharField(max_length=100, null=True)),
                ('rover', models.CharField(max_length=100, null=True)),
                ('stationtype', models.CharField(max_length=100, null=True)),
                ('status', models.CharField(max_length=100, null=True)),
            ],
        ),
    ]
