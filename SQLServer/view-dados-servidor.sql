CREATE VIEW DadosServidor
AS
	SELECT
		idEmpresa,
		idRegistro,
		idMaquina,
        fkComponente,
        nomeComponente,
        registro,
		(SELECT FORMAT (momento, 'dd/MM/yyyy hh:mm:ss ')) AS 'momento',
        unidadeMedida
	FROM
		Maquina
	INNER JOIN
		Empresa ON Maquina.fkEmpresa = Empresa.idEmpresa
	INNER JOIN
		Componente ON Maquina.idMaquina = Componente.fkMaquina
	INNER JOIN
		Medida ON Componente.fkMedida = Medida.idMedida
	INNER JOIN
		Dados ON Componente.idComponente = Dados.fkComponente;