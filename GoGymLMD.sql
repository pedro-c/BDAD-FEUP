.read GoGym.sql
.read GoGymInfo.sql

--TODO
--update relatorio (capa, uml)



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
CREATE VIEW SalaCliente AS
SELECT DISTINCT Cliente.Nome,  Aula.NumeroSala
FROM AulaCliente, Aula, Cliente
WHERE AulaCliente.idAula = Aula.idAula
AND Cliente.idCliente=AulaCliente.idCliente;

SELECT Nome
FROM SalaCliente
GROUP BY NOME
HAVING Count(*) =6;

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


--Nome das aulas onde já ocorreu o número de clientes presentes na aula ser igual a lotação da aula.



--Nome, id do cliente e id do contrato dos clientes que possuí treinador.


--Nome,id do treinador e modalidades do treinador que possuí maior salário.


--Aulas de "Yoga" que foram dadas na sala 4.
SELECT DiasDaSemana.dia, DiasDaSemana.HoraInicio
FROM DiasDaSemana
join HorarioAulas on
DiasDaSemana.idDiaDaSemana = HorarioAulas.idDiaDaSemana
WHERE HorarioAulas.idAula in
(SELECT HorarioAulas.idAula
FROM HorarioAulas
join Aula on
HorarioAulas.idAula = Aula.idAula
WHERE Nome = "Yoga"
AND
NumeroSala = 4);

--Nome e id dos clientes "Off-Peak" que realizaram aulas com a professora "Sancha".



--Income mensal do ginasios
SELECT SUM (Preco) FROM Contrato;


--Ordem decrescente das aulas com mais clientes
SELECT Aula.Nome, COUNT(*) 
FROM AulaCliente, Aula
WHERE AulaCliente.idAula = Aula.idAula
GROUP BY Aula.Nome 
ORDER BY COUNT(*) DESC;








