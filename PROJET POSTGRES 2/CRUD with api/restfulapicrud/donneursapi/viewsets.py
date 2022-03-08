from rest_framework import viewsets
from . import models
from . import serializers


class DonneursViewset(viewsets.ModelViewSet):
    queryset = models.Donneurs.objects.all()
    serializer_class = serializers.DonneursSerializer 

