# Generated by Django 4.2.5 on 2024-04-30 01:44

import django.contrib.gis.db.models.fields
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('geo_api', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Controlpoints_NA',
            fields=[
                ('id', models.CharField(max_length=100, primary_key=True, serialize=False)),
                ('geom', django.contrib.gis.db.models.fields.PointField(null=True, srid=4326)),
                ('longitude', models.CharField(max_length=100, null=True)),
                ('latitude', models.CharField(max_length=100, null=True)),
                ('count', models.CharField(max_length=100, null=True)),
            ],
        ),
    ]
