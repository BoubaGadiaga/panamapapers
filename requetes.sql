SELECT *
  FROM officer o,
       assoc_officer_entity a,
       entity e
 WHERE ( (o.id == a.officer) AND
         (a.entity == e.id) ) AND
       e.name = "Big Data Crunchers Ltd.";
