########### JOINTURES#######################
Requete:
select *
from don_sangs inner join donneurs
on don_sangs .code_d = donneurs .code_d;

Resultat:
 code_don | qte_don |       lieu_don       |  date_don  | code_d | code_d |  num_nni   |   nom_d    |   prenom_d   |        adresse_d         |   date
_d   |   sexe_d    | groupe_d | rhesus_d 
----------+---------+----------------------+------------+--------+--------+------------+------------+--------------+--------------------------+-------
-----+-------------+----------+----------
        2 | 2 poche | salle de prélèvement | 2022-01-02 |      2 |      2 | 36987-1215 | Mayor A    | Chantler     | 79 Carey Drive           | 2021-1
0-03 | Agender     | B        |  positif
        3 | 3 poche | salle de prélèvement | 2022-01-03 |      3 |      3 | 36987-2971 | Matti      | Veneur       | 0 Fair Oaks Court        | 2021-1
0-04 | Male        | A        |  positif
        4 | 4 poche | salle de prélèvement | 2022-01-04 |      4 |      4 | 0904-5880  | Garth      | Henden       | 8 Rutledge Crossing      | 2021-1
0-05 | Male        | A        |  positif
        5 | 5 poche | salle de prélèvement | 2022-01-05 |      5 |      5 | 64117-963  | Katrinka   | Whittlesey   | 3747 Lerdahl Place       | 2021-1
0-06 | Female      | A        |  positif
        6 | 6 poche | salle de prélèvement | 2022-01-06 |      6 |      6 | 10096-0268 | Vanessa    | Mathonnet    | 4 Ruskin Alley           | 2021-1
0-07 | Female      | B        |  positif
        7 | 7 poche | salle de prélèvement | 2022-01-07 |      7 |      7 | 55154-8250 | Ashlen     | Cartmer      | 63807 Roth Place         | 2021-1
0-08 | Male        | A        |  positif
        8 | 8 poche | salle de prélèvement | 2022-01-08 |      8 |      8 | 0069-0136  | Laural     | Bingall      | 913 Karstens Alley       | 2021-1
0-09 | Female      | A        |  positif
        9 | 1 poche | salle de prélèvement | 2022-01-09 |      9 |      9 | 53808-0230 | Duane      | Heinonen     | 40 Service Junction      | 2021-1
0-10 | Female      | A        |  positif
       10 | 2 poche | salle de prélèvement | 2022-01-10 |     10 |     10 | 55111-695  | Pattin     | Weekley      | 9226 Glendale Road       | 2021-1
0-11 | Male        | A        |  positif
       11 | 3 poche | salle de prélèvement | 2022-01-11 |     11 |     11 | 55316-243  | Gayleen    | Reddel       | 0 Johnson Place          | 2021-1
0-12 | Female      | B        |  positif
       12 | 4 poche | salle de prélèvement | 2022-01-12 |     12 |     12 | 0032-1206  | Onida      | Station      | 22150 Lukken Place       | 2021-1
0-13 | Female      | B        |  positif
       13 | 1 poche | salle de prélèvement | 2022-01-13 |     13 |     13 | 17089-378  | Nixie      | Menco        | 79 Troy Center           | 2021-1
0-14 | Female      | B        |  positif
       14 | 1 poche | salle de prélèvement | 2022-01-14 |     14 |     14 | 59351-0319 | Jenica     | Troughton    | 330 Muir Drive           | 2021-1
0-15 | Male        | B        |  positif
       15 | 1 poche | salle de prélèvement | 2022-01-15 |     15 |     15 | 46122-142  | Olly       | Solleme      | 8238 Petterle Road       | 2021-1
0-16 | Female      | A        |  positif
       16 | 1 poche | salle de prélèvement | 2022-01-16 |     16 |     16 | 58142-7115 | Ariel      | Ivanishin    | 5221 Schurz Parkway      | 2021-1
0-17 | Female      | B        |  positif
:

Requete: 
SELECT *
FROM prelevements inner join techniciens
on prelevements .code_tech = techniciens .code_tech;
 Resultat:
  code_p | lieu_p |   date_p   | code_d | code_tech | code_pt | code_tech | matricule_tech |   nom_tech    |  prenom_tech  |      fonction_tech      
--------+--------+------------+--------+-----------+---------+-----------+----------------+---------------+---------------+-------------------------
      2 | labo   | 2022-01-01 |      2 |         2 |       2 |         2 | 59614-221      | Andrée        | Tibbotts      | techniciens
      3 | labo   | 2022-01-02 |      3 |         3 |       3 |         3 | 59667-0060     | Kallisté      | Wooldridge    | techniciens
      4 | labo   | 2022-01-03 |      4 |         4 |       4 |         4 | 53208-502      | Torbjörn      | Snoxall       | techniciens
      5 | labo   | 2022-01-04 |      5 |         5 |       5 |         5 | 43269-773      | Amélie        | Etienne       | techniciens
      6 | labo   | 2022-01-05 |      6 |         6 |       6 |         6 | 55154-4377     | Félicie       | Le Lievre     | techniciens
      7 | labo   | 2022-01-06 |      7 |         7 |       7 |         7 | 49288-0814     | Régine        | Tainton       | techniciens
      8 | labo   | 2022-01-07 |      8 |         8 |       8 |         8 | 59779-380      | Magdalène     | Montague      | techniciens
      9 | labo   | 2022-01-08 |      9 |         9 |       9 |         9 | 0781-5345      | Hélène        | Cacacie       | techniciens
     10 | labo   | 2022-01-09 |     10 |        10 |      10 |        10 | 52533-001      | Anaé          | Hounihan      | techniciens
     11 | labo   | 2022-01-10 |     11 |        11 |      11 |        11 | 49349-826      | Réservés      | Burghill      | techniciens supérieur
     12 | labo   | 2022-01-11 |     12 |        12 |      12 |        12 | 62175-381      | Gérald        | Woodworth     | techniciens supérieur
     13 | labo   | 2022-01-12 |     13 |        13 |      13 |        13 | 53808-0215     | Mélanie       | Fardy         | techniciens supérieur
     14 | labo   | 2022-01-13 |     14 |        14 |      14 |        14 | 55154-8385     | Maëly         | Edmons        | techniciens supérieur
     15 | labo   | 2022-01-14 |     15 |        15 |      15 |        15 | 0703-4182      | Cinéma        | Monelle       | techniciens supérieur
     16 | labo   | 2022-01-15 |     16 |        16 |      16 |        16 | 43419-749      | Géraldine     | Sharpless     | techniciens supérieur
     17 | labo   | 2022-01-16 |     17 |        17 |      17 |        17 | 0264-7605      | Geneviève     | Barling       | techniciens supérieur
     18 | labo   | 2022-01-17 |     18 |        18 |      18 |        18 | 0185-0065      | Réjane        | Teodori       | techniciens supérieur
     19 | labo   | 2022-01-18 |     19 |        19 |      19 |        19 | 37000-140      | Réservés      | Bech          | techniciens supérieur
     20 | labo   | 2022-01-19 |     20 |        20 |      20 |        20 | 57894-350      | Bérénice      | Pinel         | techniciens supérieur
     21 | labo   | 2022-01-20 |     21 |        21 |      21 |        21 | 60429-034      | Laurélie      | Swindles      | techniciens supérieur
     22 | labo   | 2022-01-21 |     22 |        22 |      22 |        22 | 61442-103      | Maïté         | Truett        | techniciens supérieur
     23 | labo   | 2022-01-22 |     23 |        23 |      23 |        23 | 68382-248      | Anaël         | Towndrow      | techniciens supérieur

Requete: 
SELECT *
FROM tests inner join prelevements
on tests .code_pt = prelevements .code_pt;

 code_t |  resultat_t   |   date_t   | code_don | code_tech | code_pt | code_p | lieu_p |   date_p   | code_d | code_tech | code_pt 
--------+---------------+------------+----------+-----------+---------+--------+--------+------------+--------+-----------+---------
      2 | HBS négatif   | 2012-05-21 |        2 |         2 |       2 |      2 | labo   | 2022-01-01 |      2 |         2 |       2
      3 | HBS négatif   | 2013-05-21 |        3 |         3 |       3 |      3 | labo   | 2022-01-02 |      3 |         3 |       3
      4 | HBS négatif   | 2014-05-21 |        4 |         4 |       4 |      4 | labo   | 2022-01-03 |      4 |         4 |       4
      5 | HBS négatif   | 2015-05-21 |        5 |         5 |       5 |      5 | labo   | 2022-01-04 |      5 |         5 |       5
      6 | HBS négatif   | 2016-05-21 |        6 |         6 |       6 |      6 | labo   | 2022-01-05 |      6 |         6 |       6
      7 | HBS négatif   | 2017-05-21 |        7 |         7 |       7 |      7 | labo   | 2022-01-06 |      7 |         7 |       7
      8 | HBS négatif   | 2018-05-21 |        8 |         8 |       8 |      8 | labo   | 2022-01-07 |      8 |         8 |       8
      9 | HBS négatif   | 2019-05-21 |        9 |         9 |       9 |      9 | labo   | 2022-01-08 |      9 |         9 |       9
     10 | HBS négatif   | 2020-05-21 |       10 |        10 |      10 |     10 | labo   | 2022-01-09 |     10 |        10 |      10
     11 | HBS négatif   | 2021-05-21 |       11 |        11 |      11 |     11 | labo   | 2022-01-10 |     11 |        11 |      11
     12 | HBS négatif   | 2022-05-21 |       12 |        12 |      12 |     12 | labo   | 2022-01-11 |     12 |        12 |      12
     13 | HIV négatif   | 2023-05-21 |       13 |        13 |      13 |     13 | labo   | 2022-01-12 |     13 |        13 |      13




SELECT  don_sangs.*, tests.code_don as patients FROM don_sangs RIGHT JOIN tests ON code_tech = code_tech;
 code_don | qte_don |       lieu_don       |  date_don  | code_d | patients 
----------+---------+----------------------+------------+--------+----------
        2 | 2 poche | salle de prélèvement | 2022-01-02 |      2 |        2
        3 | 3 poche | salle de prélèvement | 2022-01-03 |      3 |        2
        4 | 4 poche | salle de prélèvement | 2022-01-04 |      4 |        2
        5 | 5 poche | salle de prélèvement | 2022-01-05 |      5 |        2
        6 | 6 poche | salle de prélèvement | 2022-01-06 |      6 |        2
        7 | 7 poche | salle de prélèvement | 2022-01-07 |      7 |        2
        8 | 8 poche | salle de prélèvement | 2022-01-08 |      8 |        2
        9 | 1 poche | salle de prélèvement | 2022-01-09 |      9 |        2
       10 | 2 poche | salle de prélèvement | 2022-01-10 |     10 |        2
       11 | 3 poche | salle de prélèvement | 2022-01-11 |     11 |        2
       12 | 4 poche | salle de prélèvement | 2022-01-12 |     12 |        2
       13 | 1 poche | salle de prélèvement | 2022-01-13 |     13 |        2
       14 | 1 poche | salle de prélèvement | 2022-01-14 |     14 |        2
       15 | 1 poche | salle de prélèvement | 2022-01-15 |     15 |        2
       16 | 1 poche | salle de prélèvement | 2022-01-16 |     16 |        2
       17 | 1 poche | salle de prélèvement | 2022-01-17 |     17 |        2
       18 | 2 poche | salle de prélèvement | 2022-01-18 |     18 |        2
       19 | 1 poche | salle de prélèvement | 2022-01-19 |     19 |        2
       20 | 2 poche | salle de prélèvement | 2022-01-20 |     20 |        2
       21 | 3 poche | salle de prélèvement | 2022-01-21 |     21 |        2
       22 | 4 poche | salle de prélèvement | 2022-01-22 |     22 |        2
       23 | 1 poche | salle de prélèvement | 2022-01-23 |     23 |        2
       24 | 1 poche | salle de prélèvement | 2022-01-24 |     24 |        2
       25 | 1 poche | salle de prélèvement | 2022-01-25 |     25 |        2
       26 | 1 poche | salle de prélèvement | 2022-01-26 |     26 |        2
       27 | 1 poche | salle de prélèvement | 2022-01-27 |     27 |        2
       28 | 1 poche | salle de prélèvement | 2022-01-28 |     28 |        2
       29 | 1 poche | salle de prélèvement | 2022-01-29 |     29 |        2
       30 | 2 poche | salle de prélèvement | 2022-01-30 |     30 |        2
       31 | 2 poche | salle de prélèvement | 2022-01-31 |     31 |        2
       32 | 2 poche | salle de prélèvement | 2022-02-01 |     32 |        2
       33 | 2 poche | salle de prélèvement | 2022-02-02 |     33 |        2
:


SELECT  tests.*, patients.nom_pt as prelevements FROM tests RIGHT JOIN patients ON code_don = code_don;

-------+---------------+------------+----------+-----------+---------+--------------
      2 | HBS négatif   | 2012-05-21 |        2 |         2 |       2 | Solène
      3 | HBS négatif   | 2013-05-21 |        3 |         3 |       3 | Solène
      4 | HBS négatif   | 2014-05-21 |        4 |         4 |       4 | Solène
      5 | HBS négatif   | 2015-05-21 |        5 |         5 |       5 | Solène
      6 | HBS négatif   | 2016-05-21 |        6 |         6 |       6 | Solène
      7 | HBS négatif   | 2017-05-21 |        7 |         7 |       7 | Solène
      8 | HBS négatif   | 2018-05-21 |        8 |         8 |       8 | Solène
      9 | HBS négatif   | 2019-05-21 |        9 |         9 |       9 | Solène
     10 | HBS négatif   | 2020-05-21 |       10 |        10 |      10 | Solène
     11 | HBS négatif   | 2021-05-21 |       11 |        11 |      11 | Solène
     12 | HBS négatif   | 2022-05-21 |       12 |        12 |      12 | Solène
     13 | HIV négatif   | 2023-05-21 |       13 |        13 |      13 | Solène
     14 | HIV négatif   | 2024-05-21 |       14 |        14 |      14 | Solène
     15 | HIV négatif   | 2025-05-21 |       15 |        15 |      15 | Solène
     16 | HIV négatif   | 2026-05-21 |       16 |        16 |      16 | Solène
     17 | HIV négatif   | 2027-05-21 |       17 |        17 |      17 | Solène
     18 | HIV négatif   | 2028-05-21 |       18 |        18 |      18 | Solène
     19 | HIV négatif   | 2029-05-21 |       19 |        19 |      19 | Solène
     20 | HIV négatif   | 2030-05-21 |       20 |        20 |      20 | Solène
     21 | HIV négatif   | 2031-05-21 |       21 |        21 |      21 | Solène
     22 | HIV négatif   | 2001-06-21 |       22 |        22 |      22 | Solène
     23 | HIV positif   | 2002-06-21 |       23 |        23 |      23 | Solène
     24 | HIV positif   | 2003-06-21 |       24 |        24 |      24 | Solène
     25 | HIV positif   | 2004-06-21 |       25 |        25 |      25 | Solène
     26 | HIV positif   | 2005-06-21 |       26 |        26 |      26 | Solène
     27 | HIV positif   | 2006-06-21 |       27 |        27 |      27 | Solène
     28 | HIV positif   | 2007-06-21 |       28 |        28 |      28 | Solène
     29 | HIV positif   | 2008-06-21 |       29 |        29 |      29 | Solène
     30 | HIV positif   | 2009-06-21 |       30 |        30 |      30 | Solène
     31 | HIV positif   | 2010-06-21 |       31 |        31 |      31 | Solène
     32 | HIV positif   | 2011-06-21 |       32 |        32 |      32 | Solène
     33 | HIV positif   | 2012-06-21 |       33 |        33 |      33 | Solène
:


SELECT * FROM don_sangs;

 code_don | qte_don |       lieu_don       |  date_don  | code_d 
----------+---------+----------------------+------------+--------
        2 | 2 poche | salle de prélèvement | 2022-01-02 |      2
        3 | 3 poche | salle de prélèvement | 2022-01-03 |      3
        4 | 4 poche | salle de prélèvement | 2022-01-04 |      4
        5 | 5 poche | salle de prélèvement | 2022-01-05 |      5
        6 | 6 poche | salle de prélèvement | 2022-01-06 |      6
        7 | 7 poche | salle de prélèvement | 2022-01-07 |      7
        8 | 8 poche | salle de prélèvement | 2022-01-08 |      8
        9 | 1 poche | salle de prélèvement | 2022-01-09 |      9
       10 | 2 poche | salle de prélèvement | 2022-01-10 |     10
       11 | 3 poche | salle de prélèvement | 2022-01-11 |     11
       12 | 4 poche | salle de prélèvement | 2022-01-12 |     12
       13 | 1 poche | salle de prélèvement | 2022-01-13 |     13
       14 | 1 poche | salle de prélèvement | 2022-01-14 |     14
       15 | 1 poche | salle de prélèvement | 2022-01-15 |     15
       16 | 1 poche | salle de prélèvement | 2022-01-16 |     16
       17 | 1 poche | salle de prélèvement | 2022-01-17 |     17
       18 | 2 poche | salle de prélèvement | 2022-01-18 |     18
       19 | 1 poche | salle de prélèvement | 2022-01-19 |     19
       20 | 2 poche | salle de prélèvement | 2022-01-20 |     20
       21 | 3 poche | salle de prélèvement | 2022-01-21 |     21
       22 | 4 poche | salle de prélèvement | 2022-01-22 |     22
       23 | 1 poche | salle de prélèvement | 2022-01-23 |     23
       24 | 1 poche | salle de prélèvement | 2022-01-24 |     24
       25 | 1 poche | salle de prélèvement | 2022-01-25 |     25
       26 | 1 poche | salle de prélèvement | 2022-01-26 |     26
       27 | 1 poche | salle de prélèvement | 2022-01-27 |     27
       28 | 1 poche | salle de prélèvement | 2022-01-28 |     28
       29 | 1 poche | salle de prélèvement | 2022-01-29 |     29
       30 | 2 poche | salle de prélèvement | 2022-01-30 |     30
       31 | 2 poche | salle de prélèvement | 2022-01-31 |     31
       32 | 2 poche | salle de prélèvement | 2022-02-01 |     32
       33 | 2 poche | salle de prélèvement | 2022-02-02 |     33
:
SELECT * FROM patients;
 code_pt |   nom_pt   |  prenom_pt   |         adresse_pt         |   sexe_pt   
---------+------------+--------------+----------------------------+-------------
       1 | Solène     | Patman       | 5 Ronald Regan Center      | Female
       2 | Maëlys     | Hane         | 0544 West Street           | Female
       3 | Geneviève  | Mundy        | 10 International Lane      | Male
       4 | Ophélie    | Wickenden    | 5 Corben Center            | Female
       5 | Michèle    | Prangnell    | 37883 Garrison Plaza       | Male
       6 | Marlène    | Gurr         | 4138 Hagan Lane            | Female
       7 | Vérane     | Tilberry     | 86 Bunting Junction        | Genderqueer
       8 | Thérèse    | Simes        | 63 Springview Park         | Male
       9 | Judicaël   | Osgar        | 6 Golf Course Road         | Male
      10 | Nadège     | Guidotti     | 57 Schiller Crossing       | Male
      11 | Maïté      | Davitt       | 8070 Erie Alley            | Male
      12 | Nadège     | Arnet        | 553 Havey Lane             | Female
      13 | Noëlla     | Hedges       | 05978 Lerdahl Street       | Male
      14 | Måns       | Tenman       | 15148 Acker Road           | Male
      15 | Maëlann    | Barlas       | 407 Milwaukee Point        | Female
      16 | Aí         | Sugar        | 100 Jackson Place          | Male
      17 | Frédérique | Ezzle        | 12694 Fieldstone Crossing  | Female
      18 | Maïté      | Dyshart      | 7 Bartillon Drive          | Male
      19 | Pénélope   | Blackster    | 00732 Bluestem Alley       | Female
      20 | Méline     | Luno         | 3266 Judy Way              | Male
      21 | Lèi        | Dunston      | 513 Onsgard Hill           | Female
      22 | Maéna      | Burnside     | 0 Derek Parkway            | Male
      23 | Léane      | De Bellis    | 8 Dahle Parkway            | Male
      24 | Loïca      | Cossum       | 312 Bowman Court           | Bigender
      25 | Nadège     | Raddon       | 65 Hazelcrest Street       | Male
      26 | Loïc       | Bowart       | 689 Ridgeway Trail         | Female
      27 | Lèi        | Beddo        | 942 Barby Court            | Female
      28 | Mélinda    | Windybank    | 1 Dexter Drive             | Female
      29 | Noémie     | Canavan      | 43 Schlimgen Plaza         | Female
      30 | Estève     | Bazylets     | 1 Hovde Pass               | Female
      31 | Mélinda    | Ryal         | 6162 Westend Circle        | Male
      32 | Styrbjörn  | Hainge       | 270 Ruskin Avenue          | Female
:

SELECT * FROM donneurs;
 code_d |  num_nni   |   nom_d    |   prenom_d   |        adresse_d         |   date_d   |   sexe_d    | groupe_d | rhesus_d 
--------+------------+------------+--------------+--------------------------+------------+-------------+----------+----------
      2 | 36987-1215 | Mayor A    | Chantler     | 79 Carey Drive           | 2021-10-03 | Agender     | B        |  positif
      3 | 36987-2971 | Matti      | Veneur       | 0 Fair Oaks Court        | 2021-10-04 | Male        | A        |  positif
      4 | 0904-5880  | Garth      | Henden       | 8 Rutledge Crossing      | 2021-10-05 | Male        | A        |  positif
      5 | 64117-963  | Katrinka   | Whittlesey   | 3747 Lerdahl Place       | 2021-10-06 | Female      | A        |  positif
      6 | 10096-0268 | Vanessa    | Mathonnet    | 4 Ruskin Alley           | 2021-10-07 | Female      | B        |  positif
      7 | 55154-8250 | Ashlen     | Cartmer      | 63807 Roth Place         | 2021-10-08 | Male        | A        |  positif
      8 | 0069-0136  | Laural     | Bingall      | 913 Karstens Alley       | 2021-10-09 | Female      | A        |  positif
      9 | 53808-0230 | Duane      | Heinonen     | 40 Service Junction      | 2021-10-10 | Female      | A        |  positif
     10 | 55111-695  | Pattin     | Weekley      | 9226 Glendale Road       | 2021-10-11 | Male        | A        |  positif
     11 | 55316-243  | Gayleen    | Reddel       | 0 Johnson Place          | 2021-10-12 | Female      | B        |  positif
     12 | 0032-1206  | Onida      | Station      | 22150 Lukken Place       | 2021-10-13 | Female      | B        |  positif
     13 | 17089-378  | Nixie      | Menco        | 79 Troy Center           | 2021-10-14 | Female      | B        |  positif
     14 | 59351-0319 | Jenica     | Troughton    | 330 Muir Drive           | 2021-10-15 | Male        | B        |  positif
     15 | 46122-142  | Olly       | Solleme      | 8238 Petterle Road       | 2021-10-16 | Female      | A        |  positif
     16 | 58142-7115 | Ariel      | Ivanishin    | 5221 Schurz Parkway      | 2021-10-17 | Female      | B        |  positif
     17 | 49781-048  | Valle      | Pennino      | 07900 Laurel Plaza       | 2021-10-18 | Male        | B        |  positif
     18 | 68001-214  | Minda      | Brannigan    | 3837 Carioca Plaza       | 2021-10-19 | Female      | B        |  positif
     19 | 49947-001  | Kirbee     | Cavie        | 9 Ryan Trail             | 2021-10-20 | Female      | B        |  positif
     20 | 25021-301  | Rivy       | Woodard      | 88 Hollow Ridge Place    | 2021-10-21 | Male        | O        |  positif
     21 | 0641-6070  | Ainslee    | Wanjek       | 93 Loftsgordon Street    | 2021-10-22 | Male        | B        |  positif
     22 | 57287-100  | Zabrina    | Rohloff      | 7829 Milwaukee Place     | 2021-10-23 | Male        | B        |  positif
     23 | 41167-0243 | Frans      | Senior       | 23844 Fuller Place       | 2021-10-24 | Male        | B        |  positif
     24 | 54868-5456 | Reese      | Mechic       | 1 Sage Pass              | 2021-10-25 | Female      | O        |  positif
     25 | 49348-890  | Abbe       | Sherebrook   | 9247 Pleasure Crossing   | 2021-10-26 | Male        | B        |  positif
     26 | 60881-555  | Fin        | Tomasicchio  | 457 Delaware Hill        | 2021-10-27 | Agender     | O        |  positif
     27 | 65517-2021 | Salomone   | Hedgeman     | 8519 Steensland Lane     | 2021-10-28 | Male        | O        |  positif
     28 | 64725-0319 | Sholom     | Khilkov      | 16052 Tony Court         | 2021-10-29 | Male        | O        |  positif
     29 | 76335-006  | Crawford   | Huge         | 9 Fair Oaks Parkway      | 2021-10-30 | Female      | O        |  positif
     30 | 63739-553  | Caro       | Legendre     | 63 Bunting Road          | 2021-10-31 | Female      | O        |  positif
     31 | 11410-309  | Gualterio  | Oluwatoyin   | 2299 Browning Hill       | 2021-11-01 | Male        | O        |  positif
     32 | 58118-0020 | Ed         | FitzAlan     | 24 Barnett Center        | 2021-11-02 | Female      | O        |  positif
     33 | 68084-458  | Chelsae    | Lowrey       | 9 Roth Parkway           | 2021-11-03 | Female      | O        |  positif
:

SELECT * FROM prelevements;
 code_p | lieu_p |   date_p   | code_d | code_tech | code_pt 
--------+--------+------------+--------+-----------+---------
      2 | labo   | 2022-01-01 |      2 |         2 |       2
      3 | labo   | 2022-01-02 |      3 |         3 |       3
      4 | labo   | 2022-01-03 |      4 |         4 |       4
      5 | labo   | 2022-01-04 |      5 |         5 |       5
      6 | labo   | 2022-01-05 |      6 |         6 |       6
      7 | labo   | 2022-01-06 |      7 |         7 |       7
      8 | labo   | 2022-01-07 |      8 |         8 |       8
      9 | labo   | 2022-01-08 |      9 |         9 |       9
     10 | labo   | 2022-01-09 |     10 |        10 |      10
     11 | labo   | 2022-01-10 |     11 |        11 |      11
     12 | labo   | 2022-01-11 |     12 |        12 |      12
     13 | labo   | 2022-01-12 |     13 |        13 |      13
     14 | labo   | 2022-01-13 |     14 |        14 |      14
     15 | labo   | 2022-01-14 |     15 |        15 |      15
     16 | labo   | 2022-01-15 |     16 |        16 |      16
     17 | labo   | 2022-01-16 |     17 |        17 |      17
     18 | labo   | 2022-01-17 |     18 |        18 |      18
     19 | labo   | 2022-01-18 |     19 |        19 |      19
     20 | labo   | 2022-01-19 |     20 |        20 |      20
     21 | labo   | 2022-01-20 |     21 |        21 |      21
     22 | labo   | 2022-01-21 |     22 |        22 |      22
     23 | labo   | 2022-01-22 |     23 |        23 |      23
     24 | labo   | 2022-01-23 |     24 |        24 |      24
     25 | labo   | 2022-01-24 |     25 |        25 |      25
     26 | labo   | 2022-01-25 |     26 |        26 |      26
     27 | labo   | 2022-01-26 |     27 |        27 |      27
     28 | labo   | 2022-01-27 |     28 |        28 |      28
     29 | labo   | 2022-01-28 |     29 |        29 |      29
     30 | labo   | 2022-01-29 |     30 |        30 |      30
     31 | labo   | 2022-01-30 |     31 |        31 |      31
     32 | labo   | 2022-01-31 |     32 |        32 |      32
     33 | labo   | 2022-02-01 |     33 |        33 |      33
:

SELECT * FROM test ;
 code_t |  resultat_t   |   date_t   | code_don | code_tech | code_pt 
--------+---------------+------------+----------+-----------+---------
      2 | HBS négatif   | 2012-05-21 |        2 |         2 |       2
      3 | HBS négatif   | 2013-05-21 |        3 |         3 |       3
      4 | HBS négatif   | 2014-05-21 |        4 |         4 |       4
      5 | HBS négatif   | 2015-05-21 |        5 |         5 |       5
      6 | HBS négatif   | 2016-05-21 |        6 |         6 |       6
      7 | HBS négatif   | 2017-05-21 |        7 |         7 |       7
      8 | HBS négatif   | 2018-05-21 |        8 |         8 |       8
      9 | HBS négatif   | 2019-05-21 |        9 |         9 |       9
     10 | HBS négatif   | 2020-05-21 |       10 |        10 |      10
     11 | HBS négatif   | 2021-05-21 |       11 |        11 |      11
     12 | HBS négatif   | 2022-05-21 |       12 |        12 |      12
     13 | HIV négatif   | 2023-05-21 |       13 |        13 |      13
     14 | HIV négatif   | 2024-05-21 |       14 |        14 |      14
     15 | HIV négatif   | 2025-05-21 |       15 |        15 |      15
     16 | HIV négatif   | 2026-05-21 |       16 |        16 |      16
     17 | HIV négatif   | 2027-05-21 |       17 |        17 |      17
     18 | HIV négatif   | 2028-05-21 |       18 |        18 |      18
     19 | HIV négatif   | 2029-05-21 |       19 |        19 |      19
     20 | HIV négatif   | 2030-05-21 |       20 |        20 |      20
     21 | HIV négatif   | 2031-05-21 |       21 |        21 |      21
     22 | HIV négatif   | 2001-06-21 |       22 |        22 |      22
     23 | HIV positif   | 2002-06-21 |       23 |        23 |      23
     24 | HIV positif   | 2003-06-21 |       24 |        24 |      24
     25 | HIV positif   | 2004-06-21 |       25 |        25 |      25
     26 | HIV positif   | 2005-06-21 |       26 |        26 |      26
     27 | HIV positif   | 2006-06-21 |       27 |        27 |      27
     28 | HIV positif   | 2007-06-21 |       28 |        28 |      28
     29 | HIV positif   | 2008-06-21 |       29 |        29 |      29
     30 | HIV positif   | 2009-06-21 |       30 |        30 |      30
     31 | HIV positif   | 2010-06-21 |       31 |        31 |      31
     32 | HIV positif   | 2011-06-21 |       32 |        32 |      32
     33 | HIV positif   | 2012-06-21 |       33 |        33 |      33
:

SELECT * FROM resultats;
 code_r |   date_r   | code_tech 
--------+------------+-----------
      2 | 2021-11-09 |         2
      3 | 2021-11-10 |         3
      4 | 2021-11-11 |         4
      5 | 2021-11-12 |         5
      6 | 2021-11-13 |         6
      7 | 2021-11-14 |         7
      8 | 2021-11-15 |         8
      9 | 2021-11-16 |         9
     10 | 2021-11-17 |        10
     11 | 2021-11-18 |        11
     12 | 2021-11-19 |        12
     13 | 2021-11-20 |        13
     14 | 2021-11-21 |        14
     15 | 2021-11-22 |        15
     16 | 2021-11-23 |        16
     17 | 2021-11-24 |        17
     18 | 2021-11-25 |        18
     19 | 2021-11-26 |        19
     20 | 2021-11-27 |        20
     21 | 2021-11-28 |        21
     22 | 2021-11-29 |        22
     23 | 2021-11-30 |        23
     24 | 2021-12-01 |        24
     25 | 2021-12-02 |        25
     26 | 2021-12-03 |        26
     27 | 2021-12-04 |        27
     28 | 2021-12-05 |        28
     29 | 2021-12-06 |        29
     30 | 2021-12-07 |        30
     31 | 2021-12-08 |        31
     32 | 2021-12-09 |        32
     33 | 2021-12-10 |        33
:




