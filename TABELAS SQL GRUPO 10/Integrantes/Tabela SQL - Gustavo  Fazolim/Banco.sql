create database sprint1;
use sprint1;
create table produto(
idproduto int primary key auto_increment,
temperatura decimal (4,2) not null,
umidade decimal (4,2)not null,
dia date not null, 
horario time  
);


insert into produto(temperatura,umidade,dia,horario)
values ('60.03','40.00','2024-05-15','12:00'),
('40.00','10.00','2024-05-25','1:00'),
('50.00','60.00','2024-07-18','5:00'),
('18.00','35.00','2024-12-25','14:30');
select * from produto;
truncate table produto;

create table cliente(
idcliente int primary key auto_increment,
nome varchar (45)not null,
emaill varchar (45)not null,
senha char (20) not null
);
insert into cliente(nome,emaill,senha)
values ('Marco','Marco euroformas@ig.com','Marco euroformas'),
('Gustavo','gustavo.fazolim@etec.sp.gov.br','gustavo2005'),
('Giovana','giovana.sptech.scholl','Ibbn136738');
select * from cliente;
truncate table cliente;







