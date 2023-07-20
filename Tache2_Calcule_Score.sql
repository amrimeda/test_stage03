
CREATE OR REPLACE VIEW "mohamed-abdelkayoum.amri.1@ens.etsmtl.ca".score AS
SELECT *,
       ROUND(LENGTH(html_content) / (SELECT round(MAX(LENGTH(html_content)),1) FROM louis_v004.crawl), 1) AS score
FROM louis_v004.crawl;