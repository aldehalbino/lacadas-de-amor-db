SELECT p.pedido_id, c.nome AS cliente, p.data_pedido, p.total_pedido, p.status
FROM pedido p
JOIN cliente c ON p.cliente_id = c.cliente_id;

SELECT ip.item_pedido_id, pr.nome AS produto, ip.quantidade, ip.preco_unitario
FROM item_pedido ip
JOIN produto pr ON ip.produto_id = pr.produto_id
WHERE pedido_id = 1;

SELECT pr.nome AS produto, m.nome AS material, pm.quantidade_necessaria
FROM produto pr
JOIN produto_material pm ON pr.produto_id = pm.produto_id
JOIN material m ON pm.material_id = m.material_id
WHERE pr.produto_id = 1;

SELECT f.nome AS fornecedor, SUM(cm.total_compra) AS total_mes
FROM compra_material cm
JOIN fornecedor f ON cm.fornecedor_id = f.fornecedor_id
GROUP BY f.fornecedor_id;

SELECT nome, quantidade_estoque
FROM produto
WHERE quantidade_estoque <= 5;

SELECT e.encomenda_id, c.nome AS cliente, e.descricao_requisito, e.prazo_entrega
FROM encomenda_custom e
JOIN cliente c ON e.cliente_id = c.cliente_id
WHERE e.status_encomenda <> 'Concluída';
