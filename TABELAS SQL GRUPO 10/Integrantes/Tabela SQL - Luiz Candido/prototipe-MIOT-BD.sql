create database MIOT;
use MIOT;

create table Usuario(
	idUsuario int Primary key auto_increment,
    nomeUsuario varchar(45) not null,
    Senha varchar(45) not null,
    Email varchar(45) unique not null
    );

create table Tomada(
	idTomada int Primary key auto_increment,
    nomeTomada varchar(45),
    localTomada varchar(45)
    );
    
create table Dado(
	Temperatura decimal(3,1) not null,
    Umidade decimal(3,1) not null,
    Hora time not null,
    dataDoDado date not null
    );
    
insert into Usuario(nomeUsuario, Senha, Email)
values	("Lucas Carvalho","lucaslucas","lucas@hotmail.com"),
		("Albert Nauan","#Gf123456678901","albert.nauan@sptech.school"),
		("Fernando Moura","senha1234","fernando.moura@etec.sp.gov.br"),
		("José Robert0","1235","robertao@gmail.com"),
		("Enzo Bulgareli","esqueciasenha","email@hotmail.com"),
		("João Pedro","#Gf98765432110","joao.pedro@sptech.school"),
		("João Pedro","lembraASenha","joao.pedro@gmail.com");

insert into Tomada(nomeTomada, localTomada)
values	("Tomada Da Geladeira","Cozinha"),
		(null,"Sala 1"),
		("Tomada Do Computador","Quarto"),
		("Tomada Da Geladeira","Mesanino"),
		("Tomada Da Ar-condicionado","Quarto"),
		(null,null),
        ("Torneira Eletrica","Cozinha");
        
insert into Dado(Temperatura,Umidade,Hora,dataDoDado)
values      (70,60,'12:00','2024-03-28'),
			(68,65,'14:00','2024-11-02'),
            (80,70,'10:00','2024-05-07'),
            (75,55,'09:00','2024-02-11'),
			(67,56,'11:00','2024-09-12'),
            (90,65,'08:00','2024-04-22'),
            (85,59,'15:00','2024-08-06');
            
select * from Usuario;
select * from Tomada;
select * from Dado;