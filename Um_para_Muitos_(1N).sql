CREATE TABLE Autor (
    autor_id INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Livro (
    livro_id INT PRIMARY KEY,
    titulo VARCHAR(100),
    autor_id INT,
    FOREIGN KEY (autor_id) REFERENCES Autor(autor_id)
);
CREATE TABLE Livro_extra(
    livro_id INT PRIMARY KEY,
    titulo VARCHAR(100),
    autor_id INT,
    FOREIGN KEY (autor_id) REFERENCES Autor(autor_id)
);