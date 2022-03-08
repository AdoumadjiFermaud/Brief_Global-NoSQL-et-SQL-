from rest_framework import serializers
from.models import Donneurs

class DonneursSerializer(serializers.ModelSerializer):
    class Meta:
        model = Donneurs
        fields = '__all__'