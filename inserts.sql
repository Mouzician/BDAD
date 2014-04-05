-- Inserts, inserts everywhere!!


-- Inserts na tabela TipoDeServico

INSERT INTO TipoDeServico (idTipoDeServico, frequencia) 
        VALUES (1, 'Alfa Pendular');
INSERT INTO TipoDeServico (idTipoDeServico, frequencia) 
        VALUES (2, 'Intercidades');
INSERT INTO TipoDeServico (idTipoDeServico, frequencia) 
        VALUES (3, 'Regional');

-- Inserts na tabela Linhas

INSERT INTO Linhas (idLinhas, duracao, distancia) 
        VALUES (1, 50, 40);
INSERT INTO Linhas (idLinhas, duracao, distancia) 
        VALUES (2, 45, 34);
INSERT INTO Linhas (idLinhas, duracao, distancia)
        VALUES (3, 42, 30);

-- Inserts na tabela Comboio

INSERT INTO Comboio (idComboio, modelo, combustivel, velocidade, peso) 
        VALUES (1, 'CP-9000', 'Diesel-hidrostatico', 95, 15000);
INSERT INTO Comboio (idComboio, modelo, combustivel, velocidade, peso) 
        VALUES (2, 'MZ41P', 'Vapor', 110, 18000);
INSERT INTO Comboio (idComboio, modelo, combustivel, velocidade, peso)
        VALUES (3, 'FAMAS', 'Gas turbina-eletrico', 105, 20000);

-- Inserts na tabela ComboioMercadoria

INSERT INTO ComboioMercadoria (idComboio, idComboioM, cargaMAX, idLinhas) 
        VALUES (1, 1, 30000, 1);
INSERT INTO ComboioMercadoria (idComboio, idComboioM, cargaMAX, idLinhas) 
        VALUES (2, 2, 35000, 2);
INSERT INTO ComboioMercadoria (idComboio, idComboioM, cargaMAX, idLinhas)
        VALUES (3, 3, 33000, 3);

-- Inserts na tabela ComboioPassageiros

INSERT INTO ComboioPassageiros (idComboio, idComboioP, lotacao, idTipoDeServico, idLinhas)
        VALUES (1, 1, 550, 1, 1);
INSERT INTO ComboioPassageiros (idComboio, idComboioP, lotacao, idTipoDeServico, idLinhas)
        VALUES (2, 2, 660, 2, 2);
INSERT INTO ComboioPassageiros (idComboio, idComboioP, lotacao, idTipoDeServico, idLinhas)
        VALUES (3, 3, 624, 3, 3);

-- Inserts na tabela Carruagem

INSERT INTO Carruagem (idComboio, idComboioP, lotacao, idTipoDeServico, idLinhas)
        VALUES (1, 1, 550, 1, 1);
INSERT INTO Carruagem (idComboio, idComboioP, lotacao, idTipoDeServico, idLinhas)
        VALUES (2, 2, 660, 2, 2);
INSERT INTO Carruagem (idComboio, idComboioP, lotacao, idTipoDeServico, idLinhas)
        VALUES (3, 3, 624, 3, 3);
        

----------------- STAND BY ----------------------
