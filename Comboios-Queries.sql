SELECT nome FROM Carruagem
WHERE idCarruagem NOT IN
(SELECT idCarruagem FROM Aluguer);

SELECT TipoDeServico.nome, ComboioPassageiros.idComboioPassageiros
FROM TipoDeServico, ComboioPassageiros
WHERE TipoDeServico.idTipoDeServico = ComboioPassageiros.idTipoDeServico; 