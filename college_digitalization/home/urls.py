from django.urls import path
from . import views as v

urlpatterns = [
    path('hello/', v.hello_to_world),
]
