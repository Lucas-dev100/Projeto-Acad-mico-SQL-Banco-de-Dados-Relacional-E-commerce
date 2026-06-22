CREATE DATABASE ecommerce;
USE ecommerce;
CREATE TABLE usuarios(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (100) NOT NULL,
email VARCHAR (150) NOT NULL UNIQUE,
senha VARCHAR (100) NOT NULL,
data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE produtos (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (150) NOT NULL,
descricao TEXT,
preco DECIMAL(10,2) NOT NULL,
estoque INT NOT NULL,
categoria VARCHAR(100),
data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE pedidos(
id INT AUTO_INCREMENT PRIMARY KEY,
usuario_id INT NOT NULL,
data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
status_pedido VARCHAR(50) DEFAULT 'pendente',
 
 FOREIGN KEY (usuario_id)
 REFERENCES usuarios(id)
);


CREATE TABLE itens_pedidos (
id INT AUTO_INCREMENT PRIMARY KEY,
pedido_id INT NOT NULL,
produto_id INT NOT NULL,
quantidade INT NOT NULL,
preco_unitario DECIMAL (10,2) NOT NULL
);

INSERT INTO usuarios (nome, email, senha) VALUES
('Lucas Silva', 'lucas1@gmail.com', '123'),
('Maria Souza', 'maria2@gmail.com', '123'),
('João Santos', 'joao3@gmail.com', '123'),
('Ana Costa', 'ana4@gmail.com', '123'),
('Pedro Lima', 'pedro5@gmail.com', '123'),
('Carla Mendes', 'carla6@gmail.com', '123'),
('Rafael Alves', 'rafael7@gmail.com', '123'),
('Juliana Rocha', 'juliana8@gmail.com', '123'),
('Bruno Ferreira', 'bruno9@gmail.com', '123'),
('Patrícia Gomes', 'patricia10@gmail.com', '123');

INSERT INTO produtos (nome, descricao, preco, estoque) VALUES
('Mouse Gamer', 'RGB 12000 DPI', 99.90, 50),
('Teclado Mecânico', 'Switch azul RGB', 199.90, 30),
('Monitor 24 LG', 'Full HD 75Hz', 799.90, 15),
('Notebook Dell', 'i5 16GB SSD 512GB', 3500.00, 8),
('Headset Gamer', 'Som 7.1 RGB', 150.00, 40),
('Cadeira Gamer', 'Reclinável premium', 899.90, 10),
('SSD 1TB', 'NVMe ultra rápido', 499.90, 25),
('Memória RAM 16GB', 'DDR4 3200MHz', 320.00, 60),
('Placa RTX 3060', '12GB GDDR6', 2200.00, 5),
('Fonte 750W', '80 Plus certificada', 450.00, 20);

INSERT INTO pedidos (usuario_id, status_pedido) VALUES
(1, 'Pago'),
(2, 'Pendente'),
(3, 'Enviado'),
(4, 'Pago'),
(5, 'Cancelado'),
(6, 'Pago'),
(7, 'Pendente'),
(8, 'Enviado'),
(9, 'Pago'),
(10, 'Pago');

INSERT INTO itens_pedidos (pedido_id, produto_id, quantidade, preco_unitario) VALUES
(1, 1, 2, 99.90),
(1, 2, 1, 199.90),
(2, 3, 1, 799.90),
(3, 4, 1, 3500.00),
(4, 5, 2, 150.00),
(5, 6, 1, 899.90),
(6, 7, 1, 499.90),
(7, 8, 2, 320.00),
(8, 9, 1, 2200.00),
(9, 10, 1, 450.00);


SELECT 
p.id AS pedido_id,
u.nome AS cliente,
pr.nome AS produtos,
ip.quantidade,
ip.preco_unitario,
(ip.quantidade * ip.preco_unitario) as subtotal
FROM pedidos p 
JOIN usuarios u ON p.usuario_id = u.id
JOIN itens_pedidos ip ON ip.pedido_id = p.id
JOIN produtos pr ON ip.produto_id = pr.id 
LIMIT  1000;

SELECT sum(quantidade * preco_unitario) AS total_geral
FROM itens_pedidos;

SELECT 
pedido_id,
SUM(quantidade * preco_unitario) AS total_pedido
FROM itens_pedidos
GROUP BY pedido_id;

SELECT 
    p.id AS pedido,
    u.nome,
    SUM(ip.quantidade * ip.preco_unitario) AS total
FROM pedidos p
JOIN usuarios u ON p.usuario_id = u.id
JOIN itens_pedidos ip ON ip.pedido_id = p.id
GROUP BY p.id, u.nome;

SELECT *
FROM usuarios
where nome like 'lucas%';

SELECT *
FROM produtos
where preco <500;

SELECT *
FROM usuarios
where senha like '123%';



 
 
