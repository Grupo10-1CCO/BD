USE SAMP;

INSERT INTO Dados(fkComponente, registro, momento)
	VALUES (2, 50, '2022-09-29 21:15:00');
    
SELECT
					idRegistro,
                    fkComponente,
                    nomeComponente, 
                    registro, 
                    unidadeMedida, 
                    DATE_FORMAT(momento,'%d/%m/%Y %H:%i:%s') 
                AS momento_grafico FROM DadosServidor WHERE idMaquina = 1 ORDER BY idRegistro DESC LIMIT 1;

CREATE VIEW DadosServidor
AS
	SELECT
		idRegistro,
		idMaquina,
        fkComponente,
        nomeComponente,
        registro,
        momento,
        unidadeMedida
	FROM
		Maquina
	INNER JOIN
		Componente ON Maquina.idMaquina = Componente.fkMaquina
	INNER JOIN
		Medida ON Componente.fkMedida = Medida.idMedida
	INNER JOIN
		Dados ON Componente.idComponente = Dados.fkComponente;
        
CREATE VIEW MediaUsoComponente
AS
	SELECT
		idMaquina,
		fkComponente,
        nomeComponente,
		ROUND(AVG(registro), 2) AS 'MediaUso'
	FROM Maquina
	INNER JOIN
		Componente ON Maquina.idMaquina = Componente.fkMaquina
	INNER JOIN
		Medida ON Componente.fkMedida = Medida.idMedida
	INNER JOIN
		Dados ON Componente.idComponente = Dados.fkComponente
	GROUP BY fkComponente;
        
SELECT * FROM DadosServidor;

SELECT * FROM Usuario;

SELECT * FROM MediaUsoComponente;

DROP VIEW DadosServidor;

DROP VIEW MediaUsoComponente;

select fkComponente, nomeComponente, registro, unidadeMedida, DATE_FORMAT(momento,'%d/%m/%Y %H:%i:%s') as momento_grafico from DadosServidor where idMaquina = 1 order by idMaquina desc limit 15;