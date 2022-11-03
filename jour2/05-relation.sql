
créer deux tables en même temps 

post 
clé primaire
title
dt_creation 
id_auteur  => clé secondaire 


1  "article 1" maintenant 2
2  "article 2" maintenant 2
3  "article 3" maintenant 1

author
clé primaire
nom 
role 


CREATE TABLE author(
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    nom VARCHAR(100) ,
    role VARCHAR(10)
);

CREATE TABLE post (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    titre VARCHAR(100) ,
    dt_creation  DATETIME DEFAULT CURRENT_TIMESTAMP ,
    id_auteur INTEGER ,
    FOREIGN KEY (id_auteur) REFERENCES author(id)
);



1 "Alain"  "Administrateur"
2 "Benjamin" "Rédacteur"


post_complet
clé primaire
title
dt_creation 
nom 
role 

1  "article 1" maintenant "Benjamin" "Rédacteur"
2  "article 2" maintenant "Benjamin" "Rédacteur"
3  "article 3" maintenant "Alain"  "Administrateur"


Article n° 1 a été rédigé par l'auteur numéro 2 
Article n° 2 a été rédigé par l'auteur numéro 2 
Article n° 3 a été rédigé par l'auteur numéro 1 
