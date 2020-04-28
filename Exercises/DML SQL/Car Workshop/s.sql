SELECT matricula FROM 
    Carro,
    (SELECT idCarro, COUNT(idReparacao) AS timesRepaired
        FROM Reparacao GROUP BY (idCarro))
            WHERE timesRepaired > 1;