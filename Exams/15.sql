SELECT nome, anoCurricular 
    FROM
        SELECT *, MAX(numAmigos) FROM
            SELECT *, COUNT(*) as numAmigos
                FROM AmizadeEstudante 
                    GROUP BY A.ID1
