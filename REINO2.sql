USE Reino;

INSERT INTO Rei (idrei, nome, data_nasc) VALUES
(1 , "King" , "1975-12-06");

INSERT INTO Terra (idterra, area, idrei) VALUES
(1 , 14 000 , 1),
(2 , 100 000 , 1);

INSERT INTO Sudito (idsudito, data_nasc) VALUES
(1 , "1970-01-14"),
(2 , "1966-11-08"),
(3 , "2002-05-19"),
(4 , "2001-01-25"),
(5 , "2001-12-23");

INSERT INTO Rei_Sudito (idrei, idsudito) VALUES
(1 , 1),
(1 , 2),
(1 , 3),
(1 , 4),
(1 , 5);

INSERT INTO Conselheiro (idcon, nome, idsudito, idrei) VALUES
(1 , "Terezinha de Oliveira" , 1 , 1);

INSERT INTO Clerigo (idclerigo, nome, idsudito) VALUES
(1 , "Telma Valéria Martello" , 2);

INSERT INTO Nobre (idnobre, nome, idsudito) VALUES
(1 , "Taísa Evangelista de Oliveira Martello", 3);

INSERT INTO Plebeu ( idpleb, idburgues) VALUES
( 1 , 4),
( 1 , 5);

INSERT INTO Burgues (idburgues, nome, idpleb) VALUES
( 1 , "Mileny Furtado", 1);

INSERT INTO Campones ( idcamp, nome, idpleb) VALUES
(1 , "Lucas Raibolt" , 2);
