from django.urls import re_path as url
from django.urls import path, include
from .views import (
    NAListApiView, EUListApiView, APListApiView, RTKListApiView, GeocodeAPIView, ControlpointsApiView, ControlpointsStatsApiView, ControlpointsMonthlyStatsApiView, ControlpointsMonthlySummaryApiView
)
from .views import find_nearest_point_of_interest
from .views import metrics, update_metrics_view

#setting up api endpoint url
urlpatterns = [
    path('na_api/', NAListApiView.as_view()),
    path('eu_api/', EUListApiView.as_view()),
    path('ap_api/', APListApiView.as_view()),
    path('rtk/', RTKListApiView.as_view()),
    path('nearest-point-of-interest/', find_nearest_point_of_interest, name='nearest_point_of_interest'),
    path('geocode/', GeocodeAPIView.as_view(), name='geocode_api'),
    path('cpanalysis/', ControlpointsApiView.as_view()),
    path('cpstats/', ControlpointsStatsApiView.as_view()),
    path('cpmonthlystats/', ControlpointsMonthlyStatsApiView.as_view()),
    path('cpmonthlysummary/', ControlpointsMonthlySummaryApiView.as_view()),
    path('metrics/', metrics, name='metrics'),
    path('update-metrics/', update_metrics_view, name='update_metrics'),
]