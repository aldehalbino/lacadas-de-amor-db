CREATE TABLE cliente (
  cliente_id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  telefone VARCHAR(20),
  email VARCHAR(100),
  endereco VARCHAR(200)
) ENGINE=InnoDB;

CREATE TABLE fornecedor (
  fornecedor_id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  telefone VARCHAR(20),
  email VARCHAR(100),
  contato VARCHAR(100)
) ENGINE=InnoDB;

CREATE TABLE produto (
  produto_id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(120) NOT NULL,
  descricao TEXT,
  categoria VARCHAR(60),
  preco_venda DECIMAL(10,2),
  quantidade_estoque INT DEFAULT 0
) ENGINE=InnoDB;

CREATE TABLE material (
  material_id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(120) NOT NULL,
  tipo VARCHAR(50),
  unidade_medida VARCHAR(20),
  quantidade_estoque DECIMAL(10,3) DEFAULT 0
) ENGINE=InnoDB;

CREATE TABLE pedido (
  pedido_id INT AUTO_INCREMENT PRIMARY KEY,
  cliente_id INT NOT NULL,
  data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
  total_pedido DECIMAL(12,2) DEFAULT 0.00,
  status VARCHAR(30) DEFAULT 'Pendente',
  CONSTRAINT fk_pedido_cliente FOREIGN KEY (cliente_id)
    REFERENCES cliente(cliente_id)
    ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE item_pedido (
  item_pedido_id INT AUTO_INCREMENT PRIMARY KEY_
