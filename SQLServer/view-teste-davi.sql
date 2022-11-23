SELECT idMaquina, idRegistro, registro, nomeComponente, momento FROM DadosServidor WHERE nomeComponente IN (SELECT nomeComponente FROM Componente WHERE nomeComponente LIKE 'CPU%' OR nomeComponente LIKE 'Temperatura') ORDER BY idRegistro DESC;