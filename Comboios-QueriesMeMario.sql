SELECT nome FROM Empresa
WHERE idEmpresa NOT IN
(SELECT idEmpresa FROM Aluguer);

SELECT idEmpresa, COUNT(*) FROM Aluguer
GROUP BY idEmpresa;

SELECT AVG(duracao), AVG(distancia), SUM(distancia), MAX(distancia), MAX(duracao), MIN(duracao), MIN(distancia) FROM Linha;

SELECT TipoDeServico.nome, ComboioPassageiros.idComboioPassageiros
FROM TipoDeServico, ComboioPassageiros
WHERE TipoDeServico.idTipoDeServico = ComboioPassageiros.idTipoDeServico;

SELECT idCarruagem FROM Carruagem
WHERE cargaActual = 0
GROUP BY tipoProdutos;

SELECT idCarruagem FROM Carruagem
WHERE cargaActual = capacidade
GROUP BY tipoProdutos;

SELECT localidade FROM Estacao, TipoEstacao
WHERE Estacao.idTipoEstacao = TipoEstacao.idTipoEstacao
AND recursos LIKE '%Venda';

SELECT custo FROM Aluguer
WHERE idEmpresa = 1;
