USE SAMP;

CREATE VIEW DadosServidor
AS
	SELECT
		idEmpresa,
		idRegistro,
		idMaquina,
        fkComponente,
        nomeComponente,
        registro,
        DATE_FORMAT(momento,'%d/%m/%Y %H:%i:%s') AS 'momento',
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
    
CREATE VIEW UsuarioEmpresa
AS
	SELECT
		idEmpresa,
		Empresa.nome AS 'nomeEmpresa',
		Empresa.email AS 'emailEmpresa',
		cnpj,
		idUsuario,
		Usuario.nome AS 'nomeUsuario',
		Usuario.email AS 'emailUsuario',
		senha,
		cargo
	FROM Empresa
	INNER JOIN
		Usuario ON Empresa.idEmpresa = Usuario.fkEmpresa;