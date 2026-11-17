SELECT
    i.id AS intermediary_id,
    i.name AS intermediary_name,
    e.jurisdiction,
    e.jurisdiction_description,
    count(*) as nb_societes,
    max(incorporation_date)
FROM
    intermediary i,
    assoc_inter_entity a,
    entity e
WHERE
    a.entity = e.id AND
    a.inter = i.id AND
    (i.id = 5000 OR i.id = 5001)
GROUP BY
    i.id, i.name, e.jurisdiction, e.jurisdiction_description
HAVING
    nb_societes > 10 AND max(incorporation_date) >= '2010-01-01';