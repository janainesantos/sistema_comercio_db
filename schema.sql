-- Criação da tabela produtos
CREATE TABLE produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL DEFAULT 0
);

-- Inserção de registros na tabela produtos
INSERT INTO produtos (nome, descricao, preco, estoque) VALUES
('Café Torrado 500g', 'Café gourmet torrado em grãos', 15.50, 50),
('Livro: Cem Anos de Solidão', 'Romance clássico de Gabriel García Márquez', 35.00, 30),
('Bolo de Chocolate', 'Fatia de bolo de chocolate com cobertura', 8.00, 20);

-- Criação da tabela pedidos
CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL DEFAULT 1,
    valor_total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

-- Inserção de registros na tabela pedidos
INSERT INTO pedidos (id_produto, quantidade, valor_total) VALUES
(1, 2, 31.00),
(2, 1, 35.00),
(3, 3, 24.00);