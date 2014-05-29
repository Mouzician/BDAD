-- Inserts, inserts everywhere!!


-- Inserts na tabela TipoDeServico

INSERT INTO TipoDeServico (idTipoDeServico, nome, frequencia)
        VALUES (1, 'Alfa Pendular', 'Ocasional');
INSERT INTO TipoDeServico (idTipoDeServico, nome, frequencia)
        VALUES (2, 'Intercidades', 'Fim de Semana');
INSERT INTO TipoDeServico (idTipoDeServico, nome, frequencia)
        VALUES (3, 'Regional', 'Diário');

-- Inserts na tabela Linha

INSERT INTO Linha (nome, duracao, distancia) 
        VALUES ("Caide", 50, 40);
INSERT INTO Linha (nome, duracao, distancia) 
        VALUES ("Braga", 45, 34);
INSERT INTO Linha (nome, duracao, distancia) 
        VALUES ("Aveiro", 42, 30);

-- Inserts na tabela Comboio

INSERT INTO Comboio (modelo, combustivel, velocidade, peso) 
        VALUES ('CP-9000', 'Diesel-hidrostatico', 95, 15000);
INSERT INTO Comboio (modelo, combustivel, velocidade, peso) 
        VALUES ('MZ41P', 'Vapor', 110, 18000);
INSERT INTO Comboio (modelo, combustivel, velocidade, peso)
        VALUES ('FAMAS', 'Gas turbina-eletrico', 105, 20000);

-- Inserts na tabela ComboioMercadoria

INSERT INTO ComboioMercadoria (idComboioMercadoria, cargaMAX) 
        VALUES (1, 35000);
INSERT INTO ComboioMercadoria (idComboioMercadoria, cargaMAX) 
        VALUES (2, 40000);
INSERT INTO ComboioMercadoria (idComboioMercadoria, cargaMAX) 
        VALUES (3, 38000);

-- Inserts na tabela ComboioPassageiros

INSERT INTO ComboioPassageiros (idComboioPassageiros, lotacao, idTipoDeServico)
        VALUES (1, 550, 1);
INSERT INTO ComboioPassageiros (idComboioPassageiros, lotacao, idTipoDeServico)
        VALUES (2, 660, 2);
INSERT INTO ComboioPassageiros (idComboioPassageiros, lotacao, idTipoDeServico)
        VALUES (3, 624, 3);
        
-- Inserts na tabela ComboioPassageirosLinha

INSERT INTO ComboioPassageirosLinha (idComboioPassageiros, idLinha)
        VALUES (1, 2);
INSERT INTO ComboioPassageirosLinha (idComboioPassageiros, idLinha)
        VALUES (2, 2);
INSERT INTO ComboioPassageirosLinha (idComboioPassageiros, idLinha)
        VALUES (3, 1);
        
-- Inserts na tabela ComboioMercadoriaLinha

INSERT INTO ComboioMercadoriaLinha (idComboioMercadoria, idLinha)
        VALUES (1, 3);
INSERT INTO ComboioMercadoriaLinha (idComboioMercadoria, idLinha)
        VALUES (2, 2);
INSERT INTO ComboioMercadoriaLinha (idComboioMercadoria, idLinha)
        VALUES (3, 1);

-- Inserts na tabela Carruagem

INSERT INTO Carruagem (idCarruagem, idComboioMercadoria, capacidade, tipoProdutos)
        VALUES (1, 1, 4500, 'Madeira');
INSERT INTO Carruagem (idCarruagem, idComboioMercadoria, capacidade, tipoProdutos)
        VALUES (2, 2, 4000, 'Ferro');
INSERT INTO Carruagem (idCarruagem, idComboioMercadoria, capacidade, tipoProdutos)
        VALUES (3, 3, 3500, 'Metilamina');

-- Inserts na tabela Empresa

INSERT INTO Empresa (idEmpresa, nrContrato, tipoMercadorias, nome)
        VALUES (1, 23145, 'Metilamina', 'GreyMatter');
INSERT INTO Empresa (idEmpresa, nrContrato, tipoMercadorias, nome)
        VALUES (2, 4000, 'Madeira', 'GreenPeace');
INSERT INTO Empresa (idEmpresa, nrContrato, tipoMercadorias, nome)
        VALUES (3, 3500, 'Ferro', 'Microsoft');

-- Inserts na tabela Aluguer

INSERT INTO Aluguer (idEmpresa, idCarruagem, custo)
        VALUES (1, 3, 1000);
INSERT INTO Aluguer (idEmpresa, idCarruagem, custo)
        VALUES (2, 1, 400);
INSERT INTO Aluguer (idEmpresa, idCarruagem, custo)
        VALUES (3, 2, 650);

-- Inserts na tabela TipoEstacao

INSERT INTO TipoEstacao (idTipoEstacao, nome, recursos)
        VALUES (1, 'Apeadeiro', 'Venda');
INSERT INTO TipoEstacao (idTipoEstacao, nome, recursos)
        VALUES (2, 'Estacao Normal', 'Administrativos');
        
-- Inserts na tabela Estacao

INSERT INTO Estacao (idTipoEstacao, localidade)
        VALUES (2, 'Nine');
INSERT INTO Estacao (idTipoEstacao, localidade)
        VALUES (3, 'Porto Sao Bento');
INSERT INTO Estacao (idTipoEstacao, localidade)
        VALUES (1, 'Terronhas');
        
-- Inserts na tabela Paragens

INSERT INTO Paragens (ordem, idEstacao)
        VALUES (19, 1);
INSERT INTO Paragens (ordem, idEstacao)
        VALUES (1, 2);
INSERT INTO Paragens (ordem, idEstacao)
        VALUES (11, 3);
        
-- Inserts na tabela Pessoas

INSERT INTO Pessoas (idPessoa, nome, morada, idade)
        VALUES (1, 'Carolina Filipa da Silva Torres e Corte-Real', 'Avenida de Cima, 123', 25);
INSERT INTO Pessoas (idPessoa, nome, morada, idade)
        VALUES (2, 'Maria Gertrudes Gomes Teixeira', 'Avenida de Baixo, 321', 67);
INSERT INTO Pessoas (idPessoa, nome, morada, idade)
        VALUES (3, 'Julio Paulo da Sousa Ferreira', 'Rua D. Manuel III, 45', 54);

-- Inserts na tabela Classe

INSERT INTO Classe (idClasse, nome)
        VALUES (1, 'Idoso');
INSERT INTO Classe (idClasse, nome)
        VALUES (2, 'Crianca até 4 anos, inclusive');
INSERT INTO Classe (idClasse, nome)
        VALUES (3, 'Jovem');        
        
-- Inserts na tabela Clientes

INSERT INTO Clientes (idClientes, tipoContrato, profissao)
        VALUES (1, 'Estudante Sub-23', 'Estudante');
INSERT INTO Clientes (idClientes, tipoContrato, profissao)
        VALUES (2, 'Passe Social', 'Reformado');
INSERT INTO Clientes (idClientes, tipoContrato, profissao)
        VALUES (3, 'Passe Mensal', 'Sem profissao');
        
-- Inserts na tabela ClasseClientes

INSERT INTO ClasseClientes (idClasse, idClientes, desconto)
        VALUES (2, 3, 100);
INSERT INTO ClasseClientes (idClasse, idClientes, desconto)
        VALUES (3, 1, 30);
INSERT INTO ClasseClientes (idClasse, idClientes, desconto)
        VALUES (1, 2, 50);

-- Inserts na tabela Horario

INSERT INTO Horario (idHorario)
        VALUES (1);
INSERT INTO Horario (idHorario)
        VALUES (2);
INSERT INTO Horario (idHorario)
        VALUES (3);
        
-- Inserts na tabela Especialidade

INSERT INTO Especialidade (idEspecialidade, nome, renumeracao)
        VALUES (1, 'Maquinista', 1086);
INSERT INTO Especialidade (idEspecialidade, nome, renumeracao)
        VALUES (2, 'Operador de revisao e venda', 755);
INSERT INTO Especialidade (idEspecialidade, nome, renumeracao)
        VALUES (3, 'Assistente Comercial', 870);
        
-- Inserts na tabela Funcionarios

INSERT INTO Funcionarios (idFuncionarios, area)
        VALUES (1, 'Porto');
INSERT INTO Funcionarios (idFuncionarios, area)
        VALUES (2, 'Paredes');
INSERT INTO Funcionarios (idFuncionarios, area)
        VALUES (3, 'Esposende');
        
-- Inserts na tabela TipoTrabalho

INSERT INTO TipoTrabalho (idFuncionarios, idEspecialidade, tipoTrabalho)
        VALUES (1, 1, 'Ocasional');
INSERT INTO TipoTrabalho (idFuncionarios, idEspecialidade, tipoTrabalho)
        VALUES (2, 2, 'Tempo inteiro');
INSERT INTO TipoTrabalho (idFuncionarios, idEspecialidade, tipoTrabalho)
        VALUES (3, 3, 'Temporario');   
        
-------------------- DONE ----------------------
