# test_stage03
--------------
# Question 1
# Que contiennent les tables dans les schéma louis_v004? Expliquer la structure relationelle et la fonction de
chaque table.



 
-------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------
# Question 2
# Quelle distribution prennent les valeurs de longueur du contenu?
-Pour déterminer la distribution des valeurs de longueur du contenu en utilisant la vue de la tâche 2 ("score"), nous pouvons exécuter une requête SQL
pour calculer le nombre d'occurrences de chaque score.:
######
# SELECT score, COUNT(*) AS occurrences
# FROM "mohamed-abdelkayoum.amri.1@ens.etsmtl.ca".score
# GROUP BY score
# ORDER BY score;
######

On consultant le resultat de requete on voit que la distribution montre une tendance où la majorité des documents ont une longueur de contenu 
considérablement plus courte que la longueur maximale, avec un score proche de 0.0.


-------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------
# Question 3
# Expliquer le calcul en fonction de la distribution spécifique des valeurs de longueurs de html_content script

- Le calcul du score  dans la vue "score" est basé sur une évaluation relative de la longueur du contenu de chaque document par rapport à la longueur maximale dans la table "louis_v004.crawl". 
La vue "score" contient une colonne "max_length" qui représente la longueur maximale de la colonne "html_content".
Le calcul du score est effectué en utilisant la formule suivante : LENGTH(html_content) / max_length
Pour mieux compter la distribution des scores entre 0.0 et 1.0, en utilise la fonction "ROUND" pour arrondir le résultat du rapport à une décimale.


-------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------
# Question 4
# Expliquer et discuter de la performance de votre fonction recherche
-
