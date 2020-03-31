**Publicador**(<u>idPublicador</u>, nome)  

**Pagina**(<u>idPagina</u>->Publicador, website, idAdministrador->Utilizador)  

**Utilizador**(<u>idUtilizador</u>->Publicador, numeroTelemovel, genero, dataNascimento, idade, morada)  

**ParticipanteConversa**(<u>idParticipante</u>->Utilizador, <u>idConversa</u>->Conversa, alcunha)

**Amizade**(<u>idRemetente</u>->Utilizador, <u>idRecetor</u>->Utilizador, estado, data)

**ParticipanteEvento**(<u>idParticipante</u>->Utilizador, <u>idEvento</u>->Evento)

**SeguidorPagina**(<u>idSeguidor</u>->Utilizador, <u>idPagina</u>->Pagina)

**MembroGrupo**(<u>idMembro</u>->Utilizador, <u>idGrupo</u>->Grupo)

**Grupo**(<u>idGrupo</u>, nome, idAdministrador->Utilizador)  

**Evento**(<u>idEvento</u>, nome, descricao, dataRealizacao, idCriador->Utilizador)  

**Multimedia**(<u>idMultimedia</u>, titulo, url, tamanho, formato)  

**Audio**(<u>idAudio</u>->Multimedia, duracao)

**Video**(<u>idVideo</u>->Multimedia, duracao)

**Imagem**(<u>idImagem</u>->Multimedia)

**Reacao**(<u>idAtividade</u>->Atividade, idUtilizador->Utilizador, tipo)

**Comentario**(<u>idComentario</u>->Atividade, idAutor->Utilizador, idPublicacao->Publicacao)

**Publicacao**(<u>idPublicacao</u>->Atividade, idPublicador->Publicador, idMultimedia->Multimedia, idPagina->Pagina, idGrupo->Grupo) 

**Mensagem**(<u>idMensagem</u>->Atividade, dataEnvio, idMultimedia->Multimedia, idAutor->Utilizador, idConversa->Conversa)  

**Atividade**(<u>idAtividade</u>, texto, data)  

**Conversa**(<u>idConversa</u>, nome)  
