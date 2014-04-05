CREATE TABLE Comboio (
	idComboio NUMBER PRIMARY KEY,
	modelo VARCHAR(20),
	combustivel VARCHAR(10),
	velocidade NUMBER,
	peso NUMBER;
	)

CREATE TABLE Mercadoria(
	idMercadoria NUMBER PRIMARY KEY,
	cargaMaxima NUMBER;
)

CREATE TABLE TipoDeServico(
	idTipoDeServico NUMBER PRIMARY KEY,
	nome VARCHAR(20),
	frequencia VARCHAR(10);
)