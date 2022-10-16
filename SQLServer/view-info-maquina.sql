CREATE VIEW InfoMaquina
AS
	SELECT
		idMaquina,
		nomeComponente,
		tamanho
	FROM Maquina
	INNER JOIN
		Componente ON Maquina.idMaquina = Componente.fkMaquina;