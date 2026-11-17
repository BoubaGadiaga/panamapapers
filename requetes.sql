SELECT i.id AS intermediary_id,
       i.name AS intermediary_name,
       count( * ) AS nb_societes,
       min(incorporation_date) AS premiere_activite
  FROM intermediary i,
       assoc_inter_entity a,
       entity e
 WHERE a.entity = e.id AND
       a.inter = i.id AND
       (i.id = 5000 OR
        i.id = 5001) 
 GROUP BY i.id,
          i.name;
