-- Créer la vue "score"


-- On calcule le max_length de toute la colonne une seule fois en utilisant une requête 
-- de sous-requête CTE (Common Table Expression). De cette façon, nous n'avons pas besoin 
-- de recalculer le max_length pour chaque ligne de la table lors de l'exécution de la vue.

CREATE OR REPLACE VIEW "mohamed-abdelkayoum.amri.1@ens.etsmtl.ca".score AS
WITH max_length_cte AS (
    SELECT ROUND(MAX(LENGTH(html_content)), 1) AS max_length
    FROM louis_v004.crawl
)
SELECT *,
       ROUND(LENGTH(html_content) / max_length, 1) AS score
FROM louis_v004.crawl
CROSS JOIN max_length_cte;
