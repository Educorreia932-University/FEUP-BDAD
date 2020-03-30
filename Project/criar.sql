DROP TABLE IF EXISTS Publicador;
CREATE TABLE Publicador (
    idPublicador INTEGER,
    nome TEXT,
    PRIMARY KEY (idPublicador)
);

DROP TABLE IF EXISTS Utilizador;
CREATE TABLE Utilizador (
    idUtilizador INTEGER REFERENCES Publicador(idPublicador),
    numeroTelemovel INTEGER,
    genero TEXT, --??????
    dataNascimento DATE,
    idade INTEGER,
    morada TEXT,
    PRIMARY KEY (idUtilizador)
);

DROP TABLE IF EXISTS Pagina;
CREATE TABLE Pagina (
    idPagina INTEGER REFERENCES Publicador(idPublicador),
    website TEXT,
    idAdministrador INTEGER REFERENCES Utilizador(idUtilizador),
    PRIMARY KEY (idPagina)
);

DROP TABLE IF EXISTS Conversa;
CREATE TABLE Conversa (
    idConversa INTEGER,
    nome TEXT,
    PRIMARY KEY (idConversa)
);

DROP TABLE IF EXISTS ParticipanteConversa;
CREATE TABLE ParticipanteConversa (
    idParticipante INTEGER REFERENCES Utilizador(idUtilizador),
    idConversa INTEGER REFERENCES Conversa(idConversa),
    alcunha TEXT,
    PRIMARY KEY (idParticipante)
);

DROP TABLE IF EXISTS Amizade;
--VERIFICAR FOREIGN KEYS
CREATE TABLE Amizade (
    idRemetente INTEGER REFERENCES Utilizador(idUtilizador),
    idRecetor INTEGER REFERENCES Utilizador(idUtilizador),
    estado INTEGER, --??????
    data DATE,
    PRIMARY KEY (idRemetente,idRecetor)
);

DROP TABLE IF EXISTS ParticipanteEvento;
CREATE TABLE ParticipanteEvento (
    idParticipante INTEGER REFERENCES Utilizador(idUtilizador),
    idEvento INTEGER REFERENCES Evento(idEvento),
    PRIMARY KEY (idParticipante,idEvento)
);

DROP TABLE IF EXISTS SeguidorPagina;
CREATE TABLE SeguidorPagina (
    idSeguidor INTEGER REFERENCES Utilizador(idUtilizador),
    idPagina INTEGER REFERENCES Pagina(idPagina),
    PRIMARY KEY (idSeguidor,idPagina)
);

DROP TABLE IF EXISTS Grupo;
CREATE TABLE Grupo (
    idGrupo INTEGER,
    nome TEXT,
    idAdministrador INTEGER REFERENCES Utilizador(idUtilizador),
    PRIMARY KEY (idGrupo)
);

DROP TABLE IF EXISTS MembroGrupo;
CREATE TABLE MembroGrupo (
    idMembro INTEGER REFERENCES Utilizador(idUtilizador),
    idGrupo INTEGER REFERENCES Grupo(idGrupo),
    PRIMARY KEY (idMembro,idGrupo)
);

DROP TABLE IF EXISTS Atividade;
CREATE TABLE Atividade (
    idAtividade INTEGER,
    texto TEXT,
    data DATE,
    PRIMARY KEY (idAtividade)
);

DROP TABLE IF EXISTS Evento;
CREATE TABLE Evento (
    idEvento INTEGER,
    descricao TEXT,
    dataRealizacao DATE,
    idCriador INTEGER REFERENCES Utilizador(idUtilizador),
    PRIMARY KEY (idEvento)
);

DROP TABLE IF EXISTS Mensagem;
CREATE TABLE Mensagem (
    idMensagem INTEGER REFERENCES Atividade(idAtividade),
    dataEnvio DATE,
    idMultimedia INTEGER REFERENCES Multimedia(idMensagem),
    idAutor INTEGER REFERENCES Utilizador(idUtilizador),
    idConversa INTEGER REFERENCES Conversa(idConversa),
    PRIMARY KEY (idMensagem)
);

DROP TABLE IF EXISTS Multimedia;
CREATE TABLE Multimedia (
    idMensagem INTEGER,
    titulo TEXT,
    url TEXT,
    tamanho REAL,
    formato TEXT,
    PRIMARY KEY (idMensagem)
);

DROP TABLE IF EXISTS Audio;
CREATE TABLE Audio (
    idAudio INTEGER REFERENCES Multimedia(idMensagem),
    duracao REAL,
    PRIMARY KEY (idAudio)
);

DROP TABLE IF EXISTS Video;
CREATE TABLE Video (
    idVideo INTEGER REFERENCES Multimedia(idMensagem),
    duracao REAL,
    PRIMARY KEY (idVideo)
);

DROP TABLE IF EXISTS Imagem;
CREATE TABLE Imagem (
    idImagem INTEGER REFERENCES Multimedia(idMensagem),
    PRIMARY KEY (idImagem)
);

DROP TABLE IF EXISTS Reacao;
CREATE TABLE Reacao (
    idAtividade INTEGER REFERENCES Atividade(idAtividade),
    idUtilizador INTEGER REFERENCES Utilizador(idUtilizador),
    tipo TEXT, --?
    PRIMARY KEY (idAtividade,idUtilizador)
);

DROP TABLE IF EXISTS Publicacao;
CREATE TABLE Publicacao (
    idPublicacao INTEGER REFERENCES Atividade(idAtividade),
    idPublicador INTEGER REFERENCES Publicador(idPublicador),
    idMultimedia INTEGER REFERENCES Multimedia(idMensagem),
    idPagina INTEGER REFERENCES Pagina(idPagina),
    idGrupo INTEGER REFERENCES Grupo(idGrupo),
    PRIMARY KEY (idPublicacao)
);


DROP TABLE IF EXISTS Comentario;
CREATE TABLE Comentario (
    idComentario INTEGER REFERENCES Atividade(idAtividade),
    idAutor INTEGER REFERENCES Utilizador(idUtilizador),
    idPublicacao INTEGER REFERENCES Publicacao(idPublicacao),
    PRIMARY KEY (idComentario)
);



-- DONE **Publicador**(<u>idPublicador</u>, nome)

-- DONE **Pagina**(<u>idPagina</u>->Publicador, website, idAdministrador->Utilizador)

-- DONE **Utilizador**(<u>idUtilizador</u>->Publicador, numeroTelemovel, genero, dataNascimento, idade, morada)

-- DONE **Conversa**(<u>idConversa</u>, nome)  

-- DONE **ParticipanteConversa**(<u>idParticipante</u>->Utilizador, <u>idConversa</u>->Conversa, alcunha)

-- DONE **Amizade**(<u>idRemetente</u>->Utilizador, <u>idRecetor</u>->Utilizador, estado, data)

-- DONE **ParticipanteEvento**(<u>idParticipante</u>->Utilizador, <u>idEvento</u>->Evento)

-- DONE **SeguidorPagina**(<u>idSeguidor</u>->Utilizador, <u>idPagina</u>->Pagina)

-- DONE **Grupo**(<u>idGrupo</u>, nome, idAdministrador->Utilizador)  

-- DONE **MembroGrupo**(<u>idMembro</u>->Utilizador, <u>idGrupo</u>->Grupo)

-- DONE **Atividade**(<u>idAtividade</u>, texto, data)  

-- DONE **Evento**(<u>idEvento</u>, descricao, dataRealizacao, idCriador->Utilizador)

-- DONE **Mensagem**(<u>idMensagem</u>->Atividade, dataEnvio, idMultimedia->Multimedia, idAutor->Utilizador, idConversa->Conversa)

-- DONE **Multimedia**(<u>idMensagem</u>, titulo, url, tamanho, formato)  

-- DONE **Audio**(<u>idAudio</u>->Multimedia, duracao)

-- DONE **Video**(<u>idVideo</u>->Multimedia, duracao)

-- DONE**Imagem**(<u>idImagem</u>->Multimedia)

-- DONE **Reacao**(<u>idAtividade</u>->idAtividade, idUtilizador->Utilizador, tipo)

-- DONE **Publicacao**(<u>idPublicacao</u>->Atividade, idPublicador->Publicador, idMultimedia->Multimedia, idPagina->Pagina, idGrupo->Grupo) 

-- DONE **Comentario**(<u>idComentario</u>->Atividade, idAutor->Utilizador, idPublicacao->Publicacao)
