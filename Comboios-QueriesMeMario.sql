SELECT nome FROM Empresa
WHERE idEmpresa NOT IN
(SELECT idEmpresa FROM Aluguer);

SELECT idEmpresa, COUNT(*) FROM Aluguer
GROUP BY idEmpresa;

SELECT AVG(duracao), AVG(distancia), SUM(distancia), MAX(distancia), MAX(duracao), MIN(duracao), MIN(distancia) FROM Linha;

SELECT TipoDeServico.nome, ComboioPassageiros.idComboioPassageiros
FROM TipoDeServico, ComboioPassageiros
WHERE TipoDeServico.idTipoDeServico = ComboioPassageiros.idTipoDeServico; 