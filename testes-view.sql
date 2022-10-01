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

USE ProjetoSamp;

INSERT INTO Memoria (qtdMemoria)
	VALUES (8.00);
    
INSERT INTO Memoria (qtdMemoria)
	VALUES (12.00);
    
INSERT INTO RegistroMemoria (fkMemoria, usoMemoria, momento)
	VALUES (1, 30, '2022-09-25 22:30:00'),
			(1, 32, '2022-09-25 22:30:05'),
            (1, 35, '2022-09-25 22:30:10'),
            (1, 32, '2022-09-25 22:30:15'),
            (1, 27, '2022-09-25 22:30:20'),
            (1, 33, '2022-09-25 22:30:25'),
            (1, 39, '2022-09-25 22:30:30'),
            (1, 47, '2022-09-25 22:30:35'),
            (1, 52, '2022-09-25 22:30:40');
            
INSERT INTO RegistroMemoria (fkMemoria, usoMemoria, momento)
	VALUES (2, 60, '2022-09-25 22:30:00'),
			(2, 62, '2022-09-25 22:30:05'),
            (2, 65, '2022-09-25 22:30:10'),
            (2, 61, '2022-09-25 22:30:15'),
            (2, 67, '2022-09-25 22:30:20'),
            (2, 63, '2022-09-25 22:30:25'),
            (2, 69, '2022-09-25 22:30:30'),
            (2, 67, '2022-09-25 22:30:35'),
            (2, 72, '2022-09-25 22:30:40');
            
INSERT INTO Processador (modelo, qtdNucleosFisicos, qtdNucleosLogicos, frequenciaMaxima)
	VALUES ('Intel I3 7100', 2, 4, 3700.00);
    
INSERT INTO Processador (modelo, qtdNucleosFisicos, qtdNucleosLogicos, frequenciaMaxima)
	VALUES ('Intel I5 6500', 4, 2, 3900.00);
    
INSERT INTO RegistroProcessador (fkProcessador, usoProcessador, frequenciaAtual, momento)
	VALUES (1, 65, 2800.00, '2022-09-25 22:30:00'),
			(1, 62, 2800.00, '2022-09-25 22:30:05'),
			(1, 68, 2800.00, '2022-09-25 22:30:10'),
			(1, 73, 2900.00, '2022-09-25 22:30:15'),
			(1, 70, 2900.00, '2022-09-25 22:30:20'),
			(1, 83, 2900.00, '2022-09-25 22:30:25'),
			(1, 89, 3200.00, '2022-09-25 22:30:30'),
			(1, 93, 3200.00, '2022-09-25 22:30:35'),
			(1, 91, 3200.00, '2022-09-25 22:30:40');
            
INSERT INTO RegistroProcessador (fkProcessador, usoProcessador, frequenciaAtual, momento)
	VALUES (2, 35, 3200.00, '2022-09-25 22:30:00'),
			(2, 32, 3200.00, '2022-09-25 22:30:05'),
			(2, 38, 3200.00, '2022-09-25 22:30:10'),
			(2, 43, 3200.00, '2022-09-25 22:30:15'),
			(2, 40, 3200.00, '2022-09-25 22:30:20'),
			(2, 53, 3200.00, '2022-09-25 22:30:25'),
			(2, 59, 3500.00, '2022-09-25 22:30:30'),
			(2, 69, 3500.00, '2022-09-25 22:30:35'),
			(2, 71, 3500.00, '2022-09-25 22:30:40');
            
INSERT INTO Disco (capacidade)
	VALUES (1000.00);
    
INSERT INTO Disco (capacidade)
	VALUES (1500.00);

INSERT INTO RegistroDisco (fkDisco, usoDisco, momento)
	VALUES (1, 75, '2022-09-25 22:30:00'),
			(1, 75, '2022-09-25 22:30:05'),
			(1, 75, '2022-09-25 22:30:10'),
			(1, 80, '2022-09-25 22:30:15'),
			(1, 80, '2022-09-25 22:30:20'),
			(1, 80, '2022-09-25 22:30:25'),
			(1, 80, '2022-09-25 22:30:30'),
			(1, 81, '2022-09-25 22:30:35'),
			(1, 81, '2022-09-25 22:30:40');
            
INSERT INTO RegistroDisco (fkDisco, usoDisco, momento)
	VALUES (2, 55, '2022-09-25 22:30:00'),
			(2, 55, '2022-09-25 22:30:05'),
			(2, 55, '2022-09-25 22:30:10'),
			(2, 60, '2022-09-25 22:30:15'),
			(2, 60, '2022-09-25 22:30:20'),
			(2, 60, '2022-09-25 22:30:25'),
			(2, 60, '2022-09-25 22:30:30'),
			(2, 61, '2022-09-25 22:30:35'),
			(2, 61, '2022-09-25 22:30:40');
			

INSERT INTO Maquina (idMaquina, fkEmpresa, nome, fkMemoria, fkProcessador, fkDisco)
	VALUES ('BR0204060810', 1, 'Data Base 01', 1, 1, 1);
    
INSERT INTO Maquina (idMaquina, fkEmpresa, nome, fkMemoria, fkProcessador, fkDisco)
	VALUES ('BR0204060812', 1, 'Data Base 02', 2, 2, 2);
    
CREATE VIEW DadosMaquina
AS
	SELECT
		idMaquina,
        usoMemoria,
        usoProcessador,
        usoDisco,
        RegistroMemoria.momento
	FROM
		Maquina
	INNER JOIN
		Memoria ON Maquina.fkMemoria = Memoria.idMemoria
	INNER JOIN
        Processador ON Maquina.fkProcessador = Processador.idProcessador
	INNER JOIN
        Disco ON Maquina.fkDisco = Disco.idDisco
	INNER JOIN
		RegistroMemoria ON Memoria.idMemoria = RegistroMemoria.fkMemoria
	INNER JOIN
		RegistroProcessador ON Processador.idProcessador = RegistroProcessador.fkProcessador
	INNER JOIN
		RegistroDisco ON Disco.idDisco = RegistroDisco.fkDisco
	WHERE
		RegistroDisco.idRegistroDisco = RegistroMemoria.idRegistroMemoria
			AND
		RegistroProcessador.idRegistroProcessador = RegistroDisco.idRegistroDisco;
	
select * from DadosMaquina;