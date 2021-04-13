.mode columns
.headers on

WITH placesCount AS
    (SELECT COUNT(idLocal) - 1 FROM Local) -- Selecionar o número de destinos possíveis para um dado local, ou seja, todos os locais distintos exceto um (o ponto de partida)
        SELECT Path.name FROM 
            Path JOIN Local 
                ON Path.idEnd = Local.idLocal
                    GROUP BY idStart
                        HAVING COUNT(idEnd) IN placesCount -- Verificar se o número de destinos deste ponto de partida é o mesmo do número total
                            ORDER BY Path.name
