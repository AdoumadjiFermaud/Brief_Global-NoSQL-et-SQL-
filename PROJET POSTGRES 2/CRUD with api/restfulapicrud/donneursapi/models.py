from django.db import models

# Create your models here.

class Donneurs(models.Model):
    code = models.IntegerField ('code')
    nni = models.IntegerField ('Numero National Indentification')
    nom_du_donneur = models.CharField('NOM DU DONNEUR',max_length=100)
    prenom_d = models.CharField ('PRENOM',max_length=3)
    adresse = models.CharField ('ADRESSE', max_length=15)
    date_prelevement = models.DateField('Date de Prelevement')
    lieu_de_prelevement = models.CharField('Lieu de Prelevement', max_length= 120)
    genre_donneur = models.CharField('GENRE',max_length= 120)
    groupe_sanguin = models.CharField('GROUPE SANGUIN', max_length= 125)
    rhesus_donneur = models.CharField('RHESUS', max_length= 115)
    quantité = models.CharField('QUANTITÉ', max_length= 85)
