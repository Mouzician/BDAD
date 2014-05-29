SELECT nome FROM Empresa
WHERE idEmpresa NOT IN
(SELECT idEmpresa FROM Aluguer);

SELECT nome COUNT(*) FROM Carruagem
GROUP BY nrContrato;

SELECT AVG(duracao), AVG(distancia), SUM(distancia), MAX(distancia), MAX(duracao), MIN(duracao), MIN(distancia) FROM Linhas;

SELECT TipoDeServico.nome, ComboioPassageiros.idComboioPassageiros
FROM TipoDeServico, ComboioPassageiros
WHERE TipoDeServico.idTipoDeServico = ComboioPassageiros.idTipoDeServico; 