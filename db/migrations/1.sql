--This file contains all initial inserts to the DB to populate it

--TABLE: programs
INSERT INTO programs VALUES ('IFT');
INSERT INTO programs VALUES ('GLO');
INSERT INTO programs VALUES ('SRC');
INSERT INTO programs VALUES ('UDP');
INSERT INTO programs VALUES ('TCP');

--TABLE: sexes
INSERT INTO sexes VALUES ('Homme');
INSERT INTO sexes VALUES ('Femme');
INSERT INTO sexes VALUES ('Non binaire');
INSERT INTO sexes VALUES ('Appache attack helicopter');
INSERT INTO sexes VALUES ('Autre');

--TABLE: seats
INSERT INTO seats VALUES ('Autre');

--TABLE: events
INSERT INTO events VALUES ('Premier évènement');
INSERT INTO events VALUES ('Deuxième évènement');
INSERT INTO events VALUES ('Troisième évènement');
INSERT INTO events VALUES ('Quatrième évènement');


--TABLE: users
INSERT INTO users VALUES ('Marc-Philippe', 'Parent', 0, 0, '1500-01-01', 'MPP@MPPAgency.com', '3u2i4tkreykw7y4gjdhf');
INSERT INTO users VALUES ('Ahmed', 'Sid-Ali', 0, 0, '2002-04-05', 'AhmedSidAli@Udes.com', 'fdunjtrk4ow8932345kth');
INSERT INTO users VALUES ('Mon', 'Dieu', 0, 0, '1000-01-01', 'God@GodMessagerie.org.qc.ca.gouv.edu.ru.gg.io.op.ez.net.com.ulaval.ift.ch', 'rglelwkdlskr456dslj4');
INSERT INTO users VALUES ('Ma', 'Dame', 1, 1, '1477-01-01', 'Testesteststestse@Test.com', '345u6lygnos4i56yk');
INSERT INTO users VALUES ('Shit', 'Name', 1, 0, '2002-01-01', 'shitname@noinspi.com', 'boun65jl44wlrt59itj');


--TABLE: reservations #Il manque le nom du user
INSERT INTO reservation VALUES ('1');
INSERT INTO reservation VALUES ('2');
INSERT INTO reservation VALUES ('3');
INSERT INTO reservation VALUES ('4');
INSERT INTO reservation VALUES ('5');



--INSERT INTO users VALUES (1, 'William', 'Blanchet Lafrenière', 0, 0, '2003-08-11', 'wibll@ulaval.ca', '328768932cca');
--INSERT INTO programs VALUES (0, 'This is item 2', 2);