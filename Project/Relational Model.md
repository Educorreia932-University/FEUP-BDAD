**Publisher**(<u>idPublisher</u>, name)  

**Page**(<u>idPage</u>->Publisher, website, idAdministrador->User)  

**User**(<u>idUser</u>->Publisher, numeroTelemovel, genero, dataNascimento, idade, morada)  

**ChatParticipant**(<u>idParticipante</u>->User, <u>idConversa</u>->Conversa, alcunha)

**Friendship**(<u>idRemetente</u>->User, <u>idRecetor</u>->User, estado, data)

**EventParticipant**(<u>idParticipante</u>->User, <u>idEvento</u>->Evento)

**PageFollower**(<u>idSeguidor</u>->User, <u>idPage</u>->Page)

**GroupMember**(<u>idMembro</u>->User, <u>idGrupo</u>->Grupo)

**Grupo**(<u>idGrupo</u>, name, idAdministrador->User)  

**Evento**(<u>idEvento</u>, name, descricao, dataRealizacao, idCriador->User)  

**Multimedia**(<u>idMultimedia</u>, titulo, url, tamanho, formato)  

**Audio**(<u>idAudio</u>->Multimedia, duracao)

**Video**(<u>idVideo</u>->Multimedia, duracao)

**Imagem**(<u>idImagem</u>->Multimedia)

**Reacao**(<u>idAtividade</u>->Atividade, idUser->User, tipo)

**Comentario**(<u>idComentario</u>->Atividade, idAutor->User, idPublicacao->Publicacao)

**Publicacao**(<u>idPublicacao</u>->Atividade, idPublisher->Publisher, idMultimedia->Multimedia, idPage->Page, idGrupo->Grupo) 

**Mensagem**(<u>idMensagem</u>->Atividade, dataEnvio, idMultimedia->Multimedia, idAutor->User, idConversa->Conversa)  

**Atividade**(<u>idAtividade</u>, texto, data)  

**Conversa**(<u>idConversa</u>, name)  
