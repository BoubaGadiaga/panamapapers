SELECT
    *
FROM
    (SELECT "Adresse" AS type, address AS recherche, NULL AS url, id_address AS identifiant FROM address
UNION
SELECT "Société (entité)" AS type, name AS recherche, url AS url, id AS identifiant FROM entity
UNION
SELECT "Intermédiaire" AS type, name AS recherche, url AS url, id AS identifiant FROM intermediary
UNION
SELECT "Bénéficiaire" AS type, name AS recherche, NULL AS url, id AS identifiant FROM officer
) AS table_union
WHERE
    lower(recherche) LIKE '%ana%nia%garcia%'