SELECT c1.nome, c2.nome FROM 
    (cliente NATURAL JOIN carro) AS c1,
    (cliente NATURAL JOIN reparacao) AS c2 
        WHERE c1.idCarro = c2.idCarro AND c1.idCliente <> c2.idCliente;