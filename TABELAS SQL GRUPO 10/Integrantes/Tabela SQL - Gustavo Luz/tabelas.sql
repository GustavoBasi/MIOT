-- criando o banco de dados sprint1
create database sprint1;
-- usar o banco de dados sprint1
use sprint1;
-- criação da tabela que contém informação dos sensores
create table infoSensor (
idSensor int,
nomeSensor varchar(45) not null);
-- inserir dados na tabela infoSensor
insert into infoSensor(idSensor, nomeSensor)
values 
(1, 'DHT11'),
(2, 'LM35'); 
-- exibir os dados da tabela infoSensor
select * from infosensor;
-- adicionar uma coluna que contem a função dos sensores
alter table infoSensor 
add column funcaoSensor varchar(20);
-- inserir dados na coluna funcaoSensor
update infoSensor
set funcaoSensor = 'umidade' where idSensor = 1;
update infoSensor
set funcaoSensor = 'temperatura' where idSensor = 2;
-- criar tabela usuarios
create table usuarios (
nome varchar(45) not null,
cpf char(11) not null,
email varchar (45)
);
-- inserir dados na tabela usuarios
insert into usuarios (nome, cpf, email)
values ('Mateus Barreto', '12345678901', 'mateus.barreto@miot.com'),
       ('Jonathan Pereira', '12345678902', 'jonathan.pereira@miot.com'),
       ('Rômulo Junior', '12345678903', 'romulo.junior@miot.com');
-- criação da tabela tomadas
create table tomadaInfo (
idTomada int primary key auto_increment not null,
tempTomada decimal(3,1) not null,
umiTomada char(2) not null);
-- inserir dados na tabela tomadaInfo
insert into tomadaInfo (tempTomada, umiTomada)
values ('50.5', '70'),
       ('60.0', '30'),
       ('45.8','40');
-- verificar dados tomadaInfo
-- verificar dados tomadaInfo
select * from tomadaInfo       