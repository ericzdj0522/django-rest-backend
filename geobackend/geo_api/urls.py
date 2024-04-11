from django.urls import re_path as url
from django.urls import path, include
from .views import (
    TodoListApiView, EUListApiView, APListApiView, RTKListApiView, GeocodeAPIView
)
from .views import find_nearest_point_of_interest

#setting up api url
urlpatterns = [
    path('api/', TodoListApiView.as_view()),
    path('eu_api/', EUListApiView.as_view()),
    path('ap_api/', APListApiView.as_view()),
    path('rtk/', RTKListApiView.as_view()),
    path('nearest-point-of-interest/', find_nearest_point_of_interest, name='nearest_point_of_interest'),
    path('geocode/', GeocodeAPIView.as_view(), name='geocode_api'),
]