-- Créer la vue "score"

CREATE OR REPLACE VIEW "mohamed-abdelkayoum.amri.1@ens.etsmtl.ca".score AS
WITH max_length_cte AS (
    SELECT ROUND(MAX(LENGTH(html_content)), 1) AS max_length
    FROM louis_v004.crawl
)
SELECT *,
       ROUND(LENGTH(html_content) / max_length, 1) AS score
FROM louis_v004.crawl
CROSS JOIN max_length_cte;