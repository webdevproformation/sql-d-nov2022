<style>
    table,
    td {
        border: 1px solid black;
        border-collapse: collapse;
        font-family: sans-serif;
    }

    td {
        width: 200px;
    }

    td:nth-child(3) {
        text-align: right;
        font-size: 20px;
        color: red;
    }
</style>
<?php

$connexion  = new PDO("sqlite:" . __DIR__ . "./blog.db");

$req = $connexion->prepare("SELECT 
auteur AS `nom auteur` , 
contenu AS `contenu de l'article` , 
LENGTH(contenu) AS `nb caractères article` , 
(CASE publie WHEN 1 THEN 'publié' ELSE 'non publié' END) AS `status`
FROM articles ;");

$req->execute();

$data = $req->fetchAll(PDO::FETCH_ASSOC);
echo "<table>";

foreach ($data as $d) {
    echo "<tr>";
    echo "<td>" . $d['nom auteur'] . "</td>";
    echo "<td>" . $d["contenu de l'article"] . "</td>";
    echo "<td>" . $d["nb caractères article"] . "</td>";
    echo "<td>" . $d["status"] . "</td>";
    echo "</tr>";
}

echo "</table>";
