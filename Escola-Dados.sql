-- Apaga os registos das tabelas
DELETE FROM Cidade;
DELETE FROM Localidade;
DELETE FROM EstadoCivil;
DELETE FROM Pessoa;
DELETE FROM Aluno;
DELETE FROM Instrutor;
DELETE FROM Aula;
DELETE FROM Teórica;
DELETE FROM Prática;
DELETE FROM TipoVeículo;
DELETE FROM Modelo;
DELETE FROM Marca;
DELETE FROM Veículo;
DELETE FROM AlunoAula;
DELETE FROM InstrutorTipoVeículo;

PRAGMA foreign_keys = ON;

-- Inserção de registos na tabela Cidade
INSERT INTO Cidade (idCidade, nome) VALUES (1,'Porto');
INSERT INTO Cidade (idCidade, nome) VALUES (2,'Matosinhos');
INSERT INTO Cidade (idCidade, nome) VALUES (3,'Vila do Conde');


-- Inserção de registos na tabela Localidade
INSERT INTO Localidade (idLocalidade, nome, códigoPostal, idCidade) VALUES (1,'Cedofeita', '4468-595' ,1);
INSERT INTO Localidade (idLocalidade, nome, códigoPostal, idCidade) VALUES (2,'Campanhã', '5968-452' ,1);
INSERT INTO Localidade (idLocalidade, nome, códigoPostal, idCidade) VALUES (3,'Ramalde', '4958-741', 1);
INSERT INTO Localidade (idLocalidade, nome, códigoPostal, idCidade) VALUES (4,'Bonfim', '7533- 963', 1);
INSERT INTO Localidade (idLocalidade, nome, códigoPostal, idCidade) VALUES (5,'Custóias', '9514-789', 2);
INSERT INTO Localidade (idLocalidade, nome, códigoPostal, idCidade) VALUES (6,'Perafim', '7896-145', 2);
INSERT INTO Localidade (idLocalidade, nome, códigoPostal, idCidade) VALUES (7,'Senhora da Hora', '4635-135', 2);
INSERT INTO Localidade (idLocalidade, nome, códigoPostal, idCidade) VALUES (8,'Lavra', '3255-852', 2);
INSERT INTO Localidade (idLocalidade, nome, códigoPostal, idCidade) VALUES (9,'Leça do Balio', '7412-456', 2);
INSERT INTO Localidade (idLocalidade, nome, códigoPostal, idCidade) VALUES (10,'Vila Chã', '7412-214', 3);
INSERT INTO Localidade (idLocalidade, nome, códigoPostal, idCidade) VALUES (11,'Azurara', '6521-452', 3);

-- Inserção de registos na tabela EstadoCivil
INSERT INTO EstadoCivil (idEstadoCivil, nome) VALUES (1,'Solteiro');
INSERT INTO EstadoCivil (idEstadoCivil, nome) VALUES (2,'Casado');
INSERT INTO EstadoCivil (idEstadoCivil, nome) VALUES (3,'Divorciado');
INSERT INTO EstadoCivil (idEstadoCivil, nome) VALUES (4,'Viúvo');

-- Inserção de registos na tabela Marca
INSERT INTO Marca (idMarca, nome) VALUES (1,'Opel');
INSERT INTO Marca (idMarca, nome) VALUES (2,'Renault');
INSERT INTO Marca (idMarca, nome) VALUES (3,'Harley-Davidson');

-- Inserção de registos na tabela Modelo
INSERT INTO Modelo (idModelo, nome, peso, cilindrada, potência, velocidadeMáxima, idMarca) VALUES (1,'Corsa', '1350' , '150', '260', '260', 1);
INSERT INTO Modelo (idModelo, nome, peso, cilindrada, potência, velocidadeMáxima, idMarca) VALUES (2, 'Clio 1.9D', '1100' , '105', '210', '240', 2);
INSERT INTO Modelo (idModelo, nome, peso, cilindrada, potência, velocidadeMáxima, idMarca) VALUES (3, 'Magnum', '2000' , '11956', '390', '140', 3);
INSERT INTO Modelo (idModelo, nome, peso, cilindrada, potência, velocidadeMáxima, idMarca) VALUES (4, '830Roadster', '265' , '883', '52', '240', 3);

-- Inserção de registos na tabela TipoVeículo
INSERT INTO TipoVeículo (idTipoVeículo, nome) VALUES (1, 'Ligeiro');
INSERT INTO TipoVeículo (idTipoVeículo, nome) VALUES (2, 'Pesado');
INSERT INTO TipoVeículo (idTipoVeículo, nome) VALUES (3, 'Motoclico');

-- Inserção de registos na tabela Veículo
INSERT INTO Veículo(idVeículo, matrícula, idModelo, idTipoVeículo) VALUES (1,'97-CV-47', 1, 1);
INSERT INTO Veículo(idVeículo, matrícula, idModelo, idTipoVeículo) VALUES (2,'63-FD-45', 2, 1);
INSERT INTO Veículo(idVeículo, matrícula, idModelo, idTipoVeículo) VALUES (3,'23-ZX-44', 3, 2);
INSERT INTO Veículo(idVeículo, matrícula, idModelo, idTipoVeículo) VALUES (4,'72-AC-33', 4, 3);

-- Inserção de registos na tabela Pessoa
INSERT INTO Pessoa(idPessoa, nome , morada, BI, dataNascimento, idEstadoCivil, idLocalidade, tipo) 
	VALUES (1, 'André Regado', 'Capela do Telheiro', '7854127', '1994-03-21', 1, 1, 'Aluno');
INSERT INTO Pessoa(idPessoa, nome , morada, BI, dataNascimento, idEstadoCivil, idLocalidade, tipo) 
	VALUES (2, 'José Amorim', 'Rua da Fontainha', '6521896', '1994-10-10', 1, 4, 'Aluno');
INSERT INTO Pessoa(idPessoa, nome , morada, BI, dataNascimento, idEstadoCivil, idLocalidade, tipo) 
	VALUES (3, 'Franscisco Couto', 'Praceta Alecrim', '1295467', '1994-12-31', 3, 3, 'Instrutor');
INSERT INTO Pessoa(idPessoa, nome , morada, BI, dataNascimento, idEstadoCivil, idLocalidade, tipo) 
	VALUES (4, 'Pedro Sousa', 'Rua da Boa Fortuna', '3551457', '1994-05-12', 4, 4, 'Aluno');
INSERT INTO Pessoa(idPessoa, nome , morada, BI, dataNascimento, idEstadoCivil, idLocalidade, tipo) 
	VALUES (5, 'Mário Ferreira', 'Rua da Má Fortuna', '1642439', '1964-02-12', 2, 7, 'Instrutor');
INSERT INTO Pessoa(idPessoa, nome , morada, BI, dataNascimento, idEstadoCivil, idLocalidade, tipo) 
	VALUES (6, 'Alcino Sousa', 'Rua D.Joao I', '3514639', '1984-11-12', 1, 6, 'Aluno');
INSERT INTO Pessoa(idPessoa, nome , morada, BI, dataNascimento, idEstadoCivil, idLocalidade, tipo) 
	VALUES (7, 'Rui Gonçalves', 'Rua D.Manuel I', '4514757', '1993-06-17', 1, 1, 'Aluno');
INSERT INTO Pessoa(idPessoa, nome , morada, BI, dataNascimento, idEstadoCivil, idLocalidade, tipo) 
	VALUES (8, 'António Presa', 'Praceta da Boa Fortuna', '1521651', '1986-03-11', 4, 4, 'Aluno');

-- Inserção de registos na tabela Aluno
INSERT INTO Aluno (idPessoa, códigoAluno, idTipoVeículo) VALUES (1 , '6478' ,1);
INSERT INTO Aluno (idPessoa, códigoAluno, idTipoVeículo) VALUES (2 , '1257', 1);
INSERT INTO Aluno (idPessoa, códigoAluno, idTipoVeículo) VALUES (4 , '6458', 2);
INSERT INTO Aluno (idPessoa, códigoAluno, idTipoVeículo) VALUES (6 , '3492', 3);
INSERT INTO Aluno (idPessoa, códigoAluno, idTipoVeículo) VALUES (7 , '2478', 1);
INSERT INTO Aluno (idPessoa, códigoAluno, idTipoVeículo) VALUES (8 , '1382', 3);

-- Inserção de registos na tabela Instrutor
INSERT INTO Instrutor (idPessoa, salário, tempoLecionar) VALUES (3, '1200', '33');
INSERT INTO Instrutor (idPessoa, salário, tempoLecionar) VALUES (5, '1400', '41');

-- Inserção de registos na tabela InstrutorTipoVeículo
INSERT INTO InstrutorTipoVeículo (idInstrutor, idTipoVeículo) VALUES (3, 1);
INSERT INTO InstrutorTipoVeículo (idInstrutor, idTipoVeículo) VALUES (5, 1);
INSERT INTO InstrutorTipoVeículo (idInstrutor, idTipoVeículo) VALUES (5, 2);
INSERT INTO InstrutorTipoVeículo (idInstrutor, idTipoVeículo) VALUES (5, 3);


-- Inserção de registos na tabela Aula
INSERT INTO Aula (idAula, Sumário, Data, HoraInício, HoraFim, tipo, idInstrutor) VALUES (1, 'Prioridade' , '2014-06-12', '15:00', '16:00', 'Teórica', 3);
INSERT INTO Aula (idAula, Sumário, Data, HoraInício, HoraFim, tipo, idInstrutor) VALUES (2, '1ª Aula Prática' , '2014-07-11', '15:00', '16:00', 'Prática', 3);
INSERT INTO Aula (idAula, Sumário, Data, HoraInício, HoraFim, tipo, idInstrutor) VALUES (3, 'Sinalização' , '2014-06-10', '15:00', '16:00', 'Teórica', 3);
INSERT INTO Aula (idAula, Sumário, Data, HoraInício, HoraFim, tipo, idInstrutor) VALUES (4, 'Aula 1' , '2014-06-07', '17:00', '19:00', 'Prática',5);
INSERT INTO Aula (idAula, Sumário, Data, HoraInício, HoraFim, tipo, idInstrutor) VALUES (5, 'Aula 2' , '2014-06-09', '17:00', '19:00', 'Prática',5);
INSERT INTO Aula (idAula, Sumário, Data, HoraInício, HoraFim, tipo, idInstrutor) VALUES (6, 'Aula 3' , '2014-06-11', '17:00', '19:00', 'Prática',5);
INSERT INTO Aula (idAula, Sumário, Data, HoraInício, HoraFim, tipo, idInstrutor) VALUES (7, 'Aula 4' , '2014-06-14', '15:00', '16:00', 'Prática',3);
INSERT INTO Aula (idAula, Sumário, Data, HoraInício, HoraFim, tipo, idInstrutor) VALUES (8, 'Prioridade' , '2014-07-12', '15:00', '16:00', 'Teórica', 5);

-- Inserção de registos na tabela Prática
INSERT INTO Prática (idAula, idVeículo) VALUES (2, 1);
INSERT INTO Prática (idAula, idVeículo) VALUES (4, 1);
INSERT INTO Prática (idAula, idVeículo) VALUES (5, 2);
INSERT INTO Prática (idAula, idVeículo) VALUES (6, 3);
INSERT INTO Prática (idAula, idVeículo) VALUES (7, 4);

-- Inserção de registos na tabela Teórica
INSERT INTO Teórica (idAula, numeroAlunos) VALUES (1, 1);
INSERT INTO Teórica (idAula, numeroAlunos) VALUES (3, 2);
INSERT INTO Teórica (idAula, numeroAlunos) VALUES (8, 3);

-- Inserção de registos na tabela AlunoAula
INSERT INTO AlunoAula (idAluno, idAula) VALUES (1, 1);
INSERT INTO AlunoAula (idAluno, idAula) VALUES (2, 3);
INSERT INTO AlunoAula (idAluno, idAula) VALUES (7, 3);
INSERT INTO AlunoAula (idAluno, idAula) VALUES (6, 8);
INSERT INTO AlunoAula (idAluno, idAula) VALUES (8, 8);
INSERT INTO AlunoAula (idAluno, idAula) VALUES (4, 8);
INSERT INTO AlunoAula (idAluno, idAula) VALUES (1, 2);
INSERT INTO AlunoAula (idAluno, idAula) VALUES (1, 4);
INSERT INTO AlunoAula (idAluno, idAula) VALUES (1, 5);
INSERT INTO AlunoAula (idAluno, idAula) VALUES (1, 6);
INSERT INTO AlunoAula (idAluno, idAula) VALUES (6, 7);

SELECT * FROM Cidade;
SELECT * FROM Localidade;
SELECT * FROM EstadoCivil;
SELECT * FROM Pessoa;
SELECT * FROM Aluno;
SELECT * FROM Instrutor;
SELECT * FROM Aula;
SELECT * FROM Teórica;
SELECT * FROM Prática;
SELECT * FROM TipoVeículo;
SELECT * FROM Modelo;
SELECT * FROM Marca;
SELECT * FROM Veículo;
SELECT * FROM AlunoAula;
SELECT * FROM InstrutorTipoVeículo;