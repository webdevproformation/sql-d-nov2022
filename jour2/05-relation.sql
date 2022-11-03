
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

-- créer deux tables 
-- produit 
-- clé primaire
-- nom  texte max de 255
-- prix  chiffre à virgule
-- dt_creation maintenant par défaut

-- image 
-- clé primaire
-- url texte maximum de 65000
-- description  texte maximum de 65000
-- id_produit clé secondaire (clé étrangère = Foreign key )
DROP TABLE produit ;
CREATE TABLE produit(
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    nom VARCHAR(255) ,
    prix FLOAT ,
    dt_creation DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE image(
    id INTEGER PRIMARY KEY AUTOINCREMENT , 
    url TEXT ,
    description TEXT ,
    id_produit INTEGER ,
    FOREIGN KEY (id_produit) REFERENCES produit(id)
);

-- spécial SQLITE 


INSERT INTO produit 
( nom , prix )
VALUES 
( "PlayStation5" , 520.10 ),
( "Nintendo Switch" , 520.10 );

DELETE FROM produit WHERE id >= 3

PRAGMA foreign_keys = ON;

INSERT INTO image 
( url , description , id_produit )
VALUES
( "image.png" , "lorem ipsum" , 5 );


PRAGMA foreign_keys = ON;

INSERT INTO image 
( url , description , id_produit )
VALUES
( "image.png" , "lorem ipsum" , 2 );

-- pour la colonne id_produit => elle ne peut prendre QUE des valeurs existantes dans la colonne id de la table produit 

créer ces deux tables dans la base blog.db 






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
