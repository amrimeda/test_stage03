-- Dans cet exemple, j'ai utilisé l'alias s pour la vue "score", et j'ai spécifié 
-- s.html_content pour indiquer explicitement que nous faisons référence à la colonne
-- html_content de la vue "score".

CREATE OR REPLACE FUNCTION "mohamed-abdelkayoum.amri.1@ens.etsmtl.ca".recherche(keyword TEXT)
RETURNS TABLE (id UUID, html_content TEXT, score NUMERIC) AS $$
BEGIN
    RETURN QUERY
    SELECT s.id, s.html_content, s.score
    FROM "mohamed-abdelkayoum.amri.1@ens.etsmtl.ca".score s
    WHERE s.html_content LIKE '%' || keyword || '%'
    ORDER BY s.score DESC
    LIMIT 10;
END;
$$ LANGUAGE plpgsql;
