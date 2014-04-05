-- Criar tabelas

--USEI NVCHAR2 em vez de CHAR pelos exemplos que vi, mas nao sei


CREATE TABLE TipoDeServico (
	idTipoDeServico NUMBER PRIMARY KEY,
	frequencia NVARCHAR2(20) NOT NULL
);


CREATE TABLE Linhas(
	idLinhas INTEGER PRIMARY KEY AUTOINCREMENT,
	duracao NUMBER CHECK (duracao > 0),
	distancia NUMBER CHECK (distancia > 0)
);


CREATE TABLE Comboio(
	idComboio INTEGER PRIMARY KEY AUTOINCREMENT,
	modelo NVARCHAR2(20) NOT NULL,
	combustivel NVARCHAR2(20) NOT NULL,
	velocidade INTEGER,
	peso INTEGER
);




CREATE TABLE ComboioMercadoria (
	idComboio INTEGER REFERENCES Comboio(idComboio),
	idComboioM INTEGER PRIMARY KEY AUTOINCREMENT,
	cargaMAX NUMBER CHECK(cargaMAX > 0),
	idLinhas INTEGER REFERENCES Linhas(idLinhas)
);

CREATE TABLE ComboioPassageiros (
	idComboio INTEGER REFERENCES Comboio(idComboio),
	idComboioP INTEGER PRIMARY KEY AUTOINCREMENT,
	lotacao INTEGER,
	idTipoDeServico NUMBER REFERENCES TipoDeServico(idTipoDeServico),
	idLinhas INTEGER REFERENCES Linhas(idLinhas)
);


CREATE TABLE Carruagem(
	idCarruagem NUMBER PRIMARY KEY,
	idComboioP INTEGER REFERENCES ComboioPassageiros(idComboioP),
    capacidade NUMBER CHECK (capacidade > 0),
	tipoProdutos NVARCHAR2(20) NOT NULL,
	custo NUMBER CHECK (custo > 0)
);


CREATE TABLE Empresa(
	idEmpresa NUMBER PRIMARY KEY,
	idCarruagem NUMBER REFERENCES Carruagem(idCarruagem),
	tipoMercadorias NVARCHAR2(20) NOT NULL,
	nome NVARCHAR2(20) NOT NULL
);


CREATE TABLE TipoEstacao(
	idTipoEstacao NUMBER PRIMARY KEY,
	nome NVARCHAR2(20) NOT NULL
	-- recursos?
);


CREATE TABLE Estacao(
	idEstacao NUMBER PRIMARY KEY AUTOINCREMENT,
	idTipoEstacao NUMBER REFERENCES TipoEstacao(idTipoEstacao),
	idLinhas INTEGER REFERENCES Linhas(idLinhas),
	localidade NVARCHAR2(20) NOT NULL
);



--Cria-se pessoa e direcionase pelo id da pessoa ou nao se cria Pessoa e poe-se os elementos em clientes e funcionarios?
CREATE TABLE Pessoas(
	idPessoa NUMBER PRIMARY KEY,
	nome NVARCHAR2(20) NOT NULL,
	morada NVARCHAR2(20) NOT NULL,
	idade NUMBER NOT NULL,
);

CREATE TABLE ClasseClientes(
	idClasseClientes NUMBER PRIMARY KEY,
	desconto INTEGER,
);


CREATE TABLE Clientes(
	idPessoa NUMBER REFERENCES Pessoas(idPessoa),
	idClientes NUMBER PRIMARY KEY,
	idClasseClientes NUMBER REFERENCES ClasseClientes(idClasseClientes),
	tipoContrato NVARCHAR2(20) NOT NULL,
	profissao NVARCHAR2(20)
);


CREATE TABLE Horario(
	idHorario NUMBER PRIMARY KEY
	--horario
);

CREATE TABLE EspecialidadeF(
	idEspecialidadeF NUMBER PRIMARY KEY,
	nome NVARCHAR2(20) NOT NULL,
	renumeracao INTEGER
);



CREATE TABLE Funcionarios(
	idPessoa NUMBER REFERENCES Pessoas(idPessoa),
	idFuncionarios NUMBER PRIMARY KEY,
	area NVARCHAR2(20) NOT NULL,
	-- Como ponho para ter varias especialidades?
	idEspecialidadeF NUMBER REFERENCES EspecialidadeF(idEspecialidadeF)

);