from django.urls import path
from navigation import views
app_name="navigation"

urlpatterns =[
    path("",views.map,name="map"),
]