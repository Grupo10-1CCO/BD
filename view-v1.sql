CREATE VIEW DadosServidor
AS
	SELECT
		idMaquina,
        nomeComponente,
        captura,
        momento,
        unidadeMedida
	FROM
		Maquina
	INNER JOIN
		Componente ON Maquina.idMaquina = Componente.fkMaquina
	INNER JOIN
		Medida ON Componente.fkMedida = Medida.idMedida
	INNER JOIN
		Registro ON Componente.idComponente = Registro.fkComponente;
        
CREATE VIEW MediaUsoComponente
AS
	SELECT
		idMaquina,
		fkComponente,
        nomeComponente,
		AVG(captura) AS 'UsoMedio'
	FROM Maquina
	INNER JOIN
		Componente ON Maquina.idMaquina = Componente.fkMaquina
	INNER JOIN
		Medida ON Componente.fkMedida = Medida.idMedida
	INNER JOIN
		Registro ON Componente.idComponente = Registro.fkComponente
	GROUP BY fkComponente;
        
SELECT * FROM DadosServidor;

SELECT * FROM MediaUsoComponente;

DROP VIEW DadosServidor;

DROP VIEW MediaUsoComponente;