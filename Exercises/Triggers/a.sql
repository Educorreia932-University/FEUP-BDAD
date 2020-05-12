DROP TRIGGER IF EXISTS A;
CREATE TRIGGER A
AFTER INSERT ON Reparacao
FOR EACH ROW
WHEN (New.idCliente ISNULL)
BEGIN
    UPDATE Reparacao
    SET idCliente = (SELECT idCliente FROM CARRO WHERE Carro.idCarro == New.idCarro) 
    WHERE idReparacao = New.idReparacao;
END;

-- Test

INSERT INTO Reparacao(dataInicio, dataFim, idCliente, idCarro)
	VALUES ('2010-09-17', '2010-09-20', NULL, 3);

INSERT INTO Reparacao(dataInicio, dataFim, idCliente, idCarro)
	VALUES ('2010-09-17', '2010-09-20', NULL, 1);

SELECT * FROM Reparacao
