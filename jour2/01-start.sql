/*
créer une table articles avec 7 colonnes 
clé primaire
titre texte avec un maximum de 250 lettres 
contenu texte qui peut contenir maximum 65 000
duree chiffre entier maximum de 200
auteur texte avec un maximum de 250 lettres par défaut "la Fontaine"
dt_creation date et heure et par défaut c'est maintenant (instant enregistrement )
publie vrai / faux 

*/
DROP TABLE articles ; 

CREATE TABLE articles (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    titre VARCHAR(250) ,
    contenu TEXT ,
    duree TINYINT ,
    auteur VARCHAR(250) DEFAULT "la Fontaine" ,
    dt_creation DATETIME DEFAULT CURRENT_TIMESTAMP ,
    publie BOOLEAN
);

-- peupler la table articles avec des valeurs suivantes : 

"article 1" "lorem ipsum" 20 "la Fontaine" maintenant true 
"article 2" "lorem ipsum sed" 15 "la Fontaine" hier à 12h00 false  
"article 3" "lorem ipsum dolor" 5 "Victor Hugo" maintenant false  
"article 4" "lorem ipsum" 30 "Victor Hugo" "1er Avril 2022 à 10h00" true  