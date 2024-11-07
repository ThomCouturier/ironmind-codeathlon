# Ceci est un test de migration SQL
# Les migrations sont exécutées en ordre alphabétique sur les fichiers du répertoire db/migrations

CREATE OR REPLACE TABLE programs (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE OR REPLACE TABLE sexes (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE OR REPLACE TABLE seats (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    number INT NOT NULL,
    section TEXT NOT NULL,
    price FLOAT NOT NULL
);

CREATE OR REPLACE TABLE events (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    description TEXT NOT NULL
);

CREATE OR REPLACE TABLE users (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name TEXT NOT NULL,
    family_name TEXT NOT NULL,
    sexeId SMALLINT UNSIGNED NOT NULL,
    programmeId SMALLINT UNSIGNED NOT NULL,
    birthDate DATE NOT NULL,
    email TEXT NOT NULL,
    password TEXT NOT NULL,

    CONSTRAINT `fk_sexes_id`
    FOREIGN KEY (sexeId) REFERENCES sexes(id),

    CONSTRAINT `fk_programs_id`
    FOREIGN KEY (programmeId) REFERENCES programs(id)
);

CREATE OR REPLACE TABLE reservations (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    seatId SMALLINT UNSIGNED NOT NULL,
    eventId SMALLINT UNSIGNED NOT NULL,
    userId SMALLINT UNSIGNED NOT NULL,

    CONSTRAINT `fk_seat_id`
    FOREIGN KEY (seatId) REFERENCES seats(id),

    CONSTRAINT `fk_event_id`
    FOREIGN KEY (eventId) REFERENCES events(id),

    CONSTRAINT `fk_user_id`
    FOREIGN KEY (userId) REFERENCES users(id)
);




CREATE TRIGGER updatePrice
AFTER INSERT ON reservation
IF SELECT data_length FROM reservation
UPDATE price FROM tickets SET price.animals = animal_count.animals+1;
--TODO: ajouter des valeurs dans les différentes tables (dans le fichier 1.sql)

--TODO: faire les Triggers / Contraintes
