CREATE DATABASE SAMP;

USE SAMP;

CREATE TABLE Empresa (
	idEmpresa INT PRIMARY KEY IDENTITY (1,1)
	, nome VARCHAR (100) NOT NULL
	, email VARCHAR (100) NOT NULL
	, cnpj CHAR (14) NOT NULL
);

CREATE TABLE Usuario (
	idUsuario INT PRIMARY KEY IDENTITY (1,1)
	, nome VARCHAR (100) NOT NULL
	, email VARCHAR (100) NOT NULL
	, senha VARCHAR (100) NOT NULL
	, cargo VARCHAR (100) NOT NULL
	, fkEmpresa INT NOT NULL
	, FOREIGN KEY (fkEmpresa) REFERENCES Empresa (idEmpresa)
);

CREATE TABLE Maquina (
	idMaquina INT PRIMARY KEY IDENTITY (1,1)
	, serialMaquina CHAR (12) NOT NULL
	, nome VARCHAR (100) NOT NULL
	, fkEmpresa INT NOT NULL
	, FOREIGN KEY (fkEmpresa) REFERENCES Empresa (idEmpresa)
);

CREATE TABLE Medida (
	idMedida INT PRIMARY KEY IDENTITY (1,1)
	, unidadeMedida VARCHAR (8) NOT NULL
);

CREATE TABLE Metrica (
	idMetrica INT PRIMARY KEY IDENTITY (1,1)
	, capturaMin FLOAT NOT NULL
	, capturaMax FLOAT NOT NULL
);

CREATE TABLE Componente (
	idComponente INT PRIMARY KEY IDENTITY (1,1)
	, nomeComponente VARCHAR (50) NOT NULL
	, fkMaquina INT
	, fkMedida INT
	, fkMetrica INT
	, FOREIGN KEY (fkMaquina) REFERENCES Maquina (idMaquina)
	, FOREIGN KEY (fkMedida) REFERENCES Medida (idMedida)
	, FOREIGN KEY (fkMetrica) REFERENCES Metrica (idMetrica)
);

CREATE TABLE Dados (
	idRegistro INT PRIMARY KEY IDENTITY (1,1)
	, registro FLOAT NOT NULL
	, momento DATETIME NOT NULL
	, fkComponente INT
	, FOREIGN KEY (fkComponente) REFERENCES Componente (idComponente)
);