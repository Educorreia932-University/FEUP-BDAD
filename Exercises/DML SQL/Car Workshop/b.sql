SELECT matricula FROM Carro
    WHERE idCarro IN
        (SELECT idCarro FROM Reparacao
            WHERE dataInicio LIKE '%2010-09-%' AND dataFim LIKE '%2010-09-%');