USE SAMP;

INSERT INTO Empresa (nome, email, cnpj)
	VALUES ('C6 Bank', 'c6.contato.suporte@gmail.com', '1234567890123');
    
INSERT INTO Maquina (idMaquina, fkEmpresa, nome)
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
	VALUES ('RAM', 'BR0204060810', 5, 1),
			('CPU', 'BR0204060810', NULL, 1),
            ('Disco', 'BR0204060810', 6, 1),
            ('Disco', 'BR0204060810', 4, 1),
            ('RAM', 'BR0204060812', 4, 1),
			('CPU', 'BR0204060812', NULL, 1),
            ('Disco', 'BR0204060812', 5, 1);
            
INSERT INTO Registro (momento, captura, fkComponente)
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