
from rest_framework import serializers
from pro import models
class airportSerializers(serializers.ModelSerializer):
    class Meta:
        fields = '__all__'
        model=models.airportstable


class finalSerializers(serializers.ModelSerializer):
    class Meta:
        fields = '__all__'
        model=models.finalAirlines