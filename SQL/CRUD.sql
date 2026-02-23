CREATE DATABASE IF NOT EXISTS db_PlataformaCursos;

USE db_PlataformaCursos;

CREATE TABLE IF NOT EXISTS tblAlunos(
	ID_Aluno INT,
    Nome_Aluno VARCHAR(100) NOT NULL,
    primary key(ID_Aluno)
);

CREATE TABLE IF NOT EXISTS tblCursos(
	ID_Curso INT,
    Nome_Curso VARCHAR(100) NOT NULL,
    Preco_Curso DECIMAL(10, 2) NOT NULL,
    primary key(ID_Curso)
);

CREATE TABLE IF NOT EXISTS tblMatriculas(
	ID_Matricula INT,
    ID_Aluno INT NOT NULL,
    ID_Curso INT NOT NULL,
    Data_Compra DATE NOT NULL,
    primary key(ID_Matricula),
    foreign key(ID_Aluno) references tblAlunos(ID_Aluno),
    foreign key(ID_Curso) references tblCursos(ID_Curso)
);

SHOW TABLES;

INSERT INTO tblalunos(ID_Aluno, Nome_Aluno)
VALUES
	(1, 'Ana da Silva'),
    (2, 'João Pedro Bezerra'),
    (3, 'Luisa Mello'),
    (4, 'Marcos Vaz');
    
INSERT INTO tblcursos(ID_Curso, Nome_Curso, Preco_Curso)
VALUES
	  (1, 'Python', 200),
    (2, 'Análise de dados', 500),
	  (3, 'Agentes de IA', 900);

INSERT INTO tblmatriculas(ID_Matricula, ID_Aluno, ID_Curso, Data_Compra)
VALUES
	  (1, 1, 1, '2025-12-01'),
    (2, 1, 2, '2025-12-01'),
    (3, 2, 3, '2025-12-01'),
    (4, 3, 2, '2025-12-01'),
    (5, 4, 1, '2025-12-01'),
    (6, 4, 3, '2025-12-01');

select * from tblmatriculas;

SELECT
	m.ID_Matricula,
    a.Nome_Aluno,
    c.Nome_Curso
FROM tblmatriculas as m
INNER JOIN tblalunos as a
	ON m.ID_Aluno = a.ID_Aluno
INNER JOIN tblcursos as c
	ON m.ID_Curso = c.ID_Curso
ORDER BY ID_Matricula;

SELECT
	a.Nome_Aluno,
    COUNT(m.ID_Aluno) AS 'Total Cursos',
    SUM(c.Preco_Curso) AS 'Total Pago'
FROM tblalunos AS a
JOIN tblmatriculas AS m ON a.ID_Aluno = m.ID_Aluno
JOIN tblcursos AS c ON m.ID_Curso = c.ID_Curso
GROUP BY a.ID_Aluno, a.Nome_Aluno
ORDER BY SUM(c.Preco_Curso) DESC;
