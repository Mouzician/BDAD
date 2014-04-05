-- Criar tabelas

CREATE TABLE ComboioMercadoria (
idComboioM INTEGER PRIMARY KEY AUTOINCREMENT,
modelo NVARCHAR2(20) NOT NULL,
combustivel NVARCHAR2(20) NOT NULL,
velocidade INTEGER PRIMARY KEY,
peso INTEGER PRIMARY KEY,
cargaMAX INTEGER PRIMARY KEY,
idLinhas INTEGER PRIMARY KEY REFERENCES Linhas(idLinhas)
);

CREATE TABLE ComboioPassageiros (
idComboioP INTEGER PRIMARY KEY AUTOINCREMENT,
modelo NVARCHAR2(20) NOT NULL,
combustivel NVARCHAR2(20) NOT NULL,
velocidade INTEGER PRIMARY KEY,
peso INTEGER PRIMARY KEY,
lotacao INTEGER PRIMARY KEY,
idTipoDeServico NUMBER REFERENCES TipoDeServico(idTipoDeServico),
idLinhas INTEGER PRIMARY KEY REFERENCES Linhas(idLinhas)
);


CREATE TABLE TipoDeServico (
	idTipoDeServico NUMBER PRIMARY KEY,
	frequencia NVARCHAR2(20) NOT NULL
);


CREATE TABLE Linhas(
	idLinhas INTEGER PRIMARY KEY AUTOINCREMENT,
	duracao NUMBER CHECK (duracao > 0),
	distancia NUMBER CHECK (distancia > 0)
);


CREATE TABLE Carruagem(
	idCarruagem NUMBER PRIMARY KEY,
	idComboioP INTEGER PRIMARY KEY REFERENCES ComboioPassageiros(idComboioP),
    capacidade NUMBER CHECK (capacidade > 0),
	tipoProdutos NVARCHAR2(20) NOT NULL,
	custo NUMBER CHECK (custo > 0)
);


CREATE TABLE Empresa(
	idEmpresa NUMBER PRIMARY KEY,
	idCarruagem NUMBER PRIMARY KEY REFERENCES Carruagem(idCarruagem),
	tipoMercadorias NVARCHAR2(20) NOT NULL,
	nome NVARCHAR2(20) NOT NULL
);


CREATE TABLE Estacao(
	idEstacao NUMBER PRIMARY KEY AUTOINCREMENT,
	idTipoEstacao NUMBER PRIMARY KEY REFERENCES TipoEstacao(idTipoEstacao),
	idLinhas INTEGER PRIMARY KEY REFERENCES Linhas(idLinhas),
	localidade NVARCHAR2(20) NOT NULL,
);

CREATE TABLE TipoEstacao(
	idTipoEstacao NUMBER PRIMARY KEY,
	nome NVARCHAR2(20) NOT NULL
	-- recursos?
);