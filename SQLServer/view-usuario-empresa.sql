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