SELECT *
  FROM (
           SELECT *
             FROM officer o
                  JOIN
                  assoc_officer_entity a ON o.id = a.officer
       ) join1
       JOIN
       entity e ON e.id = join1.entity
 WHERE e.name = "Big Data Crunchers Ltd.";