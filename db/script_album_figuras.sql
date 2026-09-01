DROP SCHEMA IF EXISTS copaauau;
CREATE SCHEMA copaauau;
USE copaauau;

CREATE TABLE cliente 
(
  nm_email VARCHAR(200),
  nm_cliente VARCHAR(100),
  nm_senha VARCHAR(64),
  CONSTRAINT pk_cliente PRIMARY KEY (nm_email)
);

CREATE TABLE recuperacao 
(
  nm_email varchar(200),
  cd_verificacao varchar(6),
  CONSTRAINT pk_recuperacao PRIMARY KEY (nm_email),
  CONSTRAINT fk_recuperacao_cliente FOREIGN KEY (nm_email) REFERENCES cliente(nm_email)
);

CREATE TABLE time 
(
  cd_time INT,
  nm_time VARCHAR(100),
  CONSTRAINT pk_time PRIMARY KEY (cd_time)
);

CREATE TABLE figura 
(
  cd_figura INT,
  nm_figura VARCHAR(100),
  cd_time INT,
  CONSTRAINT pk_figura PRIMARY KEY (cd_figura),
  CONSTRAINT fk_figura_time FOREIGN KEY (cd_time) REFERENCES time (cd_time)
);

CREATE TABLE album 
(
  nm_email VARCHAR(200),
  cd_figura INT,
  ic_possui TINYINT,
  CONSTRAINT pk_album PRIMARY KEY (nm_email, cd_figura),
  CONSTRAINT fk_cliente_figura_cliente FOREIGN KEY (nm_email)  REFERENCES cliente (nm_email),
  CONSTRAINT fk_cliente_figura_figura FOREIGN KEY (cd_figura) REFERENCES figura (cd_figura)
);

CREATE TABLE figura_repetida 
(
  nm_email VARCHAR(200),
  cd_figura INT,
  qt_repetidas INT,
  CONSTRAINT pk_figura_repetida PRIMARY KEY (nm_email, cd_figura),
  CONSTRAINT fk_cliente_figura_cliente2 FOREIGN KEY (nm_email) REFERENCES cliente (nm_email),
  CONSTRAINT fk_cliente_figura_figura2 FOREIGN KEY (cd_figura) REFERENCES figura (cd_figura)
);

Insert into time values (0, 'Creche Clube Au Au');
Insert into time values (1, 'Brasil');
Insert into time values (2, 'Alemanha');
Insert into time values (3, 'Inglaterra');
Insert into time values (4, 'Portugal');
Insert into time values (5, 'Estados Unidos');
Insert into time values (6, 'Argentina');
Insert into time values (7, 'França');
Insert into time values (8, 'Espanha');
Insert into time values (9, 'Bélgica');

Insert into figura values ( 1, 'Clube Au Au', 0);
Insert into figura values ( 2, 'Brasão do Time', 1);
Insert into figura values ( 3, 'Bella', 1);
Insert into figura values ( 4, 'Bonifácio', 1);
Insert into figura values ( 5, 'Athila', 1);
Insert into figura values ( 6, 'Capitu', 1);
Insert into figura values ( 7, 'Charlie', 1);
Insert into figura values ( 8, 'Chico', 1);
Insert into figura values ( 9, 'Duque', 1);
Insert into figura values (10, 'Atum', 1);
Insert into figura values (11, 'Koda', 1);
Insert into figura values (12, 'Gaia', 1);
Insert into figura values (13, 'Corote', 1);
Insert into figura values (14, 'Brasão do Time', 2);
Insert into figura values (15, 'Brownie', 2);
Insert into figura values (16, 'Carmel', 2);
Insert into figura values (17, 'Chiara', 2);
Insert into figura values (18, 'Sol', 2);
Insert into figura values (19, 'Dom', 2);
Insert into figura values (20, 'Agnes', 2);
Insert into figura values (21, 'Estrela', 2);
Insert into figura values (22, 'Rockie', 2);
Insert into figura values (23, 'Jorge', 2);
Insert into figura values (24, 'Matilda', 2);
Insert into figura values (25, 'Luke', 2);
Insert into figura values (26, 'Brasão do Time', 3);
Insert into figura values (27, 'Cadu', 3);
Insert into figura values (28, 'Café', 3);
Insert into figura values (29, 'Chico', 3);
Insert into figura values (30, 'Django', 3);
Insert into figura values (31, 'Hadi', 3);
Insert into figura values (32, 'Luke', 3);
Insert into figura values (33, 'Dudu', 3);
Insert into figura values (34, 'Dobby', 3);
Insert into figura values (35, 'Amora', 3);
Insert into figura values (36, 'Luna', 3);
Insert into figura values (37, 'Vito', 3);
Insert into figura values (38, 'Brasão do Time', 4);
Insert into figura values (39, 'Jack', 4);
Insert into figura values (40, 'Jorge', 4);
Insert into figura values (41, 'Moana', 4);
Insert into figura values (42, 'Muffin', 4);
Insert into figura values (43, 'Natasha', 4);
Insert into figura values (44, 'Rafa', 4);
Insert into figura values (45, 'Teddy Benedito', 4);
Insert into figura values (46, 'Tuco', 4);
Insert into figura values (47, 'Valentin', 4);
Insert into figura values (48, 'Zé', 4);
Insert into figura values (49, 'Zeus', 4);
Insert into figura values (50, 'Brasão do Time', 5);
Insert into figura values (51, 'Bela', 5);
Insert into figura values (52, 'Bono', 5);
Insert into figura values (53, 'Maui', 5);
Insert into figura values (54, 'Nelson', 5);
Insert into figura values (55, 'Charlote', 5);
Insert into figura values (56, 'Zeus', 5);
Insert into figura values (57, 'Iron', 5);
Insert into figura values (58, 'Kyara', 5);
Insert into figura values (59, 'Zoe', 5);
Insert into figura values (60, 'Whisky', 5);
Insert into figura values (61, 'Brisa', 5);
Insert into figura values (62, 'Brasão do Time', 6);
Insert into figura values (63, 'Maya', 6);
Insert into figura values (64, 'Nestor', 6);
Insert into figura values (65, 'Anakin', 6);
Insert into figura values (66, 'Floyd', 6);
Insert into figura values (67, 'Teddy', 6);
Insert into figura values (68, 'Scott', 6);
Insert into figura values (69, 'Spike', 6);
Insert into figura values (70, 'Toddy', 6);
Insert into figura values (71, 'Bela', 6);
Insert into figura values (72, 'Malu', 6);
Insert into figura values (73, 'Aperol', 6);
Insert into figura values (74, 'Brasão do Time', 7);
Insert into figura values (75, 'Simba', 7);
Insert into figura values (76, 'Apollo Kennel', 7);
Insert into figura values (77, 'Carlito', 7);
Insert into figura values (78, 'Carlota', 7);
Insert into figura values (79, 'Bento', 7);
Insert into figura values (80, 'Joaquim', 7);
Insert into figura values (81, 'Ozzy', 7);
Insert into figura values (82, 'Miguel', 7);
Insert into figura values (83, 'Ringo', 7);
Insert into figura values (84, 'Zoe', 7);
Insert into figura values (85, 'Apollo Bento', 7);
Insert into figura values (86, 'Brasão do Time', 8);
Insert into figura values (87, 'Lola', 8);
Insert into figura values (88, 'Lucky', 8);
Insert into figura values (89, 'Luke', 8);
Insert into figura values (90, 'Simba', 8);
Insert into figura values (91, 'Meg', 8);
Insert into figura values (92, 'Luna', 8);
Insert into figura values (93, 'Madruguinha', 8);
Insert into figura values (94, 'Mabel', 8);
Insert into figura values (95, 'Aurora', 8);
Insert into figura values (96, 'Theo', 8);
Insert into figura values (97, 'Thor', 8);
Insert into figura values (98, 'Brasão do Time', 9);
Insert into figura values (99, 'Magali', 9);
Insert into figura values (100, 'Liev', 9);
Insert into figura values (101, 'Luna Tamashiro', 9);
Insert into figura values (102, 'Nina', 9);
Insert into figura values (103, 'Ozzy', 9);
Insert into figura values (104, 'Ragnar', 9);
Insert into figura values (105, 'Bartholomeu', 9);
Insert into figura values (106, 'Chico', 9);
Insert into figura values (107, 'Ringer', 9);
Insert into figura values (108, 'Francesco', 9);
Insert into figura values (109, 'Teppy', 9);
Insert into figura values (110, 'Fachada Clube Au Au', 0);

Insert into cliente values ('proffreddy@gmail.com', 'Frederico Arco e Flexa Machado Justo', md5('123'));

Insert into album values ('proffreddy@gmail.com',  1, 0);
Insert into album values ('proffreddy@gmail.com',  2, 1);
Insert into album values ('proffreddy@gmail.com',  3, 0);
Insert into album values ('proffreddy@gmail.com',  4, 1);
Insert into album values ('proffreddy@gmail.com',  5, 1);
Insert into album values ('proffreddy@gmail.com',  6, 1);
Insert into album values ('proffreddy@gmail.com',  7, 1);
Insert into album values ('proffreddy@gmail.com',  8, 1);
Insert into album values ('proffreddy@gmail.com',  9, 0);
Insert into album values ('proffreddy@gmail.com', 10, 0);
Insert into album values ('proffreddy@gmail.com', 11, 1);
Insert into album values ('proffreddy@gmail.com', 12, 1);
Insert into album values ('proffreddy@gmail.com', 13, 1);
Insert into album values ('proffreddy@gmail.com', 14, 0);
Insert into album values ('proffreddy@gmail.com', 15, 1);
Insert into album values ('proffreddy@gmail.com', 16, 1);
Insert into album values ('proffreddy@gmail.com', 17, 1);
Insert into album values ('proffreddy@gmail.com', 18, 1);
Insert into album values ('proffreddy@gmail.com', 19, 1);
Insert into album values ('proffreddy@gmail.com', 20, 1);
Insert into album values ('proffreddy@gmail.com', 21, 1);
Insert into album values ('proffreddy@gmail.com', 22, 0);
Insert into album values ('proffreddy@gmail.com', 23, 1);
Insert into album values ('proffreddy@gmail.com', 24, 1);
Insert into album values ('proffreddy@gmail.com', 25, 1);
Insert into album values ('proffreddy@gmail.com', 26, 1);
Insert into album values ('proffreddy@gmail.com', 27, 1);
Insert into album values ('proffreddy@gmail.com', 28, 1);
Insert into album values ('proffreddy@gmail.com', 29, 1);
Insert into album values ('proffreddy@gmail.com', 30, 1);
Insert into album values ('proffreddy@gmail.com', 31, 1);
Insert into album values ('proffreddy@gmail.com', 32, 1);
Insert into album values ('proffreddy@gmail.com', 33, 1);
Insert into album values ('proffreddy@gmail.com', 34, 1);
Insert into album values ('proffreddy@gmail.com', 35, 0);
Insert into album values ('proffreddy@gmail.com', 36, 1);
Insert into album values ('proffreddy@gmail.com', 37, 1);
Insert into album values ('proffreddy@gmail.com', 38, 1);
Insert into album values ('proffreddy@gmail.com', 39, 1);
Insert into album values ('proffreddy@gmail.com', 40, 1);
Insert into album values ('proffreddy@gmail.com', 41, 0);
Insert into album values ('proffreddy@gmail.com', 42, 1);
Insert into album values ('proffreddy@gmail.com', 43, 0);
Insert into album values ('proffreddy@gmail.com', 44, 1);
Insert into album values ('proffreddy@gmail.com', 45, 1);
Insert into album values ('proffreddy@gmail.com', 46, 1);
Insert into album values ('proffreddy@gmail.com', 47, 0);
Insert into album values ('proffreddy@gmail.com', 48, 1);
Insert into album values ('proffreddy@gmail.com', 49, 0);
Insert into album values ('proffreddy@gmail.com', 50, 0);
Insert into album values ('proffreddy@gmail.com', 51, 1);
Insert into album values ('proffreddy@gmail.com', 52, 1);
Insert into album values ('proffreddy@gmail.com', 53, 1);
Insert into album values ('proffreddy@gmail.com', 54, 1);
Insert into album values ('proffreddy@gmail.com', 55, 0);
Insert into album values ('proffreddy@gmail.com', 56, 1);
Insert into album values ('proffreddy@gmail.com', 57, 1);
Insert into album values ('proffreddy@gmail.com', 58, 1);
Insert into album values ('proffreddy@gmail.com', 59, 1);
Insert into album values ('proffreddy@gmail.com', 60, 0);
Insert into album values ('proffreddy@gmail.com', 61, 1);
Insert into album values ('proffreddy@gmail.com', 62, 1);
Insert into album values ('proffreddy@gmail.com', 63, 1);
Insert into album values ('proffreddy@gmail.com', 64, 0);
Insert into album values ('proffreddy@gmail.com', 65, 1);
Insert into album values ('proffreddy@gmail.com', 66, 1);
Insert into album values ('proffreddy@gmail.com', 67, 1);
Insert into album values ('proffreddy@gmail.com', 68, 1);
Insert into album values ('proffreddy@gmail.com', 69, 1);
Insert into album values ('proffreddy@gmail.com', 70, 1);
Insert into album values ('proffreddy@gmail.com', 71, 1);
Insert into album values ('proffreddy@gmail.com', 72, 1);
Insert into album values ('proffreddy@gmail.com', 73, 1);
Insert into album values ('proffreddy@gmail.com', 74, 0);
Insert into album values ('proffreddy@gmail.com', 75, 1);
Insert into album values ('proffreddy@gmail.com', 76, 0);
Insert into album values ('proffreddy@gmail.com', 77, 1);
Insert into album values ('proffreddy@gmail.com', 78, 1);
Insert into album values ('proffreddy@gmail.com', 79, 1);
Insert into album values ('proffreddy@gmail.com', 80, 1);
Insert into album values ('proffreddy@gmail.com', 81, 1);
Insert into album values ('proffreddy@gmail.com', 82, 1);
Insert into album values ('proffreddy@gmail.com', 83, 1);
Insert into album values ('proffreddy@gmail.com', 84, 1);
Insert into album values ('proffreddy@gmail.com', 85, 1);
Insert into album values ('proffreddy@gmail.com', 86, 1);
Insert into album values ('proffreddy@gmail.com', 87, 0);
Insert into album values ('proffreddy@gmail.com', 88, 0);
Insert into album values ('proffreddy@gmail.com', 89, 1);
Insert into album values ('proffreddy@gmail.com', 90, 0);
Insert into album values ('proffreddy@gmail.com', 91, 1);
Insert into album values ('proffreddy@gmail.com', 92, 1);
Insert into album values ('proffreddy@gmail.com', 93, 0);
Insert into album values ('proffreddy@gmail.com', 94, 0);
Insert into album values ('proffreddy@gmail.com', 95, 1);
Insert into album values ('proffreddy@gmail.com', 96, 1);
Insert into album values ('proffreddy@gmail.com', 97, 0);
Insert into album values ('proffreddy@gmail.com', 98, 0);
Insert into album values ('proffreddy@gmail.com', 99, 1);
Insert into album values ('proffreddy@gmail.com', 100, 1);
Insert into album values ('proffreddy@gmail.com', 101, 0);
Insert into album values ('proffreddy@gmail.com', 102, 1);
Insert into album values ('proffreddy@gmail.com', 103, 0);
Insert into album values ('proffreddy@gmail.com', 104, 1);
Insert into album values ('proffreddy@gmail.com', 105, 1);
Insert into album values ('proffreddy@gmail.com', 106, 1);
Insert into album values ('proffreddy@gmail.com', 107, 1);
Insert into album values ('proffreddy@gmail.com', 108, 1);
Insert into album values ('proffreddy@gmail.com', 109, 1);
Insert into album values ('proffreddy@gmail.com', 110, 0);

Insert into figura_repetida values ('proffreddy@gmail.com', 1, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 2, 1);
Insert into figura_repetida values ('proffreddy@gmail.com', 3, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 4, 2);
Insert into figura_repetida values ('proffreddy@gmail.com', 5, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 6, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 7, 1);
Insert into figura_repetida values ('proffreddy@gmail.com', 8, 1);
Insert into figura_repetida values ('proffreddy@gmail.com', 9, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 10, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 11, 1);
Insert into figura_repetida values ('proffreddy@gmail.com', 12, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 13, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 14, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 15, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 16, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 17, 1);
Insert into figura_repetida values ('proffreddy@gmail.com', 18, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 19, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 20, 3);
Insert into figura_repetida values ('proffreddy@gmail.com', 21, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 22, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 23, 1);
Insert into figura_repetida values ('proffreddy@gmail.com', 24, 1);
Insert into figura_repetida values ('proffreddy@gmail.com', 25, 1);
Insert into figura_repetida values ('proffreddy@gmail.com', 26, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 27, 2);
Insert into figura_repetida values ('proffreddy@gmail.com', 28, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 29, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 30, 2);
Insert into figura_repetida values ('proffreddy@gmail.com', 31, 1);
Insert into figura_repetida values ('proffreddy@gmail.com', 32, 2);
Insert into figura_repetida values ('proffreddy@gmail.com', 33, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 34, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 35, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 36, 1);
Insert into figura_repetida values ('proffreddy@gmail.com', 37, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 38, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 39, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 40, 1);
Insert into figura_repetida values ('proffreddy@gmail.com', 41, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 42, 1);
Insert into figura_repetida values ('proffreddy@gmail.com', 43, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 44, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 45, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 46, 4);
Insert into figura_repetida values ('proffreddy@gmail.com', 47, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 48, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 49, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 50, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 51, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 52, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 53, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 54, 1);
Insert into figura_repetida values ('proffreddy@gmail.com', 55, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 56, 1);
Insert into figura_repetida values ('proffreddy@gmail.com', 57, 2);
Insert into figura_repetida values ('proffreddy@gmail.com', 58, 1);
Insert into figura_repetida values ('proffreddy@gmail.com', 59, 1);
Insert into figura_repetida values ('proffreddy@gmail.com', 60, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 61, 1);
Insert into figura_repetida values ('proffreddy@gmail.com', 62, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 63, 2);
Insert into figura_repetida values ('proffreddy@gmail.com', 64, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 65, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 66, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 67, 1);
Insert into figura_repetida values ('proffreddy@gmail.com', 68, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 69, 2);
Insert into figura_repetida values ('proffreddy@gmail.com', 70, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 71, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 72, 1);
Insert into figura_repetida values ('proffreddy@gmail.com', 73, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 74, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 75, 3);
Insert into figura_repetida values ('proffreddy@gmail.com', 76, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 77, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 78, 1);
Insert into figura_repetida values ('proffreddy@gmail.com', 79, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 80, 1);
Insert into figura_repetida values ('proffreddy@gmail.com', 81, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 82, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 83, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 84, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 85, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 86, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 87, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 88, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 89, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 90, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 91, 1);
Insert into figura_repetida values ('proffreddy@gmail.com', 92, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 93, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 94, 1);
Insert into figura_repetida values ('proffreddy@gmail.com', 95, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 96, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 97, 1);
Insert into figura_repetida values ('proffreddy@gmail.com', 98, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 99, 4);
Insert into figura_repetida values ('proffreddy@gmail.com', 100, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 101, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 102, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 103, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 104, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 105, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 106, 2);
Insert into figura_repetida values ('proffreddy@gmail.com', 107, 1);
Insert into figura_repetida values ('proffreddy@gmail.com', 108, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 109, 0);
Insert into figura_repetida values ('proffreddy@gmail.com', 110, 1);
