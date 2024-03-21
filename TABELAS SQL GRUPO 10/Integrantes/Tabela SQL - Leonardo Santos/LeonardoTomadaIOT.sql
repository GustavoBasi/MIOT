create database tomadaIOT;

drop database tomadaiot;

use tomadaIOT;

create table TomadaIOT(
idTomada int primary key auto_increment,
Temperatura decimal(4,2) not null,
Umidade decimal(4,2) not null,
DtHora datetime
);

insert into TomadaIOT(Temperatura, Umidade, DtHora)
Values (65, 30, '2024-03-15 15:00:00'),
	   (60, 40, '2024-03-20 15:36:03'),
       (70, 33, '2024-02-20 00:02:40');

select * from TomadaIOT;

create table Usuario (
idUser int primary key auto_increment,
Nome varchar(50),
CPF char(12),
dtNasc date,
Email varchar(40)
);

insert into Usuario(Nome, CPF, dtNasc, Email)
values ('Leonardo de Carvalho Santos', '12345678901', '2006-04-02', 'leonardosantos@email.com'),
('Gustavo Basi', '22342672921', '2005-12-22', 'gostavobasi@email.com'),
('Gustavo Frajola', '42445674941', '2005-05-03', 'frajola@email.com');

select * from Usuario;