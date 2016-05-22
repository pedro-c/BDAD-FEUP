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

--Dias da Semana em que se deu aula de "zumba".
SELECT dia
FROM DiasDaSemana, HorarioAulas, Aula
WHERE HorarioAulas.idDiaDaSemana = DiasDaSemana.idDiaDaSemana
AND
HorarioAulas.idAula = Aula.idAula
AND
Aula.Nome="Zumba";

--Nome das aulas onde já ocorreu o número de clientes presentes na aula ser igual a lotação da aula.
CREATE VIEW LotacaoAula AS
SELECT DISTINCT AulaCliente.idAula,  COUNT(AulaCliente.idAula) AS Participantes
FROM AulaCliente
GROUP BY AulaCliente.idAula;

SELECT DISTINCT Aula.Nome, DiasDaSemana.dia, DiasDaSemana.HoraInicio
From Aula, LotacaoAula, DiasDaSemana, HorarioAulas
WHERE LotacaoAula.Participantes = Aula.Lotacao
AND Aula.idAula=LotacaoAula.idAula
AND LotacaoAula.idAula=HorarioAulas.idAula
AND HorarioAulas.idDiaDaSemana=DiasDaSemana.idDiaDaSemana;


--Nome de cada treinador e id dos seus clientes.
SELECT Funcionario.nome,Cliente.idCliente
FROM Funcionario,Cliente
WHERE Funcionario.idFuncionario in (SELECT Treinador.idTreinador
FROM Treinador)
AND Cliente.idFuncionario=Funcionario.idFuncionario
ORDER BY Funcionario.nome;

--Nome,id do professor possuí maior salário.
SELECT Funcionario.nome,Funcionario.idFuncionario
FROM Funcionario
WHERE Funcionario.Salario=(SELECT MAX(Funcionario.Salario)
FROM Funcionario)
AND Funcionario.idFuncionario in (SELECT ModProfessor.idProfessor
FROM ModProfessor);

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

--Nome e id dos clientes "Off-Peak" que realizaram aulas com a professora "Sancha Costa".
SELECT Cliente.nome,Cliente.idCliente
FROM Cliente,AulaCliente
WHERE Cliente.idCliente=AulaCliente.idCliente
AND AulaCliente.idAula=(SELECT Aula.idAula
FROM Aula
WHERE Aula.idFunc=(SELECT Funcionario.idFuncionario
FROM Funcionario
WHERE Funcionario.nome="Sancha Costa"));


--Income mensal do ginasios
SELECT SUM (Preco) FROM Contrato;


--Ordem decrescente das aulas com mais clientes
SELECT Aula.Nome, COUNT(*)
FROM AulaCliente, Aula
WHERE AulaCliente.idAula = Aula.idAula
GROUP BY Aula.Nome
ORDER BY COUNT(*) DESC;

--aulas que a Maria Joao frequentou
SELECT Aula.Nome, DiasDaSemana.dia AS Dia, DiasDaSemana.HoraInicio
FROM Aula, Cliente, AulaCliente, HorarioAulas, DiasDaSemana
WHERE AulaCliente.idCliente=Cliente.idCliente
AND Aula.idAula=AulaCliente.idAula
AND AulaCliente.idAula = HorarioAulas.idAula
ANd HorarioAulas.idDiaDaSemana=DiasDaSemana.idDiaDaSemana
AND Cliente.Nome="Maria Joao";

--nome de pagamentos em falta
SELECT Cliente.Nome
FROM Contrato, Cliente
WHERE Contrato.idCliente=Cliente.idCliente
AND Contrato.DataUltimoPagamento < strftime('%Y%m%d', date('now','start of month'));

--Clientes que nao estao inscritos em nenhuma aula
SELECT Cliente.Nome
FROM Cliente
WHERE Cliente.idCliente in
(SELECT Cliente.idCliente FROM Cliente
EXCEPT SELECT AulaCliente.idCliente FROM AulaCliente);
