from django.db import models

# Create your models here.

class airportstable(models.Model):
    Country = models.CharField(max_length=200,blank=True, null=True)
    City = models.CharField(max_length=200,blank=True, null=True)
    IATA = models.CharField(max_length=200,blank=True, null=True)
    ICAO = models.CharField(max_length=200,blank=True, null=True)
    Latitude = models.CharField(max_length=200,blank=True, null=True)
    Longitude = models.CharField(max_length=200,blank=True, null=True)
    Altitude = models.CharField(max_length=200,blank=True, null=True)
    Timezone = models.CharField(max_length=200,blank=True, null=True)
    DST = models.CharField(max_length=200,blank=True, null=True)
    Tz = models.CharField(max_length=200,blank=True, null=True)

class routes(models.Model):
    airline  = models.CharField(max_length=200,blank=True, null=True)
    airlineID = models.CharField(max_length=200,blank=True, null=True)
    source  = models.CharField(max_length=200,blank=True, null=True) 
    sourceID  = models.CharField(max_length=200,blank=True, null=True)
    destination  = models.CharField(max_length=200,blank=True, null=True)
    destinationID  = models.CharField(max_length=200,blank=True, null=True)
    codeshare = models.CharField(max_length=200,blank=True, null=True)
    stops  = models.CharField(max_length=200,blank=True, null=True)
    equipment= models.CharField(max_length=200,blank=True, null=True)

class finalAirlines(models.Model):
    Name = models.CharField(max_length=200,blank=True, null=True)
    Alias = models.CharField(max_length=200,blank=True, null=True)
    IATA = models.CharField(max_length=200,blank=True, null=True)
    ICAO =models.CharField(max_length=200,blank=True, null=True)
    CallSign = models.CharField(max_length=200,blank=True, null=True)
    Country=models.CharField(max_length=200,blank=True, null=True)
    Active = models.CharField(max_length=200,blank=True, null=True)


class retards(models.Model):
    Airline = models.CharField(max_length=200,blank=True, null=True)
    Flight = models.CharField(max_length=200,blank=True, null=True)
    AirportFrom = models.CharField(max_length=200,blank=True, null=True)
    AirportTo =models.CharField(max_length=200,blank=True, null=True)
    DayOfWeek = models.CharField(max_length=200,blank=True, null=True)
    Time=models.CharField(max_length=200,blank=True, null=True)
    Length = models.CharField(max_length=200,blank=True, null=True)
    Delay = models.CharField(max_length=200,blank=True, null=True)