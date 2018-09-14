USE Reino;

CREATE TABLE Rei(
idrei INT,
nome VARCHAR(60),
data_nasc DATE,
PRIMARY KEY (idrei)
);

CREATE TABLE Terra(
idterra INT,
area FLOAT,
idrei INT,
PRIMARY KEY (idterra),
FOREIGN KEY(idrei) REFERENCES Rei(idrei)
);

CREATE TABLE Sudito(
idsudito INT,
data_nasc DATE,
PRIMARY KEY (idsudito)
);

CREATE TABLE Rei_Sudito(
idrei INT,
idsudito INT,
PRIMARY KEY (idrei, idsudito)
);

CREATE TABLE Conselheiro(
idcon INT,
nome VARCHAR(60),
idsudito INT,
idrei INT,
PRIMARY KEY (idcon),
FOREIGN KEY (idrei) REFERENCES Rei(idrei),
FOREIGN KEY (idsudito) REFERENCES Sudito(idsudito)
);

CREATE TABLE Clerigo(
idclerigo INT,
nome VARCHAR(60),
idsudito INT,
PRIMARY KEY(idclerigo),
FOREIGN KEY (idsudito) REFERENCES Sudito(idsudito)
);

CREATE TABLE Nobre(
idnobre INT,
nome VARCHAR (60),
idsudito INT,
PRIMARY KEY (idnobre),
FOREIGN KEY (idsudito) REFERENCES Sudito(idsudito)
);

CREATE TABLE Plebeu(
idpleb INT,
idsudito INT,
PRIMARY KEY (idpleb),
FOREIGN KEY (idsudito) REFERENCES Sudito(idsudito)
);

CREATE TABLE Burgues(
idburgues INT,
nome VARCHAR(60),
idpleb INT,
PRIMARY KEY (idburgues),
FOREIGN KEY (idpleb) REFERENCES Plebeu(idpleb)
);

CREATE TABLE Campones(
idcamp INT,
nome VARCHAR(60),
idpleb INT,
PRIMARY KEY (idcamp),
FOREIGN KEY (idpleb) REFERENCES Plebeu(idpleb)
);

ALTER TABLE Conselheiro
ALTER COLUMN idrei INT NOT NULL;

ALTER TABLE rei_sudito
ALTER COLUMN idrei INT NOT NULL;

ALTER TABLE rei_sudito
ALTER COLUMN idsudito INT NOT NULL;
 
ALTER TABLE plebeu
ALTER COLUMN idsudito INT NOT NULL;

ALTER TABLE nobre
ALTER COLUMN idsudito INT NOT NULL;

ALTER TABLE clerigo
ALTER COLUMN idsudito INT NOT NULL;

ALTER TABLE conselheiro 
ALTER COLUMN idsudito INT NOT NULL;

