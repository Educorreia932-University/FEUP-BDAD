SELECT localidade FROM (Cliente NATURAL JOIN CodPostal)
    UNION SELECT localidade FROM (Funcionario NATURAL JOIN CodPostal)
