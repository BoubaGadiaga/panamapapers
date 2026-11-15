SELECT *
  FROM officer o
       JOIN
       assoc_officer_entity a ON o.id = a.officer
       JOIN
       entity e ON e.id = a.entity
 WHERE e.name = "Big Data Crunchers Ltd.";
