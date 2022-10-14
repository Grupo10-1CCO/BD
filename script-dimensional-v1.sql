/* 
	Script Grupo 03 | Projeto SAMP: Sistema de Análise e Monitoramento do Pix
	Integrantes:
    Alyfy | RA: 02221062
    Danylo | RA: 02221004
    Davi Guilherme | RA: 02221042
    Filipe Filipus | RA: 02221059
    João Barreto | RA: 02221024
    Leonardo Tresinari | RA: 02221027
*/

CREATE DATABASE ProjetoSamp;
USE ProjetoSamp;

CREATE TABLE Empresa (
    idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
    nomeEmpresa VARCHAR(100),
    emailEmpresa VARCHAR(100),
    cnpj CHAR(14)
) AUTO_INCREMENT = 1;


CREATE TABLE Usuario (
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    fkEmpresa INT,
    nome VARCHAR(100),
    email VARCHAR(100),
    senha VARCHAR(100),
    cargo VARCHAR(100),
    FOREIGN KEY (fkEmpresa) REFERENCES Empresa(idEmpresa)
) AUTO_INCREMENT = 1;

CREATE TABLE Memoria (
    idMemoria INT PRIMARY KEY AUTO_INCREMENT,
    qtdMemoria DOUBLE
) AUTO_INCREMENT = 1;

CREATE TABLE RegistroMemoria (
    idRegistroMemoria INT PRIMARY KEY AUTO_INCREMENT,
    fkMemoria INT,
    usoMemoria INT,
    momento DATETIME,
    FOREIGN KEY (fkMemoria) REFERENCES Memoria(idMemoria)
) AUTO_INCREMENT = 1;

CREATE TABLE Processador (
    idProcessador INT PRIMARY KEY AUTO_INCREMENT,
    modelo VARCHAR(45),
    qtdNucleosFisicos INT,
    qtdNucleosLogicos INT,
    frequenciaMaxima DOUBLE
) AUTO_INCREMENT = 1;

CREATE TABLE RegistroProcessador (
    idRegistroProcessador INT PRIMARY KEY AUTO_INCREMENT,
    fkProcessador INT,
    usoProcessador INT,
    frequenciaAtual DOUBLE,
    momento DATETIME,
    FOREIGN KEY (fkProcessador) REFERENCES Processador(idProcessador)
) AUTO_INCREMENT = 1;

CREATE TABLE Disco (
    idDisco INT PRIMARY KEY AUTO_INCREMENT,
    capacidade DOUBLE
) AUTO_INCREMENT = 1;

CREATE TABLE RegistroDisco (
    idRegistroDisco INT PRIMARY KEY AUTO_INCREMENT,
    fkDisco  INT,
    usoDisco INT,
    momento DATETIME,
    FOREIGN KEY (fkDisco) REFERENCES Disco(idDisco)
) AUTO_INCREMENT = 1;

CREATE TABLE Maquina (
    idMaquina CHAR(12) PRIMARY KEY,
    fkEmpresa INT,
    nome VARCHAR(45),
    fkMemoria INT,
    fkProcessador INT,
    fkDisco INT,
    FOREIGN KEY (fkEmpresa) REFERENCES Empresa(idEmpresa),
    FOREIGN KEY (fkMemoria) REFERENCES Memoria(idMemoria),
    FOREIGN KEY (fkProcessador) REFERENCES Processador(idProcessador),
    FOREIGN KEY (fkDisco) REFERENCES Disco(idDisco)
) AUTO_INCREMENT = 1;

insert into Empresa values(null, 'C6', 'c6@email.com.br','22222222222222');