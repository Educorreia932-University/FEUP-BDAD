SELECT localidade FROM (Cliente NATURAL JOIN CodPostal)
    INTERSECT SELECT localidade FROM (Funcionario NATURAL JOIN CodPostal)
