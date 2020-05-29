CREATE DATABASE OFICINA;

USE OFICINA;

CREATE TABLE TELEFONE(
	idtelefone Integer primary key not null,
	numero Integer,
	tipo Char(1)
);

CREATE TABLE CLIENTE(
	idcliente Integer primary key not null, 
	nome Varchar2(30) not null, 
	sobrenome Varchar2(30) not null,
	sexo Char(1) not null,
	cpf Varchar2(15) unique not null
); 

CREATE TABLE CARRO(
	idcarro Integer primary key not null,
	placa Varchar2(9) unique not null, 
	cor Varchar2(20) not null, 
	marca Varchar2(25) not null
);

CREATE TABLE OCUPACAO(
	idocupacao Integer primary key not null,
	dataEntrada Date not null, 
	dataSaida Date
);

CREATE TABLE VAGA(
	idvaga Integer primary key not null,
	numerovaga Integer unique not null, 
	tamanho Float not null 
); 