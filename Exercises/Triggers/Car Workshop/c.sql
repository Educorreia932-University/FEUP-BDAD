DROP TRIGGER IF EXISTS C;
CREATE TRIGGER C
AFTER INSERT ON ReparacaoPeca
FOR EACH ROW
BEGIN
    UPDATE Peca
    SET quantidade = quantidade - New.quantidade
    WHERE New.idPeca == Peca.idPeca;
END;

-- Test

INSERT INTO ReparacaoPeca(idPeca, quantidade) VALUES(1, 10);
INSERT INTO ReparacaoPeca(idPeca, quantidade) VALUES(2, 11);

SELECT * FROM Peca WHERE idPeca = 1 OR idPeca = 2;
