from django.urls import re_path as url
from django.urls import path, include
from .views import (
    TodoListApiView, EUListApiView, APListApiView
)

#setting up api url
urlpatterns = [
    path('api/', TodoListApiView.as_view()),
    path('eu_api/', EUListApiView.as_view()),
    path('ap_api/', APListApiView.as_view()),
]