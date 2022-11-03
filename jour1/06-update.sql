-- créer des bases 
-- créer des tables
-- Create ajouter des lignes dans la table INSERT INTO 
-- Read ....
-- Update 

SELECT * FROM exo4 ; 

-- 4000 MAIS 60000 like !!! 
-- modifier la valeur 4000 
-- qui a été insérée précédemment par le chiffre 60000 

UPDATE exo4 
SET nb_like = 60000
WHERE id = 3 ; 

nom
-- modifier la valeur stocker dans la colonne nb_like
-- dont la ligne est id = 3

UPDATE exo4 
SET nb_like = 20
WHERE nom = "Les Misérables" ; 

SELECT * FROM exo4 ; 


UPDATE exo4 
SET nb_like = 40
WHERE auteur LIKE "victor hugo" ; 

SELECT * FROM exo4 ; 