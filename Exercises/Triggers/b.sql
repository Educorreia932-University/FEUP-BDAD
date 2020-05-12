DROP TRIGGER IF EXISTS B;
CREATE TRIGGER B
BEFORE INSERT ON ReparacaoPeca
FOR EACH ROW
WHEN (
    ((SELECT quantidade FROM Peca WHERE idPeca = New.idPeca) - New.quantidade < 0) OR

    New.idPeca NOT IN (
            SELECT idPeca FROM PecaModelo 
                WHERE PecaModelo.idModelo =  
                    (SELECT idModelo FROM Modelo
                        WHERE Modelo.idModelo = 
                            (SELECT idModelo FROM Carro
                                WHERE Carro.idCarro =
                                    (SELECT idCarro FROM Reparacao
                                        WHERE idReparacao =
                                            New.idReparacao)))))
BEGIN
    SELECT RAISE(IGNORE);
END;

-- Test

INSERT INTO ReparacaoPeca(idReparacao, idPeca, quantidade) VALUES(1, 1, 1); -- Doesn't Insert
INSERT INTO ReparacaoPeca(idReparacao, idPeca, quantidade) VALUES(3, 2, 50); -- Doesn't Insert
INSERT INTO ReparacaoPeca (idReparacao, idPeca, quantidade) VALUES (3, 2, 2); -- Inserts

SELECT * FROM ReparacaoPeca