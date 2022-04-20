drop database if exists proyecto;
create database proyecto;
use proyecto;

drop table if exists usuarios;
create table usuarios(
id_usuarios int auto_increment,
correo varchar(50),
nombre varchar(50),
apellido varchar(50),
contraseña varchar(15),
primary key (correo)
);

drop table if exists influencers;
create table influencers(
id_influencers int auto_increment,
nombre varchar(50),
primary key (nombre)
);

drop table if exists followers;
create table followers (
id_usuario varchar(50),
id_influencer varchar(50),
primary key (id_usuario,id_influencer),
foreign key (id_usuario) references usuarios(id_usuarios),
foreign key (id_influencer) references influencers(id_influencers)
);

-- plataformas 
drop table if exists networks;
create table networks (
id_plataforma int auto_increment,
tipo enum('Twitch','Twitter','Youtube'),
influencer varchar(50),
primary key (id_plataforma),
foreign key (influencers) references influencers(id_influencers)
);

drop table if exists posts;
create table posts (
id_post int auto_increment,
titulo varchar(50),
texto varchar(250),
influencer varchar(50),
primary key (id_post),
foreign key (influencer) references influencers(id_influencers)
);

insert into usuarios (correo, nombre, apellido, contraseña) values 
();

insert into influencers (nombre) values
();
 
-- Crear eventos (sorteo, torneos etc) fecha_inicio, fecha_fin, hora_inicio, hora_fin (tienen que tener plataforma y nombre), hacer post(fotos, texto, titulo)
