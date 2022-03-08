=> CREATE KEYSPACE sante_db WITH replication = {'class': 'SimpleStrategy', 'replication_factor': '1'} AND durable_writes = 'true';

===> DESC KEYSPACES

====> USE sante_db ;

CREATE TYPE don_sangs (
			quantite_don varchar,
			lieu_don varchar,
			date_don timestamp
			);

CREATE TYPE techniciens (
			matricule varchar,
			nom varchar,
			prenom varchar,
			fonction varchar
			);
			
CREATE TYPE patients (
			nom varchar,
			prenom varchar,
			adresse varchar,
			sexe varchar
			);
CREATE TYPE donneurs (
			nom varchar,
			prenom varchar,
			adresse varchar,
			sexe varchar,
			groupe_sanguin varchar,
			rhesus varchar
			);
			
CREATE TABLE  tests (
			id timeuuid PRIMARY KEY,
			code varchar,
			nom varchar,
			type  text,
			date_test timestamp,
			resultat varchar
			);
INSERT INTO tests (id, code, nom, type, date_test,resultat) VALUES (now(), '2BC', 'glycemie', 'Biochimique', '2019-02-09','positif');
INSERT INTO tests (id, code, nom, type, date_test,resultat) VALUES (now(), '4Hema', 'goute épaisse',  'Hematologie', '2019-02-09','positif');
INSERT INTO tests (id, code, nom, type, date_test,resultat) VALUES (now(), '2Bacter', 'coprologie', 'Bactériologie', '2019-02-09','negatif');
INSERT INTO tests (id, code, nom, type, date_test,resultat) VALUES (now(), '8Sero', 'examen cytobactériologique des urines',  'bactério', '2019-02-09','négatif');

ALTER TABLE tests ADD  don_sangs map<text, frozen<don_sangs>>;

INSERT INTO tests (id, code, nom, type, date_test,resultat, don_sangs)
 VALUES ( now(), '2BC', 'glycemie',  'Biochimie', '2019-02-09','positif'
 		{ 'don_sangs 1'  : {
 			quantite_don : '1e poche',
			lieu_don : 'salle 2',
			date_don :'2019-01-02'
 			
 		},
 		 'don_sang 2' :{
 		 	quantite_don : '2 poches',
			lieu_don : 'salle 18',
			date_don :'2019-01-02'
		},
		
		'don_sangs 3' : {
			quantite_don : '3 poches',
			lieu_don : 'salle 12',
			date_don :'2019-02-02'
		}
 	}
);
###############################################
ALTER TABLE tests ADD  techniciens map<text, frozen<techniciens>>;

INSERT INTO tests (id, code, nom, type, date_test,resultat, don_sangs, techniciens)
 VALUES ( now(), '2BC', 'glycemie',  'Biochimie', '2022-01-01','positif'
 		{ 'don_sangs 1'  : {
 			quantite_don : '1e poche',
			lieu_don : 'salle 2',
			date_don :'2022-01-02'
 			
 		},
 		 'don_sang 2' :{
 		 	quantite_don : '2 poches',
			lieu_don : 'salle 18',
			date_don :'2022-01-02'
		},
		
		'don_sangs 3' : {
			quantite_don : '3 poches',
			lieu_don : 'salle 12',
			date_don :'2022-02-02'
		}
 	},
 	{  'techniciens bactério' : {
			matricule : '09AE',
			nom : 'Baradine',
			prenom: 'Mahamat',
			fonction : 'faire les exam bactério'
			},
	 'techniciens hémato' : {
			matricule : 'OI0027',
			nom : 'zahaea',
			prenom : 'kalah',
			fonction:  'fonction '
			},
			
	 'techniciens biochimie' : {
			matricule: '025HB',
			nom: '97HTR',
			prenom : 'Adoumadji',
			fonction : 'chef_unité_biochique'
			}
 	
 	
 	
 	}
);

################################################################
ALTER TABLE tests ADD  patients map<text, frozen<patients>>;

INSERT INTO tests (id, code, nom, type, date_test,resultat, don_sangs, techniciens, patients)
 VALUES ( now(), '2BC', 'glycemie',  'Biochimie', '2019-02-09','positif'
 		{ 'don_sangs 1'  : {
 			quantite_don : '1e poche',
			lieu_don : 'salle 2',
			date_don :'2022-01-02'
 			
 		},
 		 'don_sang 2' :{
 		 	quantite_don : '2 poches',
			lieu_don : 'salle 18',
			date_don :'2022-01-02'
		},
		
		'don_sangs 3' : {
			quantite_don : '3 poches',
			lieu_don : 'salle 12',
			date_don :'2022-02-02'
		}
 	},
 	{  'techniciens bactério' : {
			matricule : '09AE',
			nom : 'Baradine Ahmat',
			prenom: 'Mahamat',
			fonction : 'faire les exam bactério'
			},
	 'techniciens hémato' : {
			matricule : 'OI0027',
			nom : 'zahaea',
			prenom: 'kalah',
			fonction: ' confirmation des examens '
			},
			
	 'techniciens biochimie' : {
			matricule: '025HB',
			nom: '97HTR',
			prenom : 'Adoumadji',
			fonction : 'chef_unité_biochique'
			}
 	
 	
 	
 	},
 	
 	{ 'patients 1' : {
			nom : 'kadidja ',
			prenom :'Ramadan',
			adresse : 'walia',
			sexe : 'F'
			},
	'patients 2' : {
			nom : 'Djikoloum',
			prenom :'Armand',
			adresse : 'Chagoua',
			sexe : 'M'
			},
	'patients 3' : {
			nom : 'Jackeline',
			prenom :'Modeina',
			adresse : 'Farcha',
			sexe : 'F'
			}
 	
 	
 	
 	
 	}
);

############################################################

ALTER TABLE tests ADD  donneurs map<text, frozen<donneurs>>;

INSERT INTO tests (id, code, nom, type, date_test,resultat, don_sangs, techniciens, patients, donneurs)
 VALUES ( now(), '2BC', 'glycemie',  'Biochimie', '2019-02-09','positif'
 		{ 'don_sangs 1'  : {
 			quantite_don : '1e poche',
			lieu_don : 'salle 2',
			date_don :'2022-01-02'
 			
 		},
 		 'don_sang 2' :{
 		 	quantite_don : '2 poches',
			lieu_don : 'salle 18',
			date_don :'2022-01-02'
		},
		
		'don_sangs 3' : {
			quantite_don : '3 poches',
			lieu_don : 'salle 12',
			date_don :'2022-02-02'
		}
 	},
 	{  'techniciens bactério' : {
			matricule : '09AE',
			nom : 'Baradine Ahmat',
			prenom: 'Mahamat',
			fonction : 'faire les exam bactério'
			},
	 'techniciens hémato' : {
			matricule : 'OI0027',
			nom : 'zahaea',
			prenom: 'kalah',
			fonction: 'fonction '
			},
			
	 'techniciens biochimie' : {
			matricule: '025HB',
			nom: '97HTR',
			prenom : 'Adoumadji',
			fonction : 'chef unité biochique'
			}
 	
 	
 	
 	},
 	
 	{ 'patients 1' : {
			nom : 'kadidja ',
			prenom :'Ramadan',
			adresse : 'walia',
			sexe : 'F'
			},
	'patients 2' : {
			nom : 'Djikoloum',
			prenom :'Armand',
			adresse : 'Chagoua',
			sexe : 'M'
			},
	'patients 3' : {
			nom : 'Jackeline',
			prenom :'Modeina',
			adresse : 'Farcha',
			sexe : 'F'
			}
 	
 	
 	
 	
 	},
 	
 	{ 'donneurs 1' : {
			nom : 'Halimé',
			prenom : 'Youssef',
			adresse : 'Diguel',
			sexe :'F',
			groupe_sanguin : '0',
			rhesus : '+'
			},
	'donneurs 2' : {
			nom : 'Nelem',
			prenom : 'Germaine',
			adresse : 'Abena',
			sexe :'F',
			groupe_sanguin : 'B',
			rhesus : '+'
			},
	'donneurs' : {
			nom : 'Haroun',
			prenom : 'Issa',
			adresse : 'Klemat',
			sexe :'M',
			groupe_sanguin : '0',
			rhesus : '-'
			}
 	
 	
 	}
);

###############################################################

