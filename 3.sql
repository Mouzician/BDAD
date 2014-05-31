--Quais as empresas da base de dados que não têm nenhuma carruagem alugada?
SELECT nome FROM Empresa
WHERE idEmpresa NOT IN
(SELECT idEmpresa FROM Aluguer);

--Qual o número de alugueres de cada empresa?
SELECT idEmpresa, COUNT(*) FROM Aluguer
GROUP BY idEmpresa;

--Qual a média de duração, da distancia, a distancia total e o máximo e minimo da duração e da distancia das linhas da base de dados?
SELECT AVG(duracao), AVG(distancia), SUM(distancia), MAX(distancia), MAX(duracao), MIN(duracao), MIN(distancia) FROM Linha;

--Qual o id dos comboios de Passageiros relativos a um certo tipo de serviço?
SELECT TipoDeServico.nome, ComboioPassageiros.idComboioPassageiros
FROM TipoDeServico, ComboioPassageiros
WHERE TipoDeServico.idTipoDeServico = ComboioPassageiros.idTipoDeServico
GROUP BY TipoDeServico.nome;

--Qual o nome dos clientes com um desconto acima da média
SELECT nome
FROM Pessoas, Clientes, ClasseClientes
WHERE Pessoas.idPessoa = Clientes.idClientes 
AND Clientes.idClientes = ClasseClientes.idClientes
AND ClasseClientes.desconto >(SELECT AVG(Desconto) FROM ClasseClientes);

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
