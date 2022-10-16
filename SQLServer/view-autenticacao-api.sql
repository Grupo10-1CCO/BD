CREATE VIEW AutenticacaoApi
AS
	SELECT
		idMaquina,
		Usuario.email AS 'emailUsuario',
		senha,
		serialMaquina
	FROM Maquina
	INNER JOIN
		Empresa ON Maquina.fkEmpresa = Empresa.idEmpresa
	INNER JOIN
		Usuario ON Empresa.idEmpresa = Usuario.fkEmpresa;