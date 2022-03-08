

Resultat des requetes

cqlsh:sante_db> select * from tests;

 id | code | date_test | nom | resultat | type
----+------+-----------+-----+----------+------

(0 rows)
cqlsh:sante_db> INSERT INTO tests (id, code, nom, type, date_test,resultat) VALUES (now(), '2BC', 'glycemie', 'Biochimique', '2019-02-09','positif');
cqlsh:sante_db> INSERT INTO tests (id, code, nom, type, date_test,resultat) VALUES (now(), '4Hema', 'goute épaisse',  'Hematologie', '2019-02-09','positif');
cqlsh:sante_db> INSERT INTO tests (id, code, nom, type, date_test,resultat) VALUES (now(), '2Bacter', 'coprologie', 'Bactériologie', '2019-02-09','negatif');
cqlsh:sante_db> INSERT INTO tests (id, code, nom, type, date_test,resultat) VALUES (now(), '8Sero', 'examen cytobactériologique des urines',  'bactério', '2019-02-09','négatif');
cqlsh:sante_db> select * from tests;

 id                                   | code    | date_test                       | nom                                   | resultat | type
--------------------------------------+---------+---------------------------------+---------------------------------------+----------+---------------
 3606e890-9dfa-11ec-8b90-2ff2f0da8707 |   4Hema | 2019-02-08 23:00:00.000000+0000 |                         goute épaisse |  positif |   Hematologie
 37f57220-9dfa-11ec-8b90-2ff2f0da8707 |   8Sero | 2019-02-08 23:00:00.000000+0000 | examen cytobactériologique des urines |  négatif |      bactério
 36082110-9dfa-11ec-8b90-2ff2f0da8707 | 2Bacter | 2019-02-08 23:00:00.000000+0000 |                            coprologie |  negatif | Bactériologie
 3603b440-9dfa-11ec-8b90-2ff2f0da8707 |     2BC | 2019-02-08 23:00:00.000000+0000 |                              glycemie |  positif |   Biochimique

(4 rows)
###############################################################
cqlsh:sante_db> DESC TYPES;

don_sangs  donneurs  patients  techniciens

cqlsh:sante_db> 

##############################
cqlsh:sante_db> select * from tests;

 id                                   | code    | date_test                       | don_sangs                                                                                                                                                                                                                                                                                                                                | nom                                   | resultat | type
--------------------------------------+---------+---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------+----------+---------------
 3606e890-9dfa-11ec-8b90-2ff2f0da8707 |   4Hema | 2019-02-08 23:00:00.000000+0000 |                                                                                                                                                                                                                                                                                                                                     null |                         goute épaisse |  positif |   Hematologie
 1e359430-9dfc-11ec-8b90-2ff2f0da8707 |     2BC | 2019-02-08 23:00:00.000000+0000 | {'don_sang 2': {quantite_don: '2 poches', lieu_don: 'salle 18', date_don: '2019-01-01 23:00:00.000000+0000'}, 'don_sangs 1': {quantite_don: '1e poche', lieu_don: 'salle 2', date_don: '2019-01-01 23:00:00.000000+0000'}, 'don_sangs 3': {quantite_don: '3 poches', lieu_don: 'salle 12', date_don: '2019-02-01 23:00:00.000000+0000'}} |                              glycemie |  positif |     Biochimie
 37f57220-9dfa-11ec-8b90-2ff2f0da8707 |   8Sero | 2019-02-08 23:00:00.000000+0000 |                                                                                                                                                                                                                                                                                                                                     null | examen cytobactériologique des urines |  négatif |      bactério
 36082110-9dfa-11ec-8b90-2ff2f0da8707 | 2Bacter | 2019-02-08 23:00:00.000000+0000 |                                                                                                                                                                                                                                                                                                                                     null |                            coprologie |  negatif | Bactériologie
 3603b440-9dfa-11ec-8b90-2ff2f0da8707 |     2BC | 2019-02-08 23:00:00.000000+0000 |                                                                                                                                                                                                                                                                                                                                     null |                              glycemie |  positif |   Biochimique

(5 rows)
cqlsh:sante_db> 

#####################################################################################################"

 1e359430-9dfc-11ec-8b90-2ff2f0da8707 |     2BC | 2019-02-08 23:00:00.000000+0000 | {'don_sang 2': {quantite_don: '2 poches', lieu_don: 'salle 18', date_don: '2019-01-01 23:00:00.000000+0000'}, 'don_sangs 1': {quantite_don: '1e poche', lieu_don: 'salle 2', date_don: '2019-01-01 23:00:00.000000+0000'}, 'don_sangs 3': {quantite_don: '3 poches', lieu_don: 'salle 12', date_don: '2019-02-01 23:00:00.000000+0000'}} |                              glycemie |  positif |                                                                                                                                                                                                                                                                                                                                           null |     Biochimie
 37f57220-9dfa-11ec-8b90-2ff2f0da8707 |   8Sero | 2019-02-08 23:00:00.000000+0000 |                                                                                                                                                                                                                                                                                                                                     null | examen cytobactériologique des urines |  négatif |                                                                                                                                                                                                                                                                                                                                           null |      bactério
 36082110-9dfa-11ec-8b90-2ff2f0da8707 | 2Bacter | 2019-02-08 23:00:00.000000+0000 |                                                                                                                                                                                                                                                                                                                                     null |                            coprologie |  negatif |                                                                                                                                                                                                                                                                                                                                           null | Bactériologie
 71f01950-9dfd-11ec-8b90-2ff2f0da8707 |     2BC | 2021-12-31 23:00:00.000000+0000 | {'don_sang 2': {quantite_don: '2 poches', lieu_don: 'salle 18', date_don: '2022-01-01 23:00:00.000000+0000'}, 'don_sangs 1': {quantite_don: '1e poche', lieu_don: 'salle 2', date_don: '2022-01-01 23:00:00.000000+0000'}, 'don_sangs 3': {quantite_don: '3 poches', lieu_don: 'salle 12', date_don: '2022-02-01 23:00:00.000000+0000'}} |                              glycemie |  positif | {'techniciens bactério': {matricule: '09AE', nom: 'Baradine', prenom: 'Mahamat', fonction: 'faire les exam bactério'}, 'techniciens biochimie': {matricule: '025HB', nom: '97HTR', prenom: 'Adoumadji', fonction: 'chef_unité_biochique'}, 'techniciens hémato': {matricule: 'OI0027', nom: 'zahaea', prenom: 'kalah', fonction: 'fonction '}} |     Biochimie
 3603b440-9dfa-11ec-8b90-2ff2f0da8707 |     2BC | 2019-02-08 23:00:00.000000+0000 |                                                                                                                                                                                                                                                                                                                                     null |                              glycemie |  positif |                                                                                                                                                                                                                                                                                                                                           null |   Biochimique
######################################################################
###############
                                                                                                                                                                                                               null | Bactériologie
 71f01950-9dfd-11ec-8b90-2ff2f0da8707 |     2BC | 2021-12-31 23:00:00.000000+0000 | {'don_sang 2': {quantite_don: '2 poches', lieu_don: 'salle 18', date_don: '2022-01-01 23:00:00.000000+0000'}, 'don_sangs 1': {quantite_don: '1e poche', lieu_don: 'salle 2', date_don: '2022-01-01 23:00:00.000000+0000'}, 'don_sangs 3': {quantite_don: '3 poches', lieu_don: 'salle 12', date_don: '2022-02-01 23:00:00.000000+0000'}} |                                                                                                                                                                                                                                                                                                                                             null |                              glycemie |                                                                                                                                                                                                                                                    null |  positif |                        {'techniciens bactério': {matricule: '09AE', nom: 'Baradine', prenom: 'Mahamat', fonction: 'faire les exam bactério'}, 'techniciens biochimie': {matricule: '025HB', nom: '97HTR', prenom: 'Adoumadji', fonction: 'chef_unité_biochique'}, 'techniciens hémato': {matricule: 'OI0027', nom: 'zahaea', prenom: 'kalah', fonction: 'fonction '}} |     Biochimie
 3603b440-9dfa-11ec-8b90-2ff2f0da8707 |     2BC | 2019-02-08 23:00:00.000000+0000 |                                                                                                                                                                                                                                                                                                                                     null |                                                                                                                                                                                                                                                                                                                                             null |                              glycemie |                                                                                                                                                                                                                                                    null |  positif |                                                                                                                                                                                                                                                                                                                                                                  null |   Biochimique
 9a3fda60-9dff-11ec-8b90-2ff2f0da8707 |     2BC | 2019-02-08 23:00:00.000000+0000 | {'don_sang 2': {quantite_don: '2 poches', lieu_don: 'salle 18', date_don: '2022-01-01 23:00:00.000000+0000'}, 'don_sangs 1': {quantite_don: '1e poche', lieu_don: 'salle 2', date_don: '2022-01-01 23:00:00.000000+0000'}, 'don_sangs 3': {quantite_don: '3 poches', lieu_don: 'salle 12', date_don: '2022-02-01 23:00:00.000000+0000'}} | {'donneurs': {nom: 'Haroun', prenom: 'Issa', adresse: 'Klemat', sexe: 'M', groupe_sanguin: '0', rhesus: '-'}, 'donneurs 1': {nom: 'Halimé', prenom: 'Youssef', adresse: 'Diguel', sexe: 'F', groupe_sanguin: '0', rhesus: '+'}, 'donneurs 2': {nom: 'Nelem', prenom: 'Germaine', adresse: 'Abena', sexe: 'F', groupe_sanguin: 'B', rhesus: '+'}} |                              glycemie | {'patients 1': {nom: 'kadidja ', prenom: 'Ramadan', adresse: 'walia', sexe: 'F'}, 'patients 2': {nom: 'Djikoloum', prenom: 'Armand', adresse: 'Chagoua', sexe: 'M'}, 'patients 3': {nom: 'Jackeline', prenom: 'Modeina', adresse: 'Farcha', sexe: 'F'}} |  positif |                  {'techniciens bactério': {matricule: '09AE', nom: 'Baradine Ahmat', prenom: 'Mahamat', fonction: 'faire les exam bactério'}, 'techniciens biochimie': {matricule: '025HB', nom: '97HTR', prenom: 'Adoumadji', fonction: 'chef unité biochique'}, 'techniciens hémato': {matricule: 'OI0027', nom: 'zahaea', prenom: 'kalah', fonction: 'fonction '}} |     Biochimie

(8 rows)
cqlsh:sante_db> 


