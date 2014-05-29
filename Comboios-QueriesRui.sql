--------------QUERIES!!--------------------

------- Query 1---------
SELECT Pessoas.nome, Pessoas.idade, ClasseClientes.desconto
FROM Pessoas, Clientes, ClasseClientes
WHERE Clientes.idClientes = ClasseClientes.idClasse;