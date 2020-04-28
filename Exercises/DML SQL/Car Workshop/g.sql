SELECT 
    avg(custoUnitario) AS custoMedio,
    sum(custoUnitario) AS total,
    sum(quantidade) AS numPecas, 
    min(custoUnitario) AS minimo, 
    max(custoUnitario) AS maximo 
        FROM Peca;