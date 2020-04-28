SELECT idCliente  FROM Cliente 
    WHERE idCliente NOt IN (
        SELECT idCliente FROM Carro)