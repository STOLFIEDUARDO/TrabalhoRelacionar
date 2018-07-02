﻿drop table pokemons;
drop table categorias;
drop table fraquezas;

CREATE TABLE categorias(
    id INT IDENTITY(1,3),
    nome VARCHAR(100)
    PRIMARY KEY(id)
   
);
 
CREATE TABLE fraquezas(
    id INT IDENTITY(1,3),
    nome VARCHAR(100)
    PRIMARY KEY(id)
 
);
 
CREATE TABLE pokemons(
    id INT IDENTITY(1,3) PRIMARY KEY,
    id_categoria INT,
    id_fraqueza_1 INT,
    id_fraqueza_2 INT,
    nome VARCHAR(100),
    FOREIGN KEY (id_categoria) REFERENCES categorias(id),
    FOREIGN KEY (id_fraqueza_1) REFERENCES fraquezas(id),
    FOREIGN KEY (id_fraqueza_2) REFERENCES fraquezas(id)
 
);
 
 
 
 
INSERT INTO fraquezas(nome) VALUES
('Rock'),
('Electric'),
('Eletric'),
('Bug'),
('Fairy'),
('Ice'),
('Ghost'),
('Dark'),
('Grass'),
('Ice'),
('Bug'),
('Flying'),
('Fighting');
 
INSERT INTO categorias(nome) VALUES
('Freeze'),
('Illusion Fox'),
('Electric'),
('Dragon'),
('Gas'),
('Continent'),
('Brutal'),
('Sun'),
('Diving'),
('Cocoon'),
('Poison Bee'),
('Worm'),
('Shellfish'),
('Emanation');
 
 INSERT INTO pokemons(id_categoria, id_fraqueza_1, id_fraqueza_2, nome) VALUES
((SELECT id FROM categorias WHERE nome = 'Freeze'), (SELECT id FROM fraquezas WHERE nome = 'Rock'), (SELECT id FROM fraquezas WHERE nome = 'Electric'),'Articuno'),

((SELECT id FROM categorias WHERE nome = 'Emanation'), (SELECT id FROM fraquezas WHERE nome = 'Flying'), (SELECT id FROM fraquezas WHERE nome = 'Fairy'), 'Riolu'),

((SELECT id FROM categorias WHERE nome = 'Diving'), (SELECT id FROM fraquezas WHERE nome = 'Dark'), (SELECT id FROM fraquezas WHERE nome = 'Electric'),'Lugia'),

((SELECT id FROM categorias WHERE nome = 'Sun'), (SELECT id FROM fraquezas WHERE nome = 'Rock'), (SELECT id FROM fraquezas WHERE nome = 'Flying'), 'Volcarona'),

((SELECT id FROM categorias WHERE nome = 'Gas'), (SELECT id FROM fraquezas WHERE nome = 'Dark'), (SELECT id FROM fraquezas WHERE nome = 'Ghost'), 'Gastly'),

((SELECT id FROM categorias WHERE nome = 'Freeze'), (SELECT id FROM fraquezas WHERE nome = 'Rock'), (SELECT id FROM fraquezas WHERE nome = 'Electric'),'Articuno'),

((SELECT id FROM categorias WHERE nome = 'Cocoon'), (SELECT id FROM fraquezas WHERE nome = 'Flying'), (SELECT id FROM fraquezas WHERE nome = 'Rock'), 'Metapod'),

((SELECT id FROM categorias WHERE nome = 'Worm'), (SELECT id FROM fraquezas WHERE nome = 'Rock'), (SELECT id FROM fraquezas WHERE nome = 'Flying'), 'Caterpie'),

((SELECT id FROM categorias WHERE nome = 'Shellfish'), (SELECT id FROM fraquezas WHERE nome = 'Eletric'), (SELECT id FROM fraquezas WHERE nome = 'Grass'), 'Blastoise'),

((SELECT id FROM categorias WHERE nome = 'Poison Bee'), (SELECT id FROM fraquezas WHERE nome = 'Flying'), (SELECT id FROM fraquezas WHERE nome = 'Rock'), 'Beedrill');


 SELECT * FROM categorias;
 SELECT * FROM fraquezas;
 SELECT * FROM pokemons;