-- pk => Primary Key => clé primaire 

-- lorsque l'on crée une table => 
-- en + des colonnes qui vont contenir des informations 
-- ajouter une colonne spéciale / colonne technique => clé primaire 
-- le nom de cette colonne en général est id => identifiant 

-- le rôle de cette colonne est multiple 
-- permet de pouvoir localiser facilement une ligne dans une table SANS AMBIGUITE 
-- permet de réaliser des RELATIONS entre la table et une autre table 

-- créer une nouvelle table salle
-- id qui est la clé primaire de la table 
-- nom texte maximum de 100 caractères
-- capacité chiffre entier maximum de 80 
-- localisation texte avec un maximum de 100 lettres 

CREATE TABLE salle(
    id  INTEGER PRIMARY KEY AUTOINCREMENT,
    nom          VARCHAR(100),
    capacite     TINYINT,
    localisation VARCHAR(100)/* ,
    code_a_barre  INTEGER PRIMARY KEY AUTOINCREMENT */
);

-- PRIMARY KEY => vous ne pouvez pas stocker dans cette colonne deux fois le même nombre 
-- demande au SGBD (Sqlite) de me donner le chiffre à remplir automatiquement le chiffre 
-- AUTOINCREMENT
-- AUTOINCREMENT ne s'utilise QUE sur la colonne clé primaire 
-- une table ne peut contenir 1 seule clé primaire 

-- cas pratique
-- créer une table reservations
-- clé primaire id
-- dt_debut AAAA-MM-JJ HH:MM:SS
-- dt_fin AAAA-MM-JJ HH:MM:SS
-- prix chiffre à virgule
-- nom client  texte 250 lettres maximum 

CREATE TABLE reservations (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    dt_debut DATETIME ,
    dt_fin DATETIME ,
    prix FLOAT ,
    nom VARCHAR(250)
);

-- AUTOINCREMENT => uniquement pour la colonne clé primaire de la table
-- si j'ajoute une nouvelle ligne dans la table reservations 
-- SGBD Augmente Automatiquement la valeur sotckée dans cette colonne 

-- const dtDebut 

