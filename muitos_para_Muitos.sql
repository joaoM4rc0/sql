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

"""
oq esse codigo faz:

Tabela Matriculas
    • aluno_id INT: Cria uma coluna para armazenar o identificador do aluno.
    • curso_id INT: Cria uma coluna para armazenar o identificador do curso.
    • PRIMARY KEY (aluno_id, curso_id): Define uma chave primária composta pelas colunas aluno_id
    e curso_id. Isso garante que cada combinação de aluno e curso é única, 
    ou seja, um aluno não pode se matricular no mesmo curso mais de uma vez.
    • FOREIGN KEY (aluno_id) REFERENCES Aluno(aluno_id): Define aluno_id como uma chave estrangeira
    que referencia a coluna aluno_id na tabela Aluno, 
    garantindo que cada valor em aluno_id de Matriculas deve existir na tabela Aluno.
    • FOREIGN KEY (curso_id) REFERENCES Curso(curso_id): Define curso_id como uma chave estrangeira
     que referencia a coluna curso_id na tabela Curso, 
     garantindo que cada valor em curso_id de Matriculas deve existir na tabela Curso.
"""