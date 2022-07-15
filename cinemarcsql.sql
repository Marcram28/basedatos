drop database cinemarc;

create database if not exists cinemarc;

use cinemarc;

create table ACTOR(
	id int(11) auto_increment,
	nombre varchar(40) not null,
    apellidos varchar(40) not null,
    edad int(3),
    primary key (id)
);

create table DIRECTOR(
	id int(11) auto_increment,
	nombre varchar(40) not null,
    apellidos varchar(40) not null,
    edad int(3),
    primary key (id)
);

create table PERSONAJE(
	id int(11) auto_increment,
	nombre varchar(40) not null,
    apellidos varchar(40) not null,
    edad int(3),
    primary key (id)
);

create table PELICULA(
	id int(3) auto_increment,
	nombre varchar(40),
    fechaestreno date,
    descripcion varchar(200),
    director int(11),
    imagen varchar(3),
    video varchar(300),
    duracion int(3),
    puntuacion int(1),
    foreign key (director) references DIRECTOR(id) on delete cascade on update cascade,
    primary key (id)
);

create table PARTICIPA(
	idact int(11) not null,
    idper int(11) not null,
    idpel int(3) not null,
    foreign key (idact) references ACTOR(id) on delete cascade on update cascade,
    foreign key (idper) references PERSONAJE(id) on delete cascade on update cascade,
    foreign key (idpel) references PELICULA(id) on delete cascade on update cascade,
    primary key (idact,idpel)
);

insert into actor values (null,"Marc","Ramos Palanca",18);
insert into actor values (null,"Vin","Diesel",42);
insert into actor values (null,"Dwayne","Johnson",45);
insert into actor values (null,"Jason","Statham",40);
insert into actor values (null,"Michelle","Rodrigez",39);

insert into personaje values (null,"Jhon","Toretto",40);
insert into personaje values (null,"Jack","Sparrow",30);
insert into personaje values (null,"Captian","America",30);
insert into personaje values (null,"Iron","Man",40);
insert into personaje values (null,"Viuda","Negra",35);

insert into director values (null,"Stan","Lee",73);
insert into director values (null,"Antonio","Banderas",45);
insert into director values (null,"Pepe","Lopez",35);
insert into director values (null,"Marc","Ramos",18);

insert into pelicula values (null,"Moana",STR_TO_DATE('2016-02-11', '%Y-%m-%d'),"pelicula de accion y adrenalina viviendo la experiencia en el mar",1,"c1","https://www.youtube.com/embed/tmpTGztGJ8E",110,5);
insert into pelicula values (null,"Dirty Grandpa",STR_TO_DATE('2017-06-15', '%Y-%m-%d'),"pelicula de comedia",2,"c2","https://www.youtube.com/embed/L3CaAGnG4dA",110,3);
insert into pelicula values (null,"Ride Along 2",STR_TO_DATE('2021-03-28', '%Y-%m-%d'),"pelicula de accion y adrenalina viviendo la experiencia de coches super rapidos",3,"c3","https://www.youtube.com/embed/nEaKN5U9pK0",110,2);
insert into pelicula values (null,"The Boss",STR_TO_DATE('2020-04-13', '%Y-%m-%d'),"pelicula de comedia",4,"c4","https://www.youtube.com/embed/gh9kvqlmJLo",110,4);
insert into pelicula values (null,"Keanu",STR_TO_DATE('2015-01-02', '%Y-%m-%d'),"pelicula de gatos gangsters",2,"c5","https://www.youtube.com/embed/aGPTVZAUvPM",110,1);
insert into pelicula values (null,"Ice Age",STR_TO_DATE('2022-05-19', '%Y-%m-%d'),"pelicula de el pasado de los animales",4,"c6","https://www.youtube.com/embed/MpCzj2zuMXk",110,3);
insert into pelicula values (null,"Mike Dave",STR_TO_DATE('2014-02-18', '%Y-%m-%d'),"pelicula de comedia",1,"c7","https://www.youtube.com/embed/mpCGmaZgyBo",110,5);
insert into pelicula values (null,"Bad Moms",STR_TO_DATE('2022-02-07', '%Y-%m-%d'),"pelicula de comedia, grupo de madres",3,"c8","https://www.youtube.com/embed/jHa_pmuDYFo",110,4);
insert into pelicula values (null,"Barber Shop",STR_TO_DATE('2018-08-07', '%Y-%m-%d'),"pelicula que se desarrolla en una tienda de barberos",1,"c9","https://www.youtube.com/embed/d08vsTYdhlE",110,2);
insert into pelicula values (null,"Nine Lives",STR_TO_DATE('2010-02-15', '%Y-%m-%d'),"pelicula haciendo referencia a las multiples vidas de los gatos",2,"c10","https://www.youtube.com/embed/6j2jUJPF_dk",110,3);

insert into participa values (1,1,1);
insert into participa values (2,2,1);
insert into participa values (3,3,1);
insert into participa values (4,4,1);
insert into participa values (5,5,1);

insert into participa values (1,1,2);
insert into participa values (2,2,2);
insert into participa values (3,3,2);
insert into participa values (4,4,2);
insert into participa values (5,5,2);

insert into participa values (1,1,3);
insert into participa values (2,2,3);
insert into participa values (3,3,3);
insert into participa values (4,4,3);
insert into participa values (5,5,3);

insert into participa values (1,1,4);
insert into participa values (2,2,4);
insert into participa values (3,3,4);
insert into participa values (4,4,4);
insert into participa values (5,5,4);

insert into participa values (1,1,5);
insert into participa values (2,2,5);
insert into participa values (3,3,5);
insert into participa values (4,4,5);
insert into participa values (5,5,5);

insert into participa values (1,1,6);
insert into participa values (2,2,6);
insert into participa values (3,3,6);
insert into participa values (4,4,6);
insert into participa values (5,5,6);

insert into participa values (1,1,7);
insert into participa values (2,2,7);
insert into participa values (3,3,7);
insert into participa values (4,4,7);
insert into participa values (5,5,7);

insert into participa values (1,1,8);
insert into participa values (2,2,8);
insert into participa values (3,3,8);
insert into participa values (4,4,8);
insert into participa values (5,5,8);

insert into participa values (1,1,9);
insert into participa values (2,2,9);
insert into participa values (3,3,9);
insert into participa values (4,4,9);
insert into participa values (5,5,9);

insert into participa values (1,1,10);
insert into participa values (2,2,10);
insert into participa values (3,3,10);
insert into participa values (4,4,10);
insert into participa values (5,5,10);

create user "adminweb"@"localhost" identified by "1234";

grant all privileges on cinemarc.* to "adminweb"@"localhost";
