USE SAMP;

CREATE VIEW DadosServidor
AS
	SELECT
		idMaquina,
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
		AVG(registro) AS 'UsoMedio'
	FROM Maquina
	INNER JOIN
		Componente ON Maquina.idMaquina = Componente.fkMaquina
	INNER JOIN
		Medida ON Componente.fkMedida = Medida.idMedida
	INNER JOIN
		Dados ON Componente.idComponente = Dados.fkComponente
	GROUP BY fkComponente;
        
SELECT * FROM DadosServidor;

SELECT * FROM MediaUsoComponente;

DROP VIEW DadosServidor;

DROP VIEW MediaUsoComponente;

select registro, DATE_FORMAT(momento,'%d/%m/%Y %H:%i:%s') as momento_grafico from DadosServidor where idMaquina = 1 order by idMaquina desc limit 7;