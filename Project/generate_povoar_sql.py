from faker import Faker
from faker.providers import profile
from dateutil.relativedelta import relativedelta
from datetime import datetime
from random import randrange

fake = Faker("en_US")
fake.add_provider(profile)

relations_attributes = {
    "Publicador": ("idPublicador", "nome"),
    "Pagina": ("idPagina", "website", "idAdministrador"),
    "Utilizador": ("idUtilizador", "numeroTelemovel", "genero", "dataNascimento", "idade", "morada"),
    "ParticipanteConversa": ("idParticipante", "idConversa", "alcunha"),
    "Amizade": ("idRemetente", "idRecetor", "estado", "data"),
    "ParticipanteEvento": ("idParticipante", "idEvento"),
    "SeguidorPagina": ("idSeguidor", "idPagina"),
    "MembroGrupo": ("idMembro", "idGrupo"),
    "Grupo": ("idGrupo", "nome", "idAdministrador"),
    "Evento": ("idEvento", "nome", "descricao", "dataRealizacao", "idCriador"),
    "Multimedia": ("idMultimedia", "titulo", "url", "tamanho", "formato"),
    "Audio":("idAudio", "duracao"),
    "Imagem": "('idImagem')", # Kinda bodgy
    "Video": ("idVideo", "duracao"),
    "Reacao": ("idAtividade", "idUtilizador", "tipo"),
    "Comentario": ("idComentario", "idAutor", "idPublicacao"),
    "Publicacao": ("idPublicacao", "idPublicador", "idMultimedia", "idPagina","idGrupo"),
    "Mensagem": ("idMensagem", "dataEnvio", "idMultimedia", "idAutor", "idConversa"),
    "Atividade": ("idAtividade", "texto", "data"),
    "Conversa": ("idConversa", "nome")
    }

result = {
    "Publicador": [],
    "Utilizador": [],
    "Pagina": [],
    "Audio": [],
    "Imagem": [],
    "Video": [],
    "Multimedia": [],
    "Evento": [],
    "Publicacao": []
    }

def insert_into(relation, values):    
    global result
    attributes = relations_attributes[relation]
    
    command = "INSERT INTO " + relation + str(attributes) # Insert into
    command += "\n\tVALUES" + str(values) + ";\n\n" # Values
    
    result[relation].append(command)
    
#  Publicador
def publicador(id, name):
    values = (id, name)
    
    insert_into("Publicador", values)
    
# Utilizador
def utilizador(id):
    profile = fake.profile()
    phone_number = "9" + fake.numerify('########')   
    name = profile["name"]
    sex = profile["sex"]
    birthdate = profile["birthdate"]
    age = relativedelta(datetime.today(), birthdate).years
    residence = profile["residence"]
    
    # Generate a new profile if this one's age is less than 13
    while age < 13:
        profile = fake.profile()
        birthdate = profile["birthdate"]
        age = relativedelta(datetime.today(), birthdate).years
    
    values = (id, phone_number, sex, str(birthdate), age, residence)
    
    insert_into("Utilizador", values)
    
    return name
    
#  Pagina
def pagina(id):
    name = fake.company()
    website = fake.uri()
    adminID = randrange(1, 11)
    
    values = (id, website, adminID)
    
    insert_into("Pagina", values)
    
    return name

# Amizade 

# Conversa

# ParticipanteConversa

# Audio
def audio(id):
    file_format = ".mp3"
    length = randrange(1, 301)
    
    values = (id, length)
    
    insert_into("Audio", values)
    
    return file_format

# Imagem 
def imagem(id):
    file_format = ".jpg"
    
    values = "(" +str(id) + ")"
    
    insert_into("Imagem", values)
    
    return file_format

# Video
def video(id):
    file_format = ".mp4"
    length = randrange(1, 301)
    
    values = (id, length)
    
    insert_into("Video", values)
    
    return file_format

# Multimedia 
def multimedia(id, file_format):
    title = fake.word()
    url = fake.url()
    size = randrange(1, 4097)
    
    values = (id, title, url, size, file_format)
    
    insert_into("Multimedia", values)

# Evento
def evento(id):
    name = fake.sentence().title()
    description = fake.text()
    date = str(fake.future_datetime())
    creatorID = randrange(1, 11)
    
    values = (id, name, description, date, creatorID)
    
    insert_into("Evento", values)
    
# Publicação
def publicacao(id):
    publisherID = randrange(1, 21)
    mediaID = 1 # Change later
    pageID = randrange(11, 21)
    groupID = 1 # Change later 
    values = (id, publisherID, mediaID, pageID, groupID)
    
    insert_into("Publicacao", values)

for i in range(1, 11): 
    publicador(i, utilizador(i))

for i in range(11, 21): 
    publicador(i, pagina(i))
    
for i in range(21, 26): 
    multimedia(i, audio(i))
    
for i in range(26, 31): 
    multimedia(i, imagem(i))
    
for i in range(31, 36): 
    multimedia(i, video(i))
    
for i in range(36, 41): 
    evento(i)

f = open("povoar.sql", "w")
f.write("PRAGMA FOREIGN_KEYS = ON;\n\n")
f = open("povoar.sql", "a")

for publicador in result["Publicador"]:
    f.write(publicador)
    
for utilizador in result["Utilizador"]:
    f.write(utilizador)
    
for pagina in result["Pagina"]:
    f.write(pagina)
    
for multimedia in result["Multimedia"]:
    f.write(multimedia)
    
for audio in result["Audio"]:
    f.write(audio)
    
for imagem in result["Imagem"]:
    f.write(imagem)
    
for video in result["Video"]:
    f.write(video)
    
for evento in result["Evento"]:
    f.write(evento)
    
f.close()
