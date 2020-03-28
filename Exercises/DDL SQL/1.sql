CREATE TABLE Team (
    name TEXT,
    country TEXT,

    PRIMARY KEY (name)
);

CREATE TABLE Aircraft (
    model TEXT,
    horsepower NUMBER,
    topspeed NUMBER,
    width NUMBER,
    height NUMBER,
    weight NUMBER,

    PRIMARY KEY (model)
);

CREATE TABLE Pilot (
    num NUMBER,
    firstname TEXT,
    surname TEXT,
    nationality TEXT,
    birthday DATE,
    name TEXT,
    model TEXT,

    PRIMARY KEY (num),
    FOREIGN KEY (name) REFERENCES Team(name),
    FOREIGN KEY (model) REFERENCES Aircraft(model)
);

CREATE TABLE Race (
    location TEXT,
    edition NUMBER,
    country TEXT,
    date DATE UNIQUE,
    gates TEXT,
    eliminations NUMBER,

    PRIMARY KEY (location, edition)
);

CREATE TABLE Participation (
    num TEXT,
    location TEXT,
    edition NUMBER,
    trainingpos NUMBER DEFAULT NULL CHECK (trainingpos > 1),
    trainingtime NUMBER CHECK (trainingtime > 0 AND trainingpos <> NULL),
    trainingpenalty NUMBER,
    qualificationpos NUMBER DEFAULT NULL CHECK (qualificationpos > 1),
    qualificationtime NUMBER CHECK (qualificationtime > 0 AND qualificationpos <> NULL),
    qualificationpenalty NUMBER,
    eliminationpos NUMBER DEFAULT NULL CHECK (eliminationpos > 1),
    eliminationtime NUMBER CHECK (eliminationtime > 0 AND eliminationpos <> NULL),
    eliminationpenalty NUMBER,

    PRIMARY KEY (num),
    FOREIGN KEY (num) REFERENCES Pilot(num),
    FOREIGN KEY (location, edition) REFERENCES Race(location, edition)
);

CREATE TABLE Duel (
    numpilot1 NUMBER,
    numpilot2 NUMBER,
    location TEXT,
    edition NUMBER,
    dueltype TEXT,
    timepilot1 NUMBER,
    timepilot2 NUMBER,
    penaltypilot1 NUMBER,
    penaltypilot2 NUMBER,

    PRIMARY KEY (numpilot1, numpilot2),
    FOREIGN KEY (numpilot1) REFERENCES Pilot(num),
    FOREIGN KEY (numpilot2) REFERENCES Pilot(num),
    FOREIGN KEY (location, edition) REFERENCES Race(location, edition)
);
