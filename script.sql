-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Curso (
idCurso VARCHAR(10) PRIMARY KEY,
nomeCurso VARCHAR(10)
)

CREATE TABLE Pre_Requisito (
idPreRequisito VARCHAR(10) PRIMARY KEY,
descricao_preRequisito VARCHAR(10)
)

CREATE TABLE Departamento (
idDepartamento VARCHAR(10) PRIMARY KEY,
nomeDepartamento VARCHAR(10)
)

CREATE TABLE Professor (
Atributo2 VARCHAR(10),
Atributo4 VARCHAR(10),
idProfessor VARCHAR(10) PRIMARY KEY,
nome VARCHAR(10),
idDepartamento VARCHAR(10)
)

CREATE TABLE RegPonto (
DataFim VARCHAR(10),
idData VARCHAR(10) PRIMARY KEY,
dataInicio VARCHAR(10),
idProfessor VARCHAR(10),
FOREIGN KEY(idProfessor) REFERENCES Professor (idProfessor)
)

CREATE TABLE Ministrar (
idProfessor VARCHAR(10),
idCurso VARCHAR(10),
FOREIGN KEY(idProfessor) REFERENCES Professor (idProfessor),
FOREIGN KEY(idCurso) REFERENCES Curso (idCurso)
)

CREATE TABLE Requisitos (
idProfessor VARCHAR(10),
idPreRequisito VARCHAR(10),
FOREIGN KEY(idProfessor) REFERENCES Professor (idProfessor),
FOREIGN KEY(idPreRequisito) REFERENCES Pre_Requisito (idPreRequisito)
)

CREATE TABLE Pertence (
idProfessor VARCHAR(10),
idDepartamento VARCHAR(10),
FOREIGN KEY(idProfessor) REFERENCES Professor (idProfessor),
FOREIGN KEY(idDepartamento) REFERENCES Departamento (idDepartamento)
)

