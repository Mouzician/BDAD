-- Inserts, inserts everywhere!!


-- Inserts na tabela TipoDeServico

INSERT INTO TipoDeServico (idTipoDeServico, nome, frequencia)
        VALUES (1, 'Alfa Pendular', 'Ocasional');
INSERT INTO TipoDeServico (idTipoDeServico, nome, frequencia)
        VALUES (2, 'Regional', 'Diário');
INSERT INTO TipoDeServico (idTipoDeServico, nome, frequencia)
        VALUES (3, 'Intercidades', 'Fim de Semana');
INSERT INTO TipoDeServico (idTipoDeServico, nome, frequencia)
        VALUES (4, 'Urbano', 'Diário');
INSERT INTO TipoDeServico (idTipoDeServico, nome, frequencia)
        VALUES (5, 'Internacional', 'Mensal');
INSERT INTO TipoDeServico (idTipoDeServico, nome, frequencia)
        VALUES (6, 'Interregional', 'Semanal');


-- Inserts na tabela Linha

INSERT INTO Linha (nome, duracao, distancia) 
        VALUES ("Caide", 50, 40);
INSERT INTO Linha (nome, duracao, distancia) 
        VALUES ("Braga", 100, 47);
INSERT INTO Linha (nome, duracao, distancia) 
        VALUES ("Aveiro/Ovar", 120, 55);
INSERT INTO Linha (nome, duracao, distancia) 
        VALUES ("Cascais", 30, 24);
INSERT INTO Linha (nome, duracao, distancia) 
        VALUES ("Lisboa-Madrid", 680, 546);
INSERT INTO Linha (nome, duracao, distancia) 
        VALUES ("Guimaraes", 95, 42);
INSERT INTO Linha (nome, duracao, distancia) 
        VALUES ("Porto-Vigo", 255, 121);


-- Inserts na tabela Comboio

INSERT INTO Comboio (modelo, combustivel, velocidade, peso, tipoComboio) 
        VALUES ('CP-9000', 'Diesel-hidrostatico', 95, 15000, 'Mercadoria');
INSERT INTO Comboio (modelo, combustivel, velocidade, peso, tipoComboio) 
        VALUES ('MZ41P', 'Vapor', 110, 18000, 'Mercadoria');
INSERT INTO Comboio (modelo, combustivel, velocidade, peso, tipoComboio)
        VALUES ('FAMAS', 'Gas turbina-eletrico', 105, 20000, 'Passageiros');


-- Inserts na tabela ComboioMercadoria

INSERT INTO ComboioMercadoria (idComboioMercadoria, cargaMAX) 
        VALUES (1, 35000);
INSERT INTO ComboioMercadoria (idComboioMercadoria, cargaMAX) 
        VALUES (2, 40000);
INSERT INTO ComboioMercadoria (idComboioMercadoria, cargaMAX) 
        VALUES (3, 38000);


-- Inserts na tabela ComboioPassageiros

INSERT INTO ComboioPassageiros (idComboioPassageiros, lotacao, idTipoDeServico)
        VALUES (1, 700, 3);
INSERT INTO ComboioPassageiros (idComboioPassageiros, lotacao, idTipoDeServico)
        VALUES (2, 1000, 4);
INSERT INTO ComboioPassageiros (idComboioPassageiros, lotacao, idTipoDeServico)
        VALUES (3, 950, 1);
INSERT INTO ComboioPassageiros (idComboioPassageiros, lotacao, idTipoDeServico)
        VALUES (4, 870, 5);
INSERT INTO ComboioPassageiros (idComboioPassageiros, lotacao, idTipoDeServico)
        VALUES (5, 820, 6);
INSERT INTO ComboioPassageiros (idComboioPassageiros, lotacao, idTipoDeServico)
        VALUES (6, 900, 2);


        
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

INSERT INTO Carruagem (idCarruagem, idComboioMercadoria, capacidade, cargaActual, tipoProdutos)
        VALUES (1, 1, 4500, 3200, 'Madeira');
INSERT INTO Carruagem (idCarruagem, idComboioMercadoria, capacidade, cargaActual, tipoProdutos)
        VALUES (2, 2, 4000, 4000, 'Ferro');
INSERT INTO Carruagem (idCarruagem, idComboioMercadoria, capacidade, cargaActual, tipoProdutos)
        VALUES (3, 3, 3500, 0, 'Metilamina');


-- Inserts na tabela Empresa

INSERT INTO Empresa (idEmpresa, nrContrato, tipoMercadorias, escalao, nome)
        VALUES (1, 23145, 'Metilamina', 7, 'GreyMatter');
INSERT INTO Empresa (idEmpresa, nrContrato, tipoMercadorias, escalao, nome)
        VALUES (2, 4000, 'Madeira', 4, 'GreenPeace');
INSERT INTO Empresa (idEmpresa, nrContrato, tipoMercadorias, escalao, nome)
        VALUES (3, 3500, 'Ferro', 6, 'Microsoft');
INSERT INTO Empresa (idEmpresa, nrContrato, tipoMercadorias, escalao, nome)
        VALUES (4, 348, 'Vidro', 1, 'GNB');
INSERT INTO Empresa (idEmpresa, nrContrato, tipoMercadorias, escalao, nome)
        VALUES (5, 1123, 'Betao', 5, 'SkyForge');
INSERT INTO Empresa (idEmpresa, nrContrato, tipoMercadorias, escalao, nome)
        VALUES (6, 9321, 'Pedra', 2, 'Taccahe');
INSERT INTO Empresa (idEmpresa, nrContrato, tipoMercadorias, escalao, nome)
        VALUES (7, 9321, 'Areia', 3, 'CarGlass');


-- Inserts na tabela Aluguer

INSERT INTO Aluguer (idEmpresa, idCarruagem, carga, volume, custo, data)--
        VALUES (1, 1, 35, 66, NULL, '2014-09-03');                      --
INSERT INTO Aluguer (idEmpresa, idCarruagem, carga, volume, custo, data)--
        VALUES (1, 2, 40, 71, NULL, '2013-06-12');                      ---- Alugueres da empresa 1
INSERT INTO Aluguer (idEmpresa, idCarruagem, carga, volume, custo, data)--
        VALUES (1, 3, 50, 96, NULL, '2011-12-27');                      --
INSERT INTO Aluguer (idEmpresa, idCarruagem, carga, volume, custo, data)--
        VALUES (1, 4, 55, 87, NULL, '2012-12-21');                      --

INSERT INTO Aluguer (idEmpresa, idCarruagem, carga, volume, custo, data)--
        VALUES (2, 5, 90, 111, NULL, '2013-01-19');                     ---- Alugueres da empresa 2
INSERT INTO Aluguer (idEmpresa, idCarruagem, carga, volume, custo, data)--
        VALUES (2, 6, 115, 132, NULL, '2009-01-09');                    --

INSERT INTO Aluguer (idEmpresa, idCarruagem, carga, volume, custo, data)--
        VALUES (5, 7, 148, 270, NULL, '2012-03-25');                    ---- Alugueres da empresa 5
INSERT INTO Aluguer (idEmpresa, idCarruagem, carga, volume, custo, data)--
        VALUES (5, 8, 70, 210, NULL, '2007-02-07');                     --

INSERT INTO Aluguer (idEmpresa, idCarruagem, carga, volume, custo, data)--
        VALUES (6, 9, 355, 90, NULL, '2005-08-13');                     --
INSERT INTO Aluguer (idEmpresa, idCarruagem, carga, volume, custo, data)---- Alugueres da empresa 6
        VALUES (6, 10, 278, 85, NULL, '2013-05-18');                    --
INSERT INTO Aluguer (idEmpresa, idCarruagem, carga, volume, custo, data)--
        VALUES (6, 11, 240, 125, NULL, '2014-06-01');                   --


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

INSERT INTO Pessoas (idPessoa, nome, morada, idade, tipoPessoa)
        VALUES (1, 'Carolina Filipa da Silva Torres e Corte-Real', 'Porto', 25, 'Cliente');
INSERT INTO Pessoas (idPessoa, nome, morada, idade, tipoPessoa)
        VALUES (2, 'Maria Gertrudes Gomes Teixeira', 'Paredes', 63, 'Funcionario');
INSERT INTO Pessoas (idPessoa, nome, morada, idade, tipoPessoa)
        VALUES (3, 'Julio Paulo da Sousa Ferreira', 'Amadora', 54, 'Funcionario');
INSERT INTO Pessoas (idPessoa, nome, morada, idade, tipoPessoa)
        VALUES (4, 'Alberto Maria Carneiro Sotto-Mayor Miranda', 'Torres Vedras', 45, 'Cliente');
INSERT INTO Pessoas (idPessoa, nome, morada, idade, tipoPessoa)
        VALUES (5, 'Artur Daniel Magalhaes Castro', 'Coimbra', 34, 'Cliente');
INSERT INTO Pessoas (idPessoa, nome, morada, idade, tipoPessoa)
        VALUES (6, 'Renata Dias Pinto', 'Portalegre', 22, 'Funcionario');



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
        VALUES (2, 'Reformado MQP', 'Reformado');
INSERT INTO Clientes (idClientes, tipoContrato, profissao)
        VALUES (3, 'Passe Mensal', 'Sem profissao');
INSERT INTO Clientes (idClientes, tipoContrato, profissao)
        VALUES (4, 'Passe Combinado', 'Professor');
INSERT INTO Clientes (idClientes, tipoContrato, profissao)
        VALUES (5, 'Passe Social', 'Desempregado');

        
-- Inserts na tabela ClasseClientes

INSERT INTO ClasseClientes (idClasse, idClientes, desconto)
        VALUES (2, 3, 100);
INSERT INTO ClasseClientes (idClasse, idClientes, desconto)
        VALUES (3, 5, 60);
INSERT INTO ClasseClientes (idClasse, idClientes, desconto)
        VALUES (1, 2, 50);
INSERT INTO ClasseClientes (idClasse, idClientes, desconto)
        VALUES (2, 4, 0);
INSERT INTO ClasseClientes (idClasse, idClientes, desconto)
        VALUES (1, 3, 30);
INSERT INTO ClasseClientes (idClasse, idClientes, desconto)
        VALUES (3, 4, 80);
INSERT INTO ClasseClientes (idClasse, idClientes, desconto)
        VALUES (2, 1, 20);


-- Inserts na tabela Horario

INSERT INTO Horario (idHorario)
        VALUES (1);
INSERT INTO Horario (idHorario)
        VALUES (2);
INSERT INTO Horario (idHorario)
        VALUES (3);

        
-- Inserts na tabela Especialidade

INSERT INTO Especialidade (idEspecialidade, nome)
        VALUES (1, 'Maquinista');
INSERT INTO Especialidade (idEspecialidade, nome)
        VALUES (2, 'Operador de revisao e venda');
INSERT INTO Especialidade (idEspecialidade, nome)
        VALUES (3, 'Assistente Comercial');
INSERT INTO Especialidade (idEspecialidade, nome)
        VALUES (4, 'Promotor de assistencia fiscal');

        
-- Inserts na tabela Funcionarios

INSERT INTO Funcionarios (idFuncionarios, area)
        VALUES (1, 'Porto');
INSERT INTO Funcionarios (idFuncionarios, area)
        VALUES (2, 'Paredes');
INSERT INTO Funcionarios (idFuncionarios, area)
        VALUES (3, 'Esposende');

        
-- Inserts na tabela TipoTrabalho

INSERT INTO Contrato (idFuncionarios, idEspecialidade, tipoTrabalho, remuneracao)
        VALUES (1, 1, 'Ocasional', 670);
INSERT INTO Contrato (idFuncionarios, idEspecialidade, tipoTrabalho, remuneracao)
        VALUES (2, 2, 'Tempo inteiro', 890);
INSERT INTO Contrato (idFuncionarios, idEspecialidade, tipoTrabalho, remuneracao)
        VALUES (3, 3, 'Temporario', 3240); 

        
-------------------- DONE ----------------------
