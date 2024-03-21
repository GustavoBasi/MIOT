create database monitoramento_tomada;

use monitoramento_tomada;

create table tomada(
idTomada int primary key auto_increment,
temperatura decimal(4,2) not null,
umidade decimal(4,2) not null,
dia date not null,
hora time
);

create table usuario(
idUser int primary key auto_increment,
nome_completo varchar(50) not null,
cpf char(12) not null,
dtNasc date not null,
email varchar(40) not null,
FkIdTomada int
);

drop table usuario;


insert into tomada(temperatura, umidade, dia, hora)
values (30.06,26.09,'2024-05-21','15:00'),
		(21.06,31.09,'2024-05-21','20:00');
        
insert into usuario(nome_completo, cpf, dtNasc, email, FkIdTomada)
values ('Luiz Felipe Candido Costa','400289922-00','2006-05-17','luiz.costa@miot.com',null),
	   ('Gustavo Fazolim','400369810-38','2005-04-03','gustavos.fazolim@miot.com',null);
        
select * from tomada;

select * from usuario;
