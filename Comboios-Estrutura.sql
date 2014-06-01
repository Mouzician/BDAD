CREATE TABLE TipoDeServico (
	idTipoDeServico NUMBER PRIMARY KEY,
	nome NVARCHAR2(20) NOT NULL,
	frequencia NVARCHAR2(20) NOT NULL
);


CREATE TABLE Linha(
	nome NVARCHAR2(20) NOT NULL,
	idLinha INTEGER PRIMARY KEY AUTOINCREMENT,
	duracao NUMBER CHECK (duracao > 0),
	distancia NUMBER CHECK (distancia > 0)
);


CREATE TABLE Comboio(
	idComboio INTEGER PRIMARY KEY AUTOINCREMENT,
	modelo NVARCHAR2(20) NOT NULL,
	combustivel NVARCHAR2(20) NOT NULL,
	velocidade INTEGER,
	peso INTEGER,
	tipoComboio NVARCHAR2(20) NOT NULL
);


CREATE TABLE ComboioMercadoria (
	idComboioMercadoria INTEGER PRIMARY KEY,
	cargaMAX NUMBER CHECK(cargaMAX > 0),
	FOREIGN KEY(idComboioMercadoria) REFERENCES Comboio(idComboio)
		ON DELETE SET NULL
		ON UPDATE CASCADE
);

CREATE TABLE ComboioPassageiros (
	idComboioPassageiros INTEGER PRIMARY KEY,
	lotacao INTEGER,
	idTipoDeServico NUMBER REFERENCES TipoDeServico(idTipoDeServico),
	FOREIGN KEY(idComboioPassageiros) REFERENCES Comboio(idComboio)
		ON DELETE SET NULL
		ON UPDATE CASCADE
);

CREATE TABLE ComboioPassageirosLinha(
	idComboioPassageiros INTEGER REFERENCES ComboioPassageiros(idComboioPassageiros),
	idLinha INTEGER REFERENCES Linha(idLinha),
	PRIMARY KEY (idComboioPassageiros, idLinha)
);

CREATE TABLE ComboioMercadoriaLinha(
	idComboioMercadoria INTEGER REFERENCES ComboioMercadoria(idComboioMercadoria),
	idLinha INTEGER REFERENCES Linha(idLinha),
	PRIMARY KEY (idComboioMercadoria, idLinha)
);

CREATE TABLE Carruagem(
	idCarruagem NUMBER PRIMARY KEY,
	idComboioMercadoria INTEGER REFERENCES ComboioMercadoria(idComboioMercadoria),
    capacidade NUMBER CHECK (capacidade > 0),
    cargaActual NUMBER,
	tipoProdutos NVARCHAR2(20) NOT NULL
);

CREATE TABLE Empresa(
	idEmpresa NUMBER PRIMARY KEY,
	nrContrato NUMBER,
	tipoMercadorias NVARCHAR2(20) NOT NULL,
	escalao NUMBER,
	nome NVARCHAR2(20) NOT NULL
);

CREATE TABLE Aluguer(
	idEmpresa NUMBER REFERENCES Empresa(idEmpresa),
	idCarruagem NUMBER REFERENCES Carruagem(idCarruagem),
	carga NUMBER,
	volume NUMBER,
	custo NUMBER,
	data DATE,
	PRIMARY KEY (idEmpresa, idCarruagem)
);

CREATE TABLE TipoEstacao(
	idTipoEstacao NUMBER PRIMARY KEY,
	nome NVARCHAR2(20) NOT NULL,
	recursos NVARCHAR2(40)
);


CREATE TABLE Estacao(
	idEstacao INTEGER PRIMARY KEY AUTOINCREMENT,
	idTipoEstacao NUMBER REFERENCES TipoEstacao(idTipoEstacao),
	localidade NVARCHAR2(20) NOT NULL
);

CREATE TABLE Paragens(
	idLinha INTEGER REFERENCES Linha(idLinha),
	ordem NUMBER,
	idEstacao NUMBER REFERENCES Estacao(idEstacao),
	PRIMARY KEY (idLinha, ordem)
);

CREATE TABLE Pessoas(
	idPessoa NUMBER PRIMARY KEY,
	nome NVARCHAR2(20) NOT NULL,
	morada NVARCHAR2(20) NOT NULL,
	idade NUMBER NOT NULL,
	tipoPessoa NVARCHAR2(20) NOT NULL
);

CREATE TABLE Classe(
	idClasse NUMBER PRIMARY KEY,
	nome NVARCHAR2(20)
);

CREATE TABLE Clientes(
	idClientes NUMBER PRIMARY KEY,
	tipoContrato NVARCHAR2(20) NOT NULL,
	profissao NVARCHAR2(20),
	idLinha INTEGER REFERENCES Linha(idLinha),
	FOREIGN KEY(idClientes) REFERENCES Pessoas(idPessoa)
		ON DELETE SET NULL
		ON UPDATE CASCADE
);

CREATE TABLE ClasseClientes(
	idClasse NUMBER REFERENCES Classe(idClasse),
	idClientes NUMBER REFERENCES Clientes(idClientes),
	desconto INTEGER,
	PRIMARY KEY (idClasse, idClientes)
); 


CREATE TABLE Horario(
	idHorario NUMBER PRIMARY KEY
);

CREATE TABLE Especialidade(
	idEspecialidade NUMBER PRIMARY KEY,
	nome NVARCHAR2(20) NOT NULL
);

CREATE TABLE Funcionarios(
	idFuncionarios NUMBER PRIMARY KEY,
	area NVARCHAR2(20) NOT NULL,
	FOREIGN KEY(idFuncionarios) REFERENCES Pessoas(idPessoa)
		ON DELETE SET NULL
		ON UPDATE CASCADE
);

CREATE TABLE Contrato(
	idFuncionarios NUMBER REFERENCES Funcionarios(idFuncionarios),
	idEspecialidade NUMBER REFERENCES Especialidade(idEspecialidade),
	tipoTrabalho NVARCHAR2(20),
	remuneracao INTEGER,
	PRIMARY KEY (idFuncionarios, idEspecialidade)
);

--Trigger calcula o dado custo da tabela aluguer automaticamente, atraves dos dados carga, volume e escalao das tabelas empresa e aluguer
CREATE TRIGGER CALCULOCUSTO
AFTER INSERT
ON Aluguer
FOR EACH ROW
WHEN(New.custo isNULL)
BEGIN
UPDATE Aluguer SET
custo = ((SELECT escalao FROM Empresa WHERE idEmpresa = New.idEmpresa) * (New.carga + New.volume));
END;

--Adiciona o subsidio de refeicao a funcionarios que nao trabalhem na sua area de residencia
CREATE TRIGGER SUBSIDIOREFEICAO
AFTER INSERT
ON Contrato
FOR EACH ROW
BEGIN
UPDATE Contrato SET
remuneracao = remuneracao + 100
WHERE((SELECT morada FROM Funcionarios, Pessoas WHERE idFuncionarios = New.idFuncionarios AND idFuncionarios = idPessoa) != (SELECT area FROM Funcionarios WHERE idFuncionarios = New.idFuncionarios));
END;