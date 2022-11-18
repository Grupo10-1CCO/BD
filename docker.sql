USE SAMP;

CREATE TABLE Maquina(
	idMaquina INT PRIMARY KEY AUTO_INCREMENT,
	serialMaquina CHAR(12),
    nome VARCHAR(100)
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
    tamanho DOUBLE,
    fkMaquina INT,
    fkMetrica INT,
    fkMedida INT,
    FOREIGN KEY (fkMaquina) REFERENCES Maquina (idMaquina),
    FOREIGN KEY (fkMetrica) REFERENCES Metrica (idMetrica),
    FOREIGN KEY (fkMedida) REFERENCES Medida (idMedida)
);

CREATE TABLE Dados(
	idRegistro INT PRIMARY KEY AUTO_INCREMENT,
    registro DOUBLE,
    momento DATETIME,
    fkComponente INT,
    FOREIGN KEY (fkComponente) REFERENCES Componente (idComponente)
);

INSERT INTO Medida (unidadeMedida) VALUES ('%');