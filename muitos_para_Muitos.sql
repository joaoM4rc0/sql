CREATE TABLE Aluno (
    aluno_id INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Curso (
    curso INT PRIMARY KEY,
    titulo VARCHAR(100)
);

CREATE TABLE Matriculas (
    aluno_id INT, 
    curso_id INT,
    PRIMARY key (aluno_id, curso_id),
    FOREIGN KEY (aluno_id) REFERENCES Aluno(aluno_id),
    FOREIGN KEY (curso_id) REFERENCES Curso(curso_id)
);