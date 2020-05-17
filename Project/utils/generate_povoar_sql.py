from faker import Faker
from faker.providers import profile
from dateutil.relativedelta import relativedelta
from datetime import datetime
from random import randrange

fake = Faker("en_US")
fake.add_provider(profile)

relations_attributes = {
    "Publisher": ("publisherID", "name"),
    "User": ("userID", "phoneNumber", "gender", "birthDate", "age", "address"),
    "Page": ("pageID", "website", "adminID"),
    "Friendship": ("senderID", "receiverID", "state", "date"),
    "Chat": ("chatID", "name"),
    "ChatParticipant": ("participantID", "chatID", "nickname"),
    "ParticipanteEvent": ("idParticipante", "idEvent"),
    "SeguidorPage": ("idSeguidor", "idPage"),
    "GroupMember": ("idMembro", "idGrupo"),
    '"Group"': ("groupID", "name", "adminID"),
    "Event": ("eventID", "name", "description", "occurrenceDate", "creatorID"),
    "Multimedia": ("multimediaID", "title", "uri", "size", "format"),
    "Audio":("audioID", "length"),
    "Image": "('imageID')", # Kinda bodgy
    "Video": ("videoID", "length"),
    "Reaction": ("activityID", "idUser", "tipo"),
    "Comment": ("idComentario", "idAutor", "idPost"),
    "Post": ("postID", "publisherID", "multimediaID", "pageID","groupID"),
    "Message": ("messageID", "dataEnvio", "multimediaID", "authorID", "chatID"),
    "Activity": ("activityID", "text", "date"),
    }

result = {
    "Publisher": [],
    "User": [],
    "Page": [],
    '"Group"': [],
    "Audio": [],
    "Image": [],
    "Video": [],
    "Multimedia": [],
    "Event": [],
    "Post": []
    }

def insert_into(relation, values):    
    global result
    attributes = relations_attributes[relation]
    
    command = "INSERT INTO " + relation + str(attributes) # Insert into
    command += "\n\tVALUES" + str(values) + ";\n\n" # Values
    
    result[relation].append(command)
    
# Publisher
def publisher(id, name):
    values = (id, name)
    
    insert_into("Publisher", values)
    
# User
def user(id):
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
    
    insert_into("User", values)
    
    return name
    
#  Page
def page(id):
    name = fake.company()
    website = fake.uri()
    adminID = randrange(1, 11)
    
    values = (id, website, adminID)
    
    insert_into("Page", values)
    
    return name

# Friendship
def friendship(id):
    values = (id)
    
    insert_into("Friendship", values)

# Chat
def chat(id):
    values = (id)
    
    insert_into("Chat", values)

# ChatParticipant

# Group
def group(id):
    name = fake.sentence().title()
    adminID = randrange(1, 11)
    
    values = (id, name, adminID)
    
    insert_into('"Group"', values)

# Audio
def audio(id):
    file_format = ".mp3"
    length = randrange(1, 301)
    
    values = (id, length)
    
    insert_into("Audio", values)
    
    return file_format

# Image 
def image(id):
    file_format = ".jpg"
    
    values = "(" +str(id) + ")"
    
    insert_into("Image", values)
    
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

# Event
def event(id):
    name = fake.sentence().title()
    description = fake.text()
    date = str(fake.future_datetime())
    creatorID = randrange(1, 11)
    
    values = (id, name, description, date, creatorID)
    
    insert_into("Event", values)
    
# Post
def Post(id):
    publisherID = randrange(1, 21)
    mediaID = 1 # Change later
    pageID = randrange(11, 21)
    groupID = 1 # Change later 
    values = (id, publisherID, mediaID, pageID, groupID)
    
    insert_into("Post", values)
    
TOTAL_RANGE = 1
USER_RANGE = 10
PAGE_RANGE = 10
GROUP_RANGE = 5
AUDIO_RANGE = 5
IMAGE_RANGE= 5
VIDEO_RANGE = 5
EVENT_RANGE = 5
    
# Create commands for Users
for i in range(TOTAL_RANGE, TOTAL_RANGE + USER_RANGE): 
    publisher(i, user(i))
    
TOTAL_RANGE += USER_RANGE

# Create commands for Pages
for i in range(TOTAL_RANGE, TOTAL_RANGE + PAGE_RANGE): 
    publisher(i, page(i))
    
TOTAL_RANGE += PAGE_RANGE
    
# Create commands for Groups
for i in range(TOTAL_RANGE, TOTAL_RANGE + GROUP_RANGE): 
    group(i)
    
TOTAL_RANGE += GROUP_RANGE

# Create commands for Audio
for i in range(TOTAL_RANGE, TOTAL_RANGE + AUDIO_RANGE): 
    multimedia(i, audio(i))
    
TOTAL_RANGE += AUDIO_RANGE
    
# Create commands for Images
for i in range(TOTAL_RANGE, TOTAL_RANGE + IMAGE_RANGE): 
    multimedia(i, image(i))
    
TOTAL_RANGE += IMAGE_RANGE
    
# Create commands for Videos
for i in range(TOTAL_RANGE, TOTAL_RANGE + VIDEO_RANGE): 
    multimedia(i, video(i))
    
TOTAL_RANGE += VIDEO_RANGE
    
# Create commands for Events
for i in range(TOTAL_RANGE, TOTAL_RANGE + EVENT_RANGE): 
    event(i)

f = open("povoar.sql", "w") # Write
f.write("PRAGMA FOREIGN_KEYS = ON;\n\n")
f = open("povoar.sql", "a") # Append

for Publisher in result["Publisher"]:
    f.write(Publisher)
    
for User in result["User"]:
    f.write(User)
    
for page in result["Page"]:
    f.write(page)
    
for group in result['"Group"']:
    f.write(group)
    
for multimedia in result["Multimedia"]:
    f.write(multimedia)
    
for audio in result["Audio"]:
    f.write(audio)
    
for Image in result["Image"]:
    f.write(Image)
    
for video in result["Video"]:
    f.write(video)
    
for event in result["Event"]:
    f.write(event)
    
    
f.close()
