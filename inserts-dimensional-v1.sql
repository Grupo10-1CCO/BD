USE SAMP;

INSERT INTO Empresa (nome, email, cnpj)
	VALUES ('C6 Bank', 'c6.contato.suporte@gmail.com', '1234567890123');
    
INSERT INTO Maquina (serialMaquina, fkEmpresa, nome)
	VALUES ('BR0204060810', 1, 'Servidor Araq 1'),
			('BR0204060812', 1, 'Servidor Araq 2');
		
INSERT INTO Medida (unidadeMedida)
	VALUES ('%'),
			('GB'),
            ('TB'),
            ('GHz'),
            ('MB');
            
INSERT INTO Metrica (capturaMin, capturaMax)
	VALUES (0.00, 8.00),
			(0.00, 16.00),
            (0.00, 32.00),
            (20.0, 70.0),
            (20.0, 75.0),
            (20.0, 80.0);
            
INSERT INTO Componente (nomeComponente, fkMaquina, fkMetrica, fkMedida)
	VALUES ('RAM', 1, 5, 1),
			('CPU', 1, NULL, 1),
            ('Disco', 1, 6, 1),
            ('Disco', 1, 4, 1),
            ('RAM', 2, 4, 1),
			('CPU', 2, NULL, 1),
            ('Disco', 2, 5, 1);
            
INSERT INTO Dados (momento, registro, fkComponente)
	VALUES ('2022-09-29 20:00:00', 65.00, 1),
			('2022-09-29 20:00:00', 68.00, 2),
            ('2022-09-29 20:00:00', 40.00, 3),
            ('2022-09-29 20:00:00', 35.00, 4),
            ('2022-09-29 20:00:00', 55.00, 5),
            ('2022-09-29 20:00:00', 63.00, 6),
            ('2022-09-29 20:00:00', 70.00, 7),
            ('2022-09-29 20:05:00', 70.00, 1),
            ('2022-09-29 20:05:00', 75.00, 2),
            ('2022-09-29 20:05:00', 35.00, 3),
            ('2022-09-29 20:05:00', 30.00, 4),
            ('2022-09-29 20:05:00', 65.00, 5),
            ('2022-09-29 20:05:00', 61.00, 6),
            ('2022-09-29 20:05:00', 58.00, 7);
            