Donneurs (code_D, num_NNI_D, Nom_D, Prénom_D, Adresse_D, Date_D, Sexe_D, Poids_D , Groupage, Rhesus)

Patients (Code_Pt, Nom_Pt, Prénom_Pt, Adresse_Pt, Sexe_Pt,)

Techniciens (Code_Tech, Matricule_Tech, Nom_Tech, Prénom_Tech, Fonction_Tech)

Don_Sangs  (code_Don,  Qte_Don, Lieu_Don, Date_Don, #code_D)

Prélèvements (CodeP,  CodeE, LieuP, DateP, #CodeD, #code_Tech, #Code_Pt)



Tests (Code_T, Résultat_T, Date_T, #Code_Don , #Code_Em, #Code_Pt)

Resultats (Code_R,  Date_R, #Code_tech)
#####################################

	sudo -i -u postgres
	1 psql
	 2 \c blood_life;
	   3 \dt
	   4 create database blood_life;
	   5 select * from ;


##########################################################
CREATE TABLE donneurs (
	code_d SERIAL  PRIMARY KEY not null,
	num_nni VARCHAR (12) not null,
	nom_d VARCHAR (255) not null,
	prenom_d VARCHAR (255) not null,
	adresse_d VARCHAR (255) not null,
	date_d date not null,
	sexe_d VARCHAR (255) not null,
	groupe_d VARCHAR (255) not null,
	rhesus_d VARCHAR (255) not null
);


CREATE TABLE patients (
	code_pt SERIAL  PRIMARY KEY not null, 
	nom_pt VARCHAR (255) not null,
	prenom_pt VARCHAR (255) not null,  
	adresse_pt VARCHAR (255) not null,
	sexe_pt VARCHAR (255) not null
	);
	
	
CREATE TABLE techniciens (
	code_tech SERIAL  PRIMARY KEY not null, 
	matricule_tech VARCHAR (255) not null, 
	nom_tech VARCHAR (255) not null, 
	prenom_tech VARCHAR (255) not null, 
	fonction_tech VARCHAR (255) not null
	);


	 
CREATE TABLE don_sangs  (
	code_don SERIAL  PRIMARY KEY not null,  
	qte_don VARCHAR (255) not null, 
	lieu_don VARCHAR (255) not null,
 	date_don date not null,
 	code_d SERIAL  not null,
 	FOREIGN KEY (code_d) REFERENCES donneurs (code_d)
 	 );
 	 

CREATE TABLE resultats (
	code_r SERIAL  PRIMARY KEY not null,  
	date_r date not null , 
	code_tech SERIAL   not null, 
	FOREIGN KEY (code_tech) REFERENCES techniciens (code_tech)
	);
	
CREATE TABLE prelevements (
	code_p SERIAL PRIMARY KEY not null ,   
	lieu_p VARCHAR (255) not null, 
	date_p date not null, 
	code_d SERIAL not null, 
	code_tech SERIAL not null, 
	code_pt SERIAL not null, 
	FOREIGN KEY (code_d) REFERENCES donneurs (code_d),
	FOREIGN KEY (code_tech) REFERENCES techniciens (code_tech),
	FOREIGN KEY (code_pt) REFERENCES patients (code_pt)
	);



CREATE TABLE tests (
	code_t SERIAL PRIMARY KEY not null, 
	resultat_t VARCHAR (255) not null, 
	date_t date not null, 
	code_don  SERIAL not null, 
	code_tech SERIAL not null, 
	code_pt SERIAL not null, 
	FOREIGN KEY (code_don) REFERENCES don_sangs (code_don),
	FOREIGN KEY (code_tech) REFERENCES techniciens (code_tech),
	FOREIGN KEY (code_pt) REFERENCES patients (code_pt)
	);
	

	 
