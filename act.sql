DROP database IF exists FUNDATEC;
CREATE database FUNDATEC;
USE FUNDATEC;

CREATE TABLE usuario(
id_usuario int primary key,
nome varchar(250) not null,
email varchar(50) not null,
senha int not null);


select * from fundatec.usuario;
use fundatec;


CREATE TABLE IF NOT EXISTS comentario(
id_comentario int primary key,
comentario varchar(255)not null,
data date not null,
id_usuario int,

CONSTRAINT fk_id_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

ALTER TABLE comentario
ADD dt_coment date not null;

ALTER TABLE comentario
DROP COLUMN dt_coment;

SELECT * FROM fundatec.comentario;

INSERT INTO usuario (id_usuario,nome,email,senha)
VALUE
(1,'Maria','m@gmail.com',1123),
(2,'Gabriel','g@gmail.com',1996),
(3,'Cata','c@gmail.com',2018),
(4,'Mada','ma@gmail.com',2020);

select * from fundatec.usuario;
