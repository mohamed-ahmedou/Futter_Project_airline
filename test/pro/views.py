from django.shortcuts import render
from .models import airportstable,finalAirlines
from rest_framework.response import Response
from .serializers import airportSerializers, finalSerializers
from rest_framework.decorators import api_view

# Create your views here.

from django.http import JsonResponse


@api_view(['GET'])
def index(request):
    mauri=airportstable.objects.filter(Country="Mauritania")
    print(mauri)
    serializer=airportSerializers(mauri,many=True)
    return Response(serializer.data)

@api_view(['GET'])
def inUnitedStates(request):
    mauri=finalAirlines.objects.filter(Country="United States" , Active="Y")
    print(mauri)
    serializer=finalSerializers(mauri,many=True)
    return Response(serializer.data)

@api_view(['GET'])
def CountryTeritoire(request):
    mauri=finalAirlines.objects.filter(Country="United States" , Active="Y")
    print(mauri)
    serializer=finalSerializers(mauri,many=True)
    return Response(serializer.data)

@api_view(['GET'])
def stat(request):
    retared = 300
    non_retart = 400
    total = retared + non_retart
    return Response({"retard":retared,"non_retard":non_retart, 'total':total})