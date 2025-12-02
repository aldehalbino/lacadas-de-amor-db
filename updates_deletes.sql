UPDATE pedido SET status = 'Entregue' WHERE pedido_id = 1;

UPDATE produto SET preco_venda = 60.00 WHERE produto_id = 3;

UPDATE material SET quantidade_estoque = quantidade_estoque + 200 WHERE material_id = 1;

DELETE FROM item_pedido WHERE item_pedido_id = 3;

DELETE FROM encomenda_custom WHERE encomenda_id = 5;

DELETE FROM produto WHERE produto_id = 99;
