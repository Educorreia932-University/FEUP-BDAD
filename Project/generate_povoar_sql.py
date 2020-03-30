from faker import Faker
from faker.providers import profile
from dateutil.relativedelta import relativedelta
from datetime import datetime

fake = Faker("en_US")
fake.add_provider(profile)

relations_attributes = {
    "Publicador": ("idPublicador", "nome"),
    "Pagina": ("idPagina", "website"),
    "Utilizador": ("idUtilizador", "numeroTelemovel", "genero", "dataNascimento", "idade", "morada"),
    "ParticipanteConversa": ("idParticipante", "idConversa", "alcunha"),
    "Amizade": ("idRemetente", "idRecetor", "estado", "data"),
    "ParticipanteEvento": ("idParticipante", "idEvento"),
    "SeguidorPagina": ("idSeguidor", "idPagina"),
    "MembroGrupo": ("idMembro", "idGrupo"),
    "Grupo": ("idGrupo", "nome", "idAdministrador"),
    "Evento": ("idEvento", "descricao", "dataRealizacao", "idCriador"),
    "Multimedia": ("idMensagem", "titulo", "url", "tamanho", "formato"),
    "Audio":("idAudio", "duracao"),
    "Video": ("idImagem", "duracao"),
    "Reacao": ("idAtividade", "idUtilizador", "tipo"),
    "Comentario": ("idComentario", "idAutor", "idPublicacao"),
    "Publicacao": ("idPublicacao", "idPublicador", "idMultimedia", "idPagina","idGrupo"),
    "Mensagem": ("idMensagem", "dataEnvio", "idMultimedia", "idAutor", "idConversa"),
    "Atividade": ("idAtividade", "texto", "data"),
    "Conversa": ("idConversa", "nome")
    }

def insert_into(relation, values):    
    attributes = relations_attributes[relation]
    
    result = "INSERT INTO " + relation + str(attributes) # Insert into
    result += "\n\tVALUES" + str(values) # Values
    
    print(result + "\n")
    
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
    
    values = (id, phone_number, name, sex, str(birthdate), age, residence)
    
    insert_into("Utilizador", values)

for i in range(20):
    utilizador(i + 1)