CREATE DATABASE sprint1;

use sprint1;

create table tomadaiot (
id		int primary key,
umidade decimal(4,2),
temperatura decimal(4,2),
horário time,
dia date
);

insert into tomadaiot(id,umidade,temperatura,horário,dia)
values		(1,60,70,'12:00','2024-03-28'),
			(2,65,68,'14:00','2024-11-02'),
            (3,70,80,'10:00','2024-05-07');
            
select * from tomadaiot;
            
create table usuario (
id int primary key,
nome varchar(45),
email varchar(45),
senha varchar(45)
);

insert into usuario(id,nome,email,senha)
values		(1,'Gustavo','gustavo.bcruz@sptech.school','123456789gu'),
			(2,'Leonardo','leonardo.csantos@sptech.school','santosFc123'),
            (3,'Luiz Felipe','luiz.candido@sptech.school','1243568790candido');
            
select * from usuario;
