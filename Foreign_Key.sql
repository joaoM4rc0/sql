CREATE TABLE Clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100), 
    data_nascimento DATE
);

CREATE TABLE Pedidos(
    pedido_id INT PRIMARY KEY,
    clientes_id INT,
    data_pedido DATE,
    FOREIGN KEY (clientes_id) REFERENCES Clientes(id)
)