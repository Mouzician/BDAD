--1 -> Quais as empresas da base de dados que não têm nenhuma carruagem alugada?
.print 'Nome das empresas sem nenhum aluguer ativo';
SELECT nome FROM Empresa
WHERE idEmpresa NOT IN
(SELECT idEmpresa FROM Aluguer);---DONE---

.print '                                                                                                                               '

--2 ->Qual o número de alugueres de cada empresa?
.print 'Numero de alugueres de cada empresa';
SELECT idEmpresa, COUNT(*) FROM Aluguer
GROUP BY idEmpresa;---DONE---

.print '                                                                                                                               '

--3 ->Qual a média de duração, da distancia, a distancia total e o máximo e minimo da duração e da distancia das linhas da base de dados?
.print 'Linhas--Media duracao-Media distancia-Distancia total-Distancia maxima-Distancia minima-Duracao maxima-Duracao minima';
SELECT AVG(duracao), AVG(distancia), SUM(distancia), MAX(distancia), MIN(distancia), MAX(duracao), MIN(duracao) FROM Linha;---DONE---

.print '                                                                                                                               '

--4 >Qual o id dos comboios de Passageiros relativos a um certo tipo de serviço?
.print 'ID dos comboios ligados a um certo servico';
SELECT TipoDeServico.nome, ComboioPassageiros.idComboioPassageiros
FROM TipoDeServico, ComboioPassageiros
WHERE TipoDeServico.idTipoDeServico = ComboioPassageiros.idTipoDeServico
GROUP BY TipoDeServico.nome;---DONE---

.print '                                                                                                                               '

--5 ->Qual o nome dos clientes com um desconto acima da média
.print 'Clientes com um desconto acima da media';
SELECT nome
FROM Pessoas, Clientes, ClasseClientes
WHERE Pessoas.idPessoa = Clientes.idClientes 
AND Clientes.idClientes = ClasseClientes.idClientes
AND Pessoas.tipoPessoa = 'Cliente'
AND ClasseClientes.desconto >(SELECT AVG(Desconto) FROM ClasseClientes);--DONE--

.print '                                                                                                                               '

--6 - >Quais as localidades cujas paragens possuem recurso de venda?
.print 'Localidades cujas paragens possuem recurso de venda';
SELECT localidade FROM Estacao, TipoEstacao
WHERE Estacao.idTipoEstacao = TipoEstacao.idTipoEstacao
AND recursos LIKE '%Venda';--DONE--

.print '                                                                                                                               '

--7 ->Quais as empresas que realizaram alugueres ha menos de 30 dias
.print 'Quais as empresas que realizaram alugueres ha menos de 30 dias';
SELECT nome FROM Empresa, Aluguer
WHERE Aluguer.idEmpresa = Empresa.idEmpresa
AND (Julianday(Date('now')) - Julianday(data)) < 30;--DONE--

.print '                                                                                                                               '

--8 ->Lista de pares de empresas que vendem o mesmo tipo de produtos e pertencem a escaloes diferentes
.print 'Lista de pares de empresas que vendem o mesmo tipo de produtos e pertencem a escaloes diferentes';
SELECT p.nome, q.nome 
FROM Empresa p, Empresa q 
WHERE p.idEmpresa != q.idEmpresa AND p.escalao != q.escalao AND p.tipoMercadorias = q.tipoMercadorias;--DONE--

.print '                                                                                                                               '

--9 ->Quantidade livre para transporte de cada um dos diferentes tipos de produtos
.print 'Quantidade livre para transporte de cada um dos diferentes tipos de produtos';
SELECT SUM(capacidade - cargaActual), tipoProdutos FROM Carruagem
GROUP BY tipoProdutos;--DONE--

.print '                                                                                                                               '

--10 ->Vista com o total a pagar pelos alugueres por empresa
.print 'Vista com o total a pagar pelos alugueres por empresa';
CREATE VIEW Fatura AS
SELECT idEmpresa, SUM(custo) AS total
FROM Aluguer
GROUP BY idEmpresa;
SELECT nome || 'Lda', total
FROM Fatura, Empresa
WHERE Fatura.idEmpresa = Empresa.idEmpresa
GROUP BY nome || 'Lda';--DONE--

.print '                                                                                                                               '

--SELECT idCarruagem FROM Carruagem
--WHERE cargaActual = 0
--GROUP BY tipoProdutos;

--SELECT idCarruagem FROM Carruagem
--WHERE cargaActual = capacidade
--GROUP BY tipoProdutos;

--SELECT custo FROM Aluguer
--WHERE idEmpresa = 1;

--SELECT remuneracao FROM Contrato
--WHERE idFuncionarios = 3;
