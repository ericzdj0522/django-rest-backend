Django Rest API backend
===
# Introduction
This is a geospatial django backend built for swift stations database API query and verification. All station data are compiled from Sitetracker and Grafana production dashboards, they are converted into spatial format stored in postgis database.

# Getting Started
Set up local PostGIS database for migration

Clone repo to local environment, run the command to activate virtual environment
```
$ source env/bin/activate
```
After dependancy installed, run the command to start django server
```
python manage.py runserver
```
An application instance will be running at http://localhost:8000

# Initialize Django cronjob for API requests:
Predefined cronjob for API requests are defined in cron.py, to set up cronjob in produciton:

run the command to add cronjob:
```
python manage.py crontab add
```
To check active cronjob list, run command:
```
python manage.py crontab show
```
For more information on django cronjob, please follow:
https://pypi.org/project/django-crontab/

# PostGIS migration
Once connect to production database with correct configuration in setting.py, run command to migrate data models:
```
python manage.py makemigrations
```
Then apply migrations:
```
python manage.py migrate
```

