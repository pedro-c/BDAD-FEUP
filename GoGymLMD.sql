.read GoGym.sql
.read GoGymInfo.sql

--TODO
--update relatorio (capa, uml)
--



-- Clientes que criaram contrato depois de 2016
SELECT nome, DataDeAbertura
FROM Cliente
join Contrato on
Cliente.idCliente=Contrato.idCliente
where
Contrato.DataDeAbertura > '20160101';


--Professor responsável pelas aulas de Zumba

SELECT Funcionario.Nome, Aula.Nome
FROM Aula
join Funcionario on
Aula.idFunc = Funcionario.idFuncionario
WHERE
Aula.Nome = "Zumba";

--Clientes que fizeram aulas em todas as salas dos ginasios.


--Pares de clientes que frequentam a mesma modalidade, sem repetições.



--Nome dos professores que deram aulas ao "Cristiano Ronaldo".
SELECT Funcionario.Nome
From Funcionario
join Aula on
Funcionario.idFuncionario = Aula.idFunc
Where Aula.idAula IN
(SELECT Aula.idAula
FROM Aula
join AulaCliente on
AulaCliente.idAula = Aula.idAula
WHERE AulaCliente.idCliente IN
(SELECT AulaCliente.idCliente
FROM AulaCliente
join Cliente on
AulaCliente.idCliente = Cliente.idCliente
WHERE Cliente.Nome = "Cristiano Ronaldo"));




--Dia e id dos Dias da Semana em que se deu aula de "zumba".



-- Nome das aulas onde já ocorreu o número de clientes presentes na aula ser igual a lotação da aula.

--Nome, id do cliente e id do contrato dos clientes que possuí treinador.

--Nome,id do treinador e modalidades do treinador que possuí maior salário.

--Aulas de "Yoga" que foram dadas na sala 4.

--Nome e id dos clientes "Off-Peak" que realizaram aulas com a professora "Sancha".












