-- Criar tabelas

--USEI NVCHAR2 em vez de CHAR pelos exemplos que vi, mas nao sei


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


/*CREATE TABLE Comboio(
	idComboio INTEGER PRIMARY KEY AUTOINCREMENT,
	modelo NVARCHAR2(20) NOT NULL,
	combustivel NVARCHAR2(20) NOT NULL,
	velocidade INTEGER,
	peso INTEGER
);*/


CREATE TABLE ComboioMercadoria (
	idComboioMercadoria INTEGER PRIMARY KEY,
	modelo NVARCHAR2(20) NOT NULL,
	combustivel NVARCHAR2(20) NOT NULL,
	velocidade INTEGER,
	peso INTEGER,
	cargaMAX NUMBER CHECK(cargaMAX > 0)
);

CREATE TABLE ComboioPassageiros (
	idComboioPassageiros INTEGER PRIMARY KEY,
	modelo NVARCHAR2(20) NOT NULL,
	combustivel NVARCHAR2(20) NOT NULL,
	velocidade INTEGER,
	peso INTEGER,
	lotacao INTEGER,
	idTipoDeServico NUMBER REFERENCES TipoDeServico(idTipoDeServico)
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
	tipoProdutos NVARCHAR2(20) NOT NULL
);


CREATE TABLE Empresa(
	idEmpresa NUMBER PRIMARY KEY,
	nrContrato NUMBER,
	tipoMercadorias NVARCHAR2(20) NOT NULL,
	nome NVARCHAR2(20) NOT NULL
);

CREATE TABLE Aluguer(
	idEmpresa NUMBER REFERENCES Empresa(idEmpresa),
	idCarruagem NUMBER REFERENCES Carruagem(idCarruagem),
	custo NUMBER,
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

--Cria-se pessoa e direcionase pelo id da pessoa ou nao se cria Pessoa e poe-se os elementos em clientes e funcionarios?
/*CREATE TABLE Pessoas(
	idPessoa NUMBER PRIMARY KEY,
	nome NVARCHAR2(20) NOT NULL,
	morada NVARCHAR2(20) NOT NULL,
	idade NUMBER NOT NULL,
);*/

CREATE TABLE Classe(
	idClasse NUMBER PRIMARY KEY,
	nome NVARCHAR2(20)
);

CREATE TABLE Clientes(
	idClientes NUMBER PRIMARY KEY,
	nome NVARCHAR2(20) NOT NULL,
	morada NVARCHAR2(20) NOT NULL,
	idade NUMBER NOT NULL,
	tipoContrato NVARCHAR2(20) NOT NULL,
	profissao NVARCHAR2(20),
	idLinha INTEGER REFERENCES Linha(idLinha)
);

CREATE TABLE ClasseClientes(
	idClasse NUMBER REFERENCES Classe(idClasse),
	idClientes NUMBER REFERENCES Clientes(idClientes),
	desconto INTEGER,
	PRIMARY KEY (idClasse, idClientes)
); 


CREATE TABLE Horario(
	idHorario NUMBER PRIMARY KEY
	--horario
);

CREATE TABLE Especialidade(
	idEspecialidade NUMBER PRIMARY KEY,
	nome NVARCHAR2(20) NOT NULL,
	renumeracao INTEGER
);

CREATE TABLE Funcionarios(
	--idPessoa NUMBER REFERENCES Pessoas(idPessoa),
	nome NVARCHAR2(20) NOT NULL,
	morada NVARCHAR2(20) NOT NULL,
	idade NUMBER NOT NULL,
	idFuncionarios NUMBER PRIMARY KEY,
	area NVARCHAR2(20) NOT NULL
);

CREATE TABLE TipoTrabalho(
	idFuncionarios NUMBER REFERENCES Funcionarios(idFuncionarios),
	idEspecialidade NUMBER REFERENCES Especialidade(idEspecialidade),
	tipoTrabalho NVARCHAR2(20),
	PRIMARY KEY (idFuncionarios, idEspecialidade)
);
