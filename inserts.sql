INSERT INTO cliente (nome, telefone, email, endereco) VALUES
('Ana Silva','(51)98765-4321','ana@mail.com','Rua A, 123'),
('Mariana Costa','(11)99988-7766','mari@mail.com','Av B, 45'),
('Lucas Pereira','(21)98877-6655','lucas@mail.com','Rua C, 10');

INSERT INTO fornecedor (nome, telefone, email, contato) VALUES
('Fios Brasil','(11)3333-4444','contato@fiosbr.com','Comercial'),
('Casa do Agulheiro','(21)2222-3333','vendas@agulha.com','Vendas');

INSERT INTO material (nome, tipo, unidade_medida, quantidade_estoque) VALUES
('Linha Algodao 4mm','fio','metro',100.000),
('Fibra siliconada','enchimento','grama',5000.000),
('Olhos de Plastico','acessorio','un',200);

INSERT INTO produto (nome, descricao, categoria, preco_venda, quantidade_estoque) VALUES
('Amigurumi Coelho','Coelho em crochê 20cm','amigurumi',75.00,5),
('Chaveiro Panda','Chaveiro de croche','chaveiro',18.00,20),
('Bolsa Infantil','Bolsa bordada infantil','bolsa',55.00,3);

INSERT INTO produto_material (produto_id, material_id, quantidade_necessaria) VALUES
(1,1,2.5),
(1,2,50),
(1,3,2),
(2,1,0.6),
(3,1,3.0);

INSERT INTO compra_material (fornecedor_id, data_compra, total_compra) VALUES
(1,'2025-11-20',250.00),
(2,'2025-11-22',120.00);

INSERT INTO item_compra (compra_id, material_id, quantidade, preco_unitario) VALUES
(1,1,200.000,2.40),
(1,2,3000.000,0.009),
(2,3,100,0.38);

INSERT INTO pedido (cliente_id, data_pedido, total_pedido, status) VALUES
(1,'2025-11-28 10:15:00',93.00,'Pago'),
(2,'2025-11-29 15:40:00',18.00,'Pendente');

INSERT INTO item_pedido (pedido_id, produto_id, quantidade, preco_unitario) VALUES
(1,1,1,75.00),
(1,2,1,18.00),
(2,2,1,18.00);

INSERT INTO encomenda_custom (cliente_id, descricao_requisito, imagem_referencia, data_pedido, prazo_entrega, valor_orcamento, status_encomenda, pedido_id) VALUES
(1,'Amigurumi personagem X 25cm','/img/ref1.jpg','2025-11-25','2025-12-10',120.00,'Em produção',NULL),
(3,'Bolsa bordada personalizada','/img/ref2.jpg','2025-11-26','2025-12-05',70.00,'Aberta',2);
