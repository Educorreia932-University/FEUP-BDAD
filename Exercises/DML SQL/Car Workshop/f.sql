SELECT idCarro, sum(julianday(dataFim) - julianday(dataInicio)) FROM Reparacao
    GROUP BY idCarro;