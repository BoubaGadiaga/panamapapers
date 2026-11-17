SELECT
    i.id as intermediary_id,
    i.name as intermediary_name,
    e.jurisdiction,
    e.jurisdiction_description,
    e.incorporation_date
FROM
    intermediary i,
    assoc_inter_entity a,
    entity e
WHERE
    a.entity = e.id
    AND a.inter = i.id
    AND (i.id = 5000 OR i.id = 5001)
ORDER BY e.incorporation_date 
;