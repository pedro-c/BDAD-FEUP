.mode columns
.headers on
.nullvalue NULL

CREATE TABLE Ginasio(idGinasio int PRIMARY KEY,
                    LotacaoMaxima int CHECK (LotacaoMaxima > 0),
                    LotacaoAtual int CHECK (LotacaoAtual >= 0),
                    Morada STRING,
                    NumeroDeBalnearios int CHECK (NumeroDeBalnearios > 0),
                    NumeroDeTelefone int);

CREATE TABLE Cliente(idCliente int PRIMARY KEY,
                    CodigoPostal STRING,
                    DataDeNascimento DATE,
                    Morada STRING,
                    Nome STRING NOT NULL,
                    NumeroDeTelefone int,
                    Ativo boolean,
                    idGinasio int REFERENCES Ginasio,
                    idFuncionario int REFERENCES Treinador);

CREATE TABLE Funcionario(idFuncionario int PRIMARY KEY,
                      Salario int CHECK (Salario > 0),
                      CodigoPostal STRING,
                      DataDeNascimento DATE,
                      Morada STRING,
                      Nome STRING,
                      NumeroDeTelefone int,
                      idGinasio int REFERENCES Ginasio);

CREATE TABLE Treinador(PersonalTrainer boolean,
                      idTreinador int REFERENCES Funcionario PRIMARY KEY);

CREATE TABLE Professor(idProfessor int REFERENCES Funcionario PRIMARY KEY);

CREATE TABLE DiasDaSemana(dia STRING NOT NULL,
                          idDiaDaSemana int PRIMARY KEY,
                          HoraFim CHAR(20) NOT NULL,
                          HoraInicio CHAR(20) NOT NULL,
                          idGinasio int REFERENCES Ginasio);

CREATE TABLE Modalidade(nome STRING PRIMARY KEY);

CREATE TABLE Aula(idAula int PRIMARY KEY,
                  Lotacao int CHECK (Lotacao >= 0),
                  idFunc int REFERENCES Professor,
                  NumeroSala int REFERENCES SalaDeTreino,
                  Nome STRING REFERENCES Modalidade);

CREATE TABLE SalaDeTreino(NumeroSala int PRIMARY KEY,
                          dimensao int CHECK (dimensao >0),
                          idGinasio REFERENCES Ginasio);

CREATE TABLE EquipamentoTreino(nome STRING PRIMARY KEY,
                              quantidade int CHECK (quantidade >= 0),
                              NumeroSala REFERENCES SalaDeTreino);

CREATE TABLE Contrato(NumeroDeContrato int PRIMARY KEY,
                      DataDeAbertura DATE NOT NULL,
                      DataDeEncerramento DATE NOT NULL,
                      DataUltimoPagamento DATE NOT NULL,
                      Preco int CHECK (Preco >=0),
                      idCliente REFERENCES Cliente,
                      CHECK (DataDeEncerramento > DataDeAbertura));

CREATE TABLE Livre(NumeroDeContrato int REFERENCES Contrato PRIMARY KEY);

CREATE TABLE OffPeak(HorarioInterdito STRING,
                     NumeroDeContrato int REFERENCES Contrato PRIMARY KEY);


CREATE TABLE Horario(idFuncionario int REFERENCES Funcionario,
                     DiaDaSemana REFERENCES DiasDaSemana);

CREATE TABLE AulaCliente(idCliente int REFERENCES Cliente,
                         idAula int REFERENCES Aula);


CREATE TABLE HorarioAulas(idAula int REFERENCES Aula,
                          idDiaDaSemana int REFERENCES DiasDaSemana);


CREATE TABLE ModProfessor(idProfessor int REFERENCES Professor,
                          nome REFERENCES Modalidade);

CREATE TRIGGER IF NOT EXISTS UpdateLotacaoGym
AFTER INSERT ON Cliente
WHEN (NEW.Ativo=1)
BEGIN UPDATE Ginasio SET LotacaoAtual=LotacaoAtual+1;
END;