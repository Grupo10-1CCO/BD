CREATE VIEW MediaUsoComponente
AS
	SELECT
		MAX(idMaquina) AS 'idMaquina',
		fkComponente,
        MAX(nomeComponente) AS 'nomeComponente',
		ROUND(AVG(registro), 2) AS 'MediaUso'
	FROM Maquina
	INNER JOIN
		Componente ON Maquina.idMaquina = Componente.fkMaquina
	INNER JOIN
		Medida ON Componente.fkMedida = Medida.idMedida
	INNER JOIN
		Dados ON Componente.idComponente = Dados.fkComponente
	GROUP BY fkComponente;