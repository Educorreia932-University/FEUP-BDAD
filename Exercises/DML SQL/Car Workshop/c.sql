SELECT nome, custounitario 
    FROM (cliente NATURAL JOIN carro) NATURAL JOIN (pecamodelo NATURAL JOIN peca)                   
        WHERE peca.custounitario > 10    
            ORDER BY peca.custounitario DESC;  