INSERT INTO GINASIO VALUES(1, 100, "Rua do ginasio" , 4, 912345678);

INSERT INTO CLIENTE VALUES(1, "4765-223", 19960225, "RUA ST.Antonio", "Pedro Costa", 933469242, 1, 1, 1, 3);
INSERT INTO CLIENTE VALUES(2, "4470-333", 19990520, "RUA Concelheiro", "Bernardo Belchior", 987543121, 1, 2, 1, 5);
INSERT INTO CLIENTE VALUES(3, "4765-434", 19801212, "RUA Costa Aroso", "Pedro Silva", 936920593, 0, 3, 1, 2);
INSERT INTO CLIENTE VALUES(4, "4525-773", 19791101, "RUA Fernando Magalhaes", "Nuno Ramos", 994829258, 1, 4, 1, 1);
INSERT INTO CLIENTE VALUES(5, "4732-732", 19970607, "Estrada da Circunvalacao", "Maria Joao", 995038684, 1, 5, 1, 1);
INSERT INTO CLIENTE VALUES(6, "4734-215", 19951215, "Travessa da Ribeira", "Rui Santos", 929385902, 1, 1, 1, 3);
INSERT INTO CLIENTE VALUES(7, "4765-333", 19971121, "Rua do Toural", "Ines Ferreira", 950392812, 1, 2, 1, 2);
INSERT INTO CLIENTE VALUES(8, "4723-123", 20000810, "Rua António Luis", "Tomas Caldas", 95839202, 1, 3, 1, 1);
INSERT INTO CLIENTE VALUES(9, "4123-323", 19960426, "RUA da Ilha Terceira", "Edgar Passos", 916975939, 1, 4, 1, 5);
INSERT INTO CLIENTE VALUES(10, "4776-892", 19870417, "RUA Alfredo Allen", "Manuel Joaquim", 998236554, 1, 5, 1, 6);
INSERT INTO CLIENTE VALUES(11, "4543-567", 19961223, "RUA Julio Amaral", "Nuno Alves", 995236482, 0, 1, 1, 2);
INSERT INTO CLIENTE VALUES(12, "4567-877", 19981011, "RUA Pereira da Silva", "Luis Lopes", 96521349, 1, 2, 1, 1);
INSERT INTO CLIENTE VALUES(13, "4987-654", 19800201, "RUA Roberto Frias", "Sergio Costa", 938236497, 0, 3, 1, 3);
INSERT INTO CLIENTE VALUES(14, "4456-765", 19831112, "RUA Corgo", "Margarida Viterbo", 932643789, 1, 4, 1, 5);
INSERT INTO CLIENTE VALUES(15, "4568-097", 19850617, "RUA do Amial", "Bruno Sousa", 939727382, 1, 3, 1, 4);
INSERT INTO CLIENTE VALUES(16, "4097-643", 19901215, "Alameda 25 de Abril", "Nuno Martinho", 917393198, 1, 2, 1, 2);
INSERT INTO CLIENTE VALUES(17, "4478-932", 19910618, "Rua Conde Avranches", "Pedro Monteiro", 912120841, 1, 5, 1, 1);
INSERT INTO CLIENTE VALUES(18, "4357-842", 19801203, "RUA da Asprela", "Cristiano Ronaldo", 939502015, 1, 1, 1, 4);
INSERT INTO CLIENTE VALUES(19, "4063-368", 19791011, "RUA Fonte", "Paulo Bento", 913219131, 1, 5, 1, 5);
INSERT INTO CLIENTE VALUES(20, "4385-395", 19920617, "RUA Arquitecto Vital", "Jorge Jesus", 934920821, 1, 1, 1, 6);
INSERT INTO CLIENTE VALUES(21, "4063-128", 19961011, "RUA Santos Pousada", "Teresa Cunha", 915423131, 1, 5, 1, 5);
INSERT INTO CLIENTE VALUES(22, "4385-325", 19950617, "RUA Montenegro", "Rita Leite", 934650821, 1, 1, 1, 4);


INSERT INTO FUNCIONARIO VALUES(1, 1200, "4123-351", 19750207, "RUA Tronco", "Manuel Castro", 938524669, 0);
INSERT INTO FUNCIONARIO VALUES(2, 1200, "4642-321", 19801221, "RUA Telheiro", "Bernardo Silva", 93721235, 0);
INSERT INTO FUNCIONARIO VALUES(3, 1300, "4235-542", 19810112, "RUA Cidreira", "Rita Pereira", 933795324, 0);
INSERT INTO FUNCIONARIO VALUES(4, 1300, "4731-321", 19901012, "RUA Jose Coutinho", "Joao Costa", 916944222, 0);
INSERT INTO FUNCIONARIO VALUES(5, 1300, "4332-396", 19910524, "RUA Centro", "Manuel Belchior", 968324223, 0);
INSERT INTO FUNCIONARIO VALUES(6, 1200, "4321-213", 19771217, "RUA Padre Silva", "Ana Rita Silva", 912846382, 0);
INSERT INTO FUNCIONARIO VALUES(7, 1500, "4200-162", 19801102, "RUA da Levada", "Jose Canossa", 915578003, 0);
INSERT INTO FUNCIONARIO VALUES(8, 1200, "4200-160", 19810405, "RUA de São Crispim", "Sancha Costa", 912234565, 0);




INSERT INTO TREINADOR VALUES(0,1);
INSERT INTO TREINADOR VALUES(0,2);
INSERT INTO TREINADOR VALUES(1,3);
INSERT INTO TREINADOR VALUES(1,4);


INSERT INTO PROFESSOR VALUES(5);
INSERT INTO PROFESSOR VALUES(6);
INSERT INTO PROFESSOR VALUES(7);
INSERT INTO PROFESSOR VALUES(8);

--Horarios dos funcionarios
INSERT INTO DiasDaSemana VALUES("Segunda", 1, "19:40", "09:00", 1);
INSERT INTO DiasDaSemana VALUES("Terca", 2, "19:40", "09:00", 1);
INSERT INTO DiasDaSemana VALUES("Quarta",3, "19:40", "09:00", 1);
INSERT INTO DiasDaSemana VALUES("Quinta", 4,"19:40", "09:00", 1);
INSERT INTO DiasDaSemana VALUES("Sexta", 5, "19:40", "09:00", 1);
INSERT INTO DiasDaSemana VALUES("Sabado", 6, "19:40", "09:00", 1);
INSERT INTO DiasDaSemana VALUES("Domingo", 7, "19:40", "09:00", 1);
--Horarios das Aulas
INSERT INTO DiasDaSemana VALUES("Segunda", 8, "11:30", "10:30", 1);
INSERT INTO DiasDaSemana VALUES("Terca", 9, "19:40", "18:40", 1);
INSERT INTO DiasDaSemana VALUES("Quarta",10, "19:40", "18:50", 1);
INSERT INTO DiasDaSemana VALUES("Quinta", 11,"20:40", "21:40", 1);
INSERT INTO DiasDaSemana VALUES("Sexta", 12, "19:40", "18:50", 1);
INSERT INTO DiasDaSemana VALUES("Sabado", 13, "10:00", "09:00", 1);
INSERT INTO DiasDaSemana VALUES("Domingo", 14, "09:30", "08:30", 1);
INSERT INTO DiasDaSemana VALUES("Domingo", 15, "19:40", "18:40", 1);
INSERT INTO DiasDaSemana VALUES("Segunda", 16, "11:30", "10:30", 1);
INSERT INTO DiasDaSemana VALUES("Terca", 17, "19:40", "18:40", 1);
INSERT INTO DiasDaSemana VALUES("Quarta",18, "19:40", "18:50", 1);
INSERT INTO DiasDaSemana VALUES("Quinta", 19,"20:40", "21:40", 1);
INSERT INTO DiasDaSemana VALUES("Sexta", 20, "19:40", "18:50", 1);
INSERT INTO DiasDaSemana VALUES("Sabado", 21, "10:00", "09:00", 1);
INSERT INTO DiasDaSemana VALUES("Domingo", 22, "09:30", "08:30", 1);
INSERT INTO DiasDaSemana VALUES("Domingo", 23, "19:40", "18:40", 1);
INSERT INTO DiasDaSemana VALUES("Segunda", 24, "15:40", "14:40", 1);

INSERT INTO Aula VALUES(1, 25, 1, 1, "Zumba");
INSERT INTO Aula VALUES(2, 25, 2, 2, "Pilates");
INSERT INTO Aula VALUES(3, 25, 3, 3, "Cycling");
INSERT INTO Aula VALUES(4, 25, 4, 4, "Yoga");
INSERT INTO Aula VALUES(5, 25, 5, 5, "Maquinas");
INSERT INTO Aula VALUES(6, 25, 6, 6, "Body Pump");
INSERT INTO Aula VALUES(7, 25, 7, 1, "Zumba");
INSERT INTO Aula VALUES(8, 25, 8, 1, "Gap");
INSERT INTO Aula VALUES(9, 25, 4, 4, "GAP");
INSERT INTO Aula VALUES(10, 5, 4, 4, "TRX");




INSERT INTO Modalidade VALUES("Zumba");
INSERT INTO Modalidade VALUES("Pilates");
INSERT INTO Modalidade VALUES("Cycling");
INSERT INTO Modalidade VALUES("Yoga");
INSERT INTO Modalidade VALUES("Maquinas");
INSERT INTO Modalidade VALUES("Body Pump");
INSERT INTO Modalidade VALUES("Gap");




INSERT INTO SalaDeTreino VALUES(1, 50, 1);
INSERT INTO SalaDeTreino VALUES(2, 50, 1);
INSERT INTO SalaDeTreino VALUES(3, 50, 1);
INSERT INTO SalaDeTreino VALUES(4, 50, 1);
INSERT INTO SalaDeTreino VALUES(5, 50, 1);
INSERT INTO SalaDeTreino VALUES(6, 50, 1);

INSERT INTO EquipamentoTreino VALUES("Step", 25, 1);
INSERT INTO EquipamentoTreino VALUES("Pesos", 26, 6);
INSERT INTO EquipamentoTreino VALUES("Passadeira", 5, 5);

INSERT INTO Contrato VALUES(1, 20151020, 20161020,20160404, 25, 1);
INSERT INTO Contrato VALUES(2, 20151020, 20161020,20160404, 25, 2);
INSERT INTO Contrato VALUES(3, 20151020, 20161020,20160404, 25, 3);
INSERT INTO Contrato VALUES(4, 20151120, 20161020,20160404, 25, 4);
INSERT INTO Contrato VALUES(5, 20151020, 20161020,20160404, 25, 5);
INSERT INTO Contrato VALUES(6, 20151020, 20161020,20160404, 25, 6);
INSERT INTO Contrato VALUES(7, 20151220, 20161020,20160404, 25, 7);
INSERT INTO Contrato VALUES(8, 20151220, 20161020,20160404, 25, 8);
INSERT INTO Contrato VALUES(9, 20151120, 20161020,20160404, 25, 9);
INSERT INTO Contrato VALUES(10, 20151120, 20161020,20160504, 20, 10);
INSERT INTO Contrato VALUES(11, 20151020, 20161020,20160504, 20, 11);
INSERT INTO Contrato VALUES(12, 20151020, 20161020,20160504, 20, 12);
INSERT INTO Contrato VALUES(13, 20151020, 20161020,20160504, 20, 13);
INSERT INTO Contrato VALUES(14, 20151020, 20161020,20160504, 20, 14);
INSERT INTO Contrato VALUES(15, 20151020, 20161020,20160504, 20, 15);
INSERT INTO Contrato VALUES(16, 20160320, 20161020,20160504, 20, 16);
INSERT INTO Contrato VALUES(17, 20160118, 20161020,20160504, 20, 17);
INSERT INTO Contrato VALUES(18, 20160119, 20161020,20160704, 20, 18);
INSERT INTO Contrato VALUES(19, 20160220, 20161020,20160704, 20, 19);
INSERT INTO Contrato VALUES(20, 20160120, 20161020,20160704, 20, 20);


INSERT INTO Livre VALUES(1);
INSERT INTO Livre VALUES(2);
INSERT INTO Livre VALUES(3);
INSERT INTO Livre VALUES(4);
INSERT INTO Livre VALUES(5);
INSERT INTO Livre VALUES(6);
INSERT INTO Livre VALUES(7);
INSERT INTO Livre VALUES(8);
INSERT INTO Livre VALUES(9);
INSERT INTO Livre VALUES(10);
INSERT INTO OffPeak VALUES("17h -> 21h",11);
INSERT INTO OffPeak VALUES("17h -> 21h",12);
INSERT INTO OffPeak VALUES("17h -> 21h",13);
INSERT INTO OffPeak VALUES("17h -> 21h",14);
INSERT INTO OffPeak VALUES("17h -> 21h",15);
INSERT INTO OffPeak VALUES("17h -> 21h",16);
INSERT INTO OffPeak VALUES("17h -> 21h",17);
INSERT INTO OffPeak VALUES("17h -> 21h",18);
INSERT INTO OffPeak VALUES("17h -> 21h",19);
INSERT INTO OffPeak VALUES("17h -> 21hh",20);


INSERT INTO Horario VALUES(1,1);
INSERT INTO Horario VALUES(1,2);
INSERT INTO Horario VALUES(1,3);
INSERT INTO Horario VALUES(1,4);
INSERT INTO Horario VALUES(1,5);

INSERT INTO Horario VALUES(2,1);
INSERT INTO Horario VALUES(2,2);
INSERT INTO Horario VALUES(2,3);
INSERT INTO Horario VALUES(2,4);
INSERT INTO Horario VALUES(2,5);

INSERT INTO Horario VALUES(3,1);
INSERT INTO Horario VALUES(3,2);
INSERT INTO Horario VALUES(3,3);
INSERT INTO Horario VALUES(3,4);
INSERT INTO Horario VALUES(3,5);

INSERT INTO Horario VALUES(4,1);
INSERT INTO Horario VALUES(4,2);
INSERT INTO Horario VALUES(4,3);
INSERT INTO Horario VALUES(4,4);
INSERT INTO Horario VALUES(4,5);

INSERT INTO Horario VALUES(5,1);
INSERT INTO Horario VALUES(5,2);
INSERT INTO Horario VALUES(5,3);
INSERT INTO Horario VALUES(5,4);
INSERT INTO Horario VALUES(5,5);

INSERT INTO Horario VALUES(6,1);
INSERT INTO Horario VALUES(6,2);
INSERT INTO Horario VALUES(6,3);
INSERT INTO Horario VALUES(6,4);
INSERT INTO Horario VALUES(6,5);

INSERT INTO Horario VALUES(7,1);
INSERT INTO Horario VALUES(7,2);
INSERT INTO Horario VALUES(7,3);
INSERT INTO Horario VALUES(7,4);
INSERT INTO Horario VALUES(7,5);

INSERT INTO Horario VALUES(8,1);
INSERT INTO Horario VALUES(8,2);
INSERT INTO Horario VALUES(8,3);
INSERT INTO Horario VALUES(8,4);
INSERT INTO Horario VALUES(8,5);


INSERT INTO AulaCliente VALUES(1,1);
INSERT INTO AulaCliente VALUES(2,4);
INSERT INTO AulaCliente VALUES(3,5);
INSERT INTO AulaCliente VALUES(4,6);
INSERT INTO AulaCliente VALUES(5,9);
INSERT INTO AulaCliente VALUES(6,8);
INSERT INTO AulaCliente VALUES(7,7);
INSERT INTO AulaCliente VALUES(8,6);
INSERT INTO AulaCliente VALUES(9,1);
INSERT INTO AulaCliente VALUES(10,2);
INSERT INTO AulaCliente VALUES(11,3);
INSERT INTO AulaCliente VALUES(12,4);
INSERT INTO AulaCliente VALUES(13,5);
INSERT INTO AulaCliente VALUES(14,6);
INSERT INTO AulaCliente VALUES(15,7);
INSERT INTO AulaCliente VALUES(16,8);
INSERT INTO AulaCliente VALUES(17,9);
INSERT INTO AulaCliente VALUES(18,1);
INSERT INTO AulaCliente VALUES(19,2);
INSERT INTO AulaCliente VALUES(20,3);
INSERT INTO AulaCliente VALUES(1,2);
INSERT INTO AulaCliente VALUES(1,3);
INSERT INTO AulaCliente VALUES(1,4);
INSERT INTO AulaCliente VALUES(1,5);
INSERT INTO AulaCliente VALUES(1,6);
INSERT INTO AulaCliente VALUES(18,2);
INSERT INTO AulaCliente VALUES(18,3);
INSERT INTO AulaCliente VALUES(18,4);
INSERT INTO AulaCliente VALUES(18,5);
INSERT INTO AulaCliente VALUES(18,6);
INSERT INTO AulaCliente VALUES(18,9);
INSERT INTO AulaCliente VALUES(5,2);
INSERT INTO AulaCliente VALUES(5,5);
INSERT INTO AulaCliente VALUES(5,6);
INSERT INTO AulaCliente VALUES(5,8);
INSERT INTO AulaCliente VALUES(5,10);
INSERT INTO AulaCliente VALUES(6,10);
INSERT INTO AulaCliente VALUES(7,10);
INSERT INTO AulaCliente VALUES(8,10);
INSERT INTO AulaCliente VALUES(9,10);


INSERT INTO HorarioAulas VALUES(1,8);
INSERT INTO HorarioAulas VALUES(2,9);
INSERT INTO HorarioAulas VALUES(3,10);
INSERT INTO HorarioAulas VALUES(4,11);
INSERT INTO HorarioAulas VALUES(5,12);
INSERT INTO HorarioAulas VALUES(6,13);
INSERT INTO HorarioAulas VALUES(7,14);
INSERT INTO HorarioAulas VALUES(8,15);
INSERT INTO HorarioAulas VALUES(8,16);
INSERT INTO HorarioAulas VALUES(7,17);
INSERT INTO HorarioAulas VALUES(6,18);
INSERT INTO HorarioAulas VALUES(5,19);
INSERT INTO HorarioAulas VALUES(4,20);
INSERT INTO HorarioAulas VALUES(3,21);
INSERT INTO HorarioAulas VALUES(2,22);
INSERT INTO HorarioAulas VALUES(1,23);
INSERT INTO HorarioAulas VALUES(9,23);
INSERT INTO HorarioAulas VALUES(10,24);




