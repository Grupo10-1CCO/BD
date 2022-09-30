CREATE DATABASE SAMP;

USE SAMP;

CREATE TABLE Empresa(
	idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (100),
    email VARCHAR (100),
    cnpj CHAR(14)
);

CREATE TABLE Usuario(
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (100),
    email VARCHAR (100),
    senha VARCHAR (100),
    cargo VARCHAR (100),
    fkEmpresa INT,
    FOREIGN KEY (fkEmpresa) REFERENCES Empresa(idEmpresa)
);

CREATE TABLE Maquina(
	idMaquina CHAR(12) PRIMARY KEY,
    nome VARCHAR(100),
    fkEmpresa INT,
    FOREIGN KEY (fkEmpresa) REFERENCES Empresa(idEmpresa)
);

CREATE TABLE Medida(
	idMedida INT PRIMARY KEY AUTO_INCREMENT,
    unidadeMedida VARCHAR (8)
);

CREATE TABLE Metrica(
	idMetrica INT PRIMARY KEY AUTO_INCREMENT,
    capturaMin DOUBLE,
    capturaMax DOUBLE
);

CREATE TABLE Componente(
	idComponente INT PRIMARY KEY AUTO_INCREMENT,
    nomeComponente VARCHAR (50),
    fkMaquina CHAR(12),
    fkMetrica INT,
    fkMedida INT,
    FOREIGN KEY (fkMaquina) REFERENCES Maquina (idMaquina),
    FOREIGN KEY (fkMetrica) REFERENCES Metrica (idMetrica),
    FOREIGN KEY (fkMedida) REFERENCES Medida (idMedida)
);

CREATE TABLE Registro(
	idRegistro INT PRIMARY KEY AUTO_INCREMENT,
    registro DOUBLE,
    momento DATETIME,
    fkComponente INT,
    FOREIGN KEY (fkComponente) REFERENCES Componente (idComponente)
);