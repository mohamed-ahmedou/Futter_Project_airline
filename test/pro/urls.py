from django.urls import path
from . import views
app_name='pro'
urlpatterns = [
    path('mauritanie',views.index, name='mauritanie'),
    path('activecompagnie',views.inUnitedStates, name='mauritanie'),
    path('stat',views.stat, name='stat'),

]