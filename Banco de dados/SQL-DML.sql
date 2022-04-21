
USE MASTER;
GO

DROP DATABASE RangoChat;
GO

CREATE DATABASE RangoChat;
GO

USE RangoChat;
GO

CREATE TABLE Cliente (
	idCliente int NOT NULL PRIMARY KEY IDENTITY,
	nome varchar(100) NOT NULL,
	email varchar (50) NOT NULL,
	senha varchar (50) NOT NULL,
	telefone varchar (50) NOT NULL,
	endereco varchar (100) NOT NULL,
	cpf varchar(11) NOT NULL, 
);

CREATE TABLE Responsavel (
	idResponsavel int NOT NULL PRIMARY KEY IDENTITY,
	nome varchar(100) NOT NULL,
	email varchar (50) NOT NULL,
	telefone varchar (50) NOT NULL,
	endereco varchar (100) NOT NULL,
	cpf varchar(11) NOT NULL, 
);

exec sp_help Responsavel;

CREATE TABLE Restaurante (
	idRestaurante int NOT NULL PRIMARY KEY IDENTITY,
	idResponsavel int, 
	nome varchar(100) NOT NULL,
	email varchar (50) NOT NULL,
	senha varchar (50) NOT NULL,
	telefone varchar (50) NOT NULL,
	endereco varchar (100) NOT NULL,
	cnpj varchar(20) NOT NULL, 
	status bit NOT NULL,
	FOREIGN KEY (idResponsavel) REFERENCES Responsavel(idResponsavel)
);

exec sp_help Restaurante;

CREATE TABLE Mensagem (
	idMensagem int NOT NULL PRIMARY KEY IDENTITY,
	origem int,
	destino int, 
	conteudo text,
	data date,
	hora time,
	FOREIGN KEY (origem) REFERENCES Cliente(idCliente),
	FOREIGN KEY (destino) REFERENCES Restaurante(idRestaurante)
);

exec sp_help Mensagem;
