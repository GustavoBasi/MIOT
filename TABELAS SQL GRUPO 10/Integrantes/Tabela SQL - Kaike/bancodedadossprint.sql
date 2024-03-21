create database tomada_iot ; 
use tomada_iot;
-- Criando a tabela de cadastro do usuário 
Create table cadastro_usuário (
idusuario int auto_increment ,
Nome varchar (50) not null ,
senha  int unique ,
primary key (idusuario) )
auto_increment = 41 ;
-- Inserindo valores nela , lembrando que o id do usuário é primary key e a senha é única 
INSERT INTO cadastro_usuário (nome, senha)
VALUES 
('João Silva', '123456'),
('Maria Santos', '789012'),
('Pedro Oliveira', '345678'),
('Ana Costa', '901234'),
('Luiz Pereira', '567890'),
('Camila Souza', '234567'),
('Fernando Almeida', '890123'),
('Mariana Santos', '456789'),
('Ricardo Lima', '012345'),
('Aline Oliveira', '678901'),
('Bruno Martins', '456012'),
('Carla Silva', '890567'),
('Diego Rodrigues', '123789'),
('Juliana Ferreira', '901456'),
('Paulo Santos', '678234');
-- selecionar a tabela para conferir se está correta 
select*from cadastro_usuário ;
-- Criar tabela de vendas 
CREATE TABLE vendas (
    id_estado INT AUTO_INCREMENT PRIMARY KEY,
    estado VARCHAR(100),
    pedidos INT,
    quantidade_instalada INT
);
-- Inserir os valores na tabela vendas 
INSERT INTO vendas (estado, pedidos, quantidade_instalada) VALUES
('Acre', 100, 50),
('Alagoas', 150, 70),
('Amapá', 80, 40),
('Amazonas', 200, 90),
('Bahia', 300, 120),
('Ceará', 250, 110),
('Distrito Federal', 120, 60),
('Espírito Santo', 180, 80),
('Goiás', 220, 100),
('Maranhão', 170, 75),
('Mato Grosso', 200, 90),
('Mato Grosso do Sul', 190, 85),
('Minas Gerais', 350, 150),
('Pará', 230, 105),
('Paraíba', 160, 70),
('Paraná', 300, 130),
('Pernambuco', 280, 120),
('Piauí', 150, 65),
('Rio de Janeiro', 320, 140),
('Rio Grande do Norte', 170, 75),
('Rio Grande do Sul', 280, 120),
('Rondônia', 120, 55),
('Roraima', 80, 35),
('Santa Catarina', 250, 110),
('São Paulo', 400, 180),
('Sergipe', 100, 45),
('Tocantins', 110, 50);
-- Selecionar a tabela para conferir
select*from vendas ; 
-- Criar a tabela com a série das tomadas 
CREATE TABLE series_tomadas (
    id_serie INT AUTO_INCREMENT PRIMARY KEY,
    serie VARCHAR(7),
    situacao VARCHAR(10)
);
-- Inserindo 45 tomadas com séries e situações fictícias
INSERT INTO series_tomadas (serie, situacao) VALUES
('1234567', 'ativa'),
('9876543', 'inativa'),
('4561237', 'ativa'),
('7894561', 'ativa'),
('3216549', 'inativa'),
('6549873', 'ativa'),
('1357924', 'ativa'),
('2468013', 'inativa'),
('9876543', 'ativa'),
('1234567', 'inativa'),
('4561237', 'ativa'),
('7894561', 'ativa'),
('3216549', 'inativa'),
('6549873', 'ativa'),
('1357924', 'ativa'),
('2468013', 'inativa'),
('9876543', 'ativa'),
('1234567', 'inativa'),
('4561237', 'ativa'),
('7894561', 'ativa'),
('3216549', 'inativa'),
('6549873', 'ativa'),
('1357924', 'ativa'),
('2468013', 'inativa'),
('9876543', 'ativa'),
('1234567', 'inativa'),
('4561237', 'ativa'),
('7894561', 'ativa'),
('3216549', 'inativa'),
('6549873', 'ativa'),
('1357924', 'ativa'),
('2468013', 'inativa'),
('9876543', 'ativa'),
('1234567', 'inativa'),
('4561237', 'ativa'),
('7894561', 'ativa'),
('3216549', 'inativa'),
('6549873', 'ativa'),
('1357924', 'ativa'),
('2468013', 'inativa'),
('9876543', 'ativa'),
('1234567', 'inativa'),
('4561237', 'ativa'),
('7894561', 'ativa'),
('3216549', 'inativa');
-- Selecionar a tabela para conferir 
select * from series_tomadas;






