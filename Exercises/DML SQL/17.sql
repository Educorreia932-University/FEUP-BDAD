SELECT nome FROM 
(SELECT DISTINCT nr, nome FROM 
(prova NATURAL JOIN aluno NATURAL JOIN cadeira)
WHERE nr NOT IN 
(SELECT nr FROM prova WHERE nota < 10) ORDER BY curso);