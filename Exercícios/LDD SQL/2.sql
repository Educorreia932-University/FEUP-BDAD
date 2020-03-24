PRAGMA foreign_keys = ON;

CREATE TABLE Marca (
    idMarca TEXT PRIMARY KEY,
    nome TEXT
);

CREATE TABLE Modelo (
    idModelo TEXT PRIMARY KEY,
    nome TEXT,
    idMarca TEXT,

    FOREIGN KEY (idMarca) REFERENCES Marca(idMarca)
);

CREATE TABLE CodPostal (
    codPostal1 NUMBER PRIMARY KEY,
    localidade TEXT
);

CREATE TABLE Cliente (
    idCliente TEXT PRIMARY KEY,
    nome TEXT,
    morada TEXT,
    codPostal1 NUMBER,
    codPostal2 NUMBER,
    telefone NUMBER,

    FOREIGN KEY (codPostal1) REFERENCES CodPostal(codPostal1)
);

CREATE TABLE Carro (
    idCarro TEXT PRIMARY KEY,
    matricula TEXT UNIQUE,
    idModelo TEXT,
    idCliente TEXT,

    FOREIGN KEY (idModelo) REFERENCES Modelo(idModelo),
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE Reparacao (
    idReparacao TEXT PRIMARY KEY,
    dataInicio DATE CHECK(dataInicio < dataFim),
    dataFim DATE,
    idCliente TEXT,
    idCarro TEXT,

    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
    FOREIGN KEY (idCarro) REFERENCES Carro(idCarro)
);

CREATE TABLE Peca (
    idPeca TEXT PRIMARY KEY,
    codigo NUMBER UNIQUE,
    designacao TEXT,
    custoUnitario NUMBER CHECK(custoUnitario > 0), 
    quantidade NUMBER CHECK(quantidade > 0)
);

CREATE TABLE ReparacaoPeca (
    idReparacao TEXT,
    idPeca TEXT,

    PRIMARY KEY (idReparacao, idPeca),
    FOREIGN KEY (idReparacao) REFERENCES Reparacao(idReparacao),
    FOREIGN KEY (idPeca) REFERENCES Peca(idPeca)
);

CREATE TABLE PecaModelo (
    idPeca TEXT,
    idModelo TEXT,

    PRIMARY KEY (idPeca, idModelo),
    FOREIGN KEY (idPeca) REFERENCES Peca(idPeca),
    FOREIGN KEY (idModelo) REFERENCES Modelo(idModelo)
);

CREATE TABLE Especialidade (
    idEspecialidade TEXT PRIMARY KEY,
    nome TEXT,
    custoHorario NUMBER CHECK(custoHorario > 0)
);

CREATE TABLE Funcionario (
    idFuncionario PRIMARY KEY,
    nome TEXT,
    morada TEXT,
    codPostal1 NUMBER,
    codPostal2 NUMBER,
    telefone NUMBER,
    idEspecialidade TEXT,

    FOREIGN KEY (codPostal1) REFERENCES CodPostal(codPostal1),
    FOREIGN KEY (idEspecialidade) REFERENCES Especialidade(idEspecialidade)
);

CREATE TABLE FuncionarioReparacao (
    idFuncionario TEXT,
    idReparacao TEXT,
    numHoras NUMBER CHECK(numHoras > 0),

    PRIMARY KEY (idFuncionario, idReparacao),
    FOREIGN KEY (idFuncionario) REFERENCES Funcionario(idFuncionario),
    FOREIGN KEY (idReparacao) REFERENCES Reparacao(idReparacao)
);
