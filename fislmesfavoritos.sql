create database filmesfavoritos;
use filmesfavoritos;

show tables;

create table comedia(
id_comedia int not null auto_increment,
nome varchar(200),
nota int(100),
primary key (id_comedia)
);

create table suspense(
id_suspense int not null auto_increment,
nome varchar(200),
nota int(100),
primary key (id_suspense)
);

create table terror(
id_terror int not null auto_increment,
nome varchar(200),
nota int(100),
primary key (id_terror)
);

create table filmes(
id_filmes int not null auto_increment,
nome varchar(200),
nota int(100),
id_comedia int,
id_suspense int,
id_terror int,
primary key (id_filmes),
foreign key (id_comedia) references comedia(id_comedia),
foreign key (id_suspense) references suspense(id_suspense),
foreign key (id_terror) references terror(id_terror)
);

insert into comedia(nome,nota) values ("Irmaos Cara De Pau","9");
insert into comedia(nome,nota) values ("Os Fantasmas se divertem","10");
insert into comedia(nome,nota) values ("Curtindo a Vida Adoidado","8");
insert into comedia(nome,nota) values ("Meus Vizinhos são um Terror","8");
insert into comedia(nome,nota) values ("Os Goonies","9");
insert into comedia(nome,nota) values ("As Bruxas de Eastwick","9");

insert into suspense(nome,nota) values ("Tubarão","9");
insert into suspense(nome,nota) values ("Psicose","9");
insert into suspense(nome,nota) values ("Os Pássaros","9");
insert into suspense(nome,nota) values ("O Iluminado","10");
insert into suspense(nome,nota) values ("Pânico","8");
insert into suspense(nome,nota) values ("Dormindo Com Inimigo","8");
insert into suspense(nome,nota) values ("O Silêncio dos Inocentes","10");
insert into suspense(nome,nota) values ("O Colecionador de Ossos ","9");
insert into suspense(nome,nota) values ("Jaula","10");
insert into suspense(nome,nota) values ("O Pálido Olho azul","9");
insert into suspense(nome,nota) values ("Durante a Tormenta","9");

insert into terror(nome,nota) values ("O Massacre da Serra Elétrica ","8");
insert into terror(nome,nota) values ("A Casa de Cera","8");
insert into terror(nome,nota) values ("A Bruxa","10");
insert into terror(nome,nota) values ("Atividade Paranormal","9");
insert into terror(nome,nota) values ("Um Clássico Filme de Terror","9");
insert into terror(nome,nota) values ("Annabelle","8");
insert into terror(nome,nota) values ("Halloween","9");
insert into terror(nome,nota) values ("Rua do Medo","9");

select * from comedia;
select * from suspense;
select * from terror;

select * from filmes;

INSERT INTO filmes (nome, nota, id_terror) 
SELECT nome, nota, id_terror
FROM terror;

INSERT INTO filmes (nome, nota, id_suspense) 
SELECT nome, nota, id_suspense
FROM suspense;

INSERT INTO filmes (nome, nota, id_comedia) 
SELECT nome, nota, id_comedia
FROM comedia;



