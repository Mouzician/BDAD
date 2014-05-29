--------------QUERIES!!--------------------

------- Query 1---------
SELECT Clientes.nome, Clientes.idade, ClasseClientes.desconto
FROM Clientes, ClasseClientes
WHERE Clientes.idClientes = ClasseClientes.idClasse;