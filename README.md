# Brief_Global-NoSQL-et-SQL-
Pour ce projet qui nous a été demandé mon choix est porté sur la base de donnée Postgres (SQL) et Cassandra (NoSQL).

Ce projet vise à renforcer le système de don de sang dans les hopitaux ainsi qu'à éviter les risque dans les travaux de laboratoire afin de permettre une bonne marche.Dans un prémier temps c'est pour permettre un don de sang à distance et dans un deuxième temps pour permettre la fluidité et l'éfficacité du travail des techniciens au labo.Notre cahier de charge décrit clairement les taches et les activités en chaines. 
Pour ce faire nous avons utilisé la méthode Merise qui est une méthode de conception des systèmes informatisés. Elle est simple et plus compréhensible avec ces trois modèles de donées qui sont le MCD, le MLD et le MPD.

Ce pendant nous avons dans un prémier temps établi le diagramme de cas d'utilisation qui nous permet de voir le fonctionnement de notre système à réalisé.Puis nous avons fait le modèle conceptuel des données, le Modèle Logique des données et par la suite le Modèle Physique des Données. C'est à partir de cette demarche que nous avons céer notre base de données et fait les implémentations avec les insertion. 
Les données insérées dans la base de données sont importé de Mockaroo (plateforme de données libre).
En ce qui concerne l'interface de visualisation, Nous avons utilisé les API pour notre CRUD. Nous avons connecté notre base de données à PgAdmin4 et notre API sur VScode.



Ce meme projet a été éxécuté sur Cassandra. On a considéré la Table principale comme étant Tests et les autres commes des types. Aprés création de la table principale et les insertions, on a créér les types puis fait les Update avec ces types sur la table principale. Les requetes et resultat sont en fichier cql. puis nous avons exporter le schema de la base de données avec la commande cqlsh -e "DESC SCHEMA" > tests.cql, ici tests est le nom de notre table principale. 

Tout notre travail se trouve sur ce ripositorie.
