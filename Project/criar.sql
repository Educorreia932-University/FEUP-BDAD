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

DROP TABLE IF EXISTS Amizade;
--VERIFICAR FOREIGN KEYS
CREATE TABLE Amizade (
    idRemetente INTEGER REFERENCES Utilizador(idUtilizador),
    idRecetor INTEGER REFERENCES Utilizador(idUtilizador),
    estado INTEGER, --??????
    data DATE,
    PRIMARY KEY (idRemetente, idRecetor)
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

DROP TABLE IF EXISTS Multimedia;
CREATE TABLE Multimedia (
    idMultimedia INTEGER,
    titulo TEXT,
    url TEXT,
    tamanho REAL,
    formato TEXT,
    PRIMARY KEY (idMultimedia)
);

DROP TABLE IF EXISTS Atividade;
CREATE TABLE Atividade (
    idAtividade INTEGER,
    texto TEXT,
    data DATE,
    PRIMARY KEY (idAtividade)
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

DROP TABLE IF EXISTS Evento;
CREATE TABLE Evento (
    idEvento INTEGER,
    nome TEXT,
    descricao TEXT,
    dataRealizacao DATE,
    idCriador INTEGER REFERENCES Utilizador(idUtilizador),
    PRIMARY KEY (idEvento)
);

DROP TABLE IF EXISTS ParticipanteEvento;
CREATE TABLE ParticipanteEvento (
    idParticipante INTEGER REFERENCES Utilizador(idUtilizador),
    idEvento INTEGER REFERENCES Evento(idEvento),
    PRIMARY KEY (idParticipante, idEvento)
);

DROP TABLE IF EXISTS SeguidorPagina;
CREATE TABLE SeguidorPagina (
    idSeguidor INTEGER REFERENCES Utilizador(idUtilizador),
    idPagina INTEGER REFERENCES Pagina(idPagina),   
    PRIMARY KEY (idSeguidor, idPagina)
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
    PRIMARY KEY (idMembro, idGrupo)
);

DROP TABLE IF EXISTS Audio;
CREATE TABLE Audio (
    idAudio INTEGER REFERENCES Multimedia(idMultimedia),
    duracao REAL,
    PRIMARY KEY (idAudio)
);

DROP TABLE IF EXISTS Imagem;
CREATE TABLE Imagem (
    idImagem INTEGER REFERENCES Multimedia(idMultimedia),
    PRIMARY KEY (idImagem)
);

DROP TABLE IF EXISTS Video;
CREATE TABLE Video (
    idVideo INTEGER REFERENCES Multimedia(idMultimedia),
    duracao REAL,
    PRIMARY KEY (idVideo)
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
