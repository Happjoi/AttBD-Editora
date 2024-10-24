-- 1 Listar todos os livros junto com o nome dos autores e editoras.
SELECT l.titulo, a.nome AS autor, d.nome AS editora
FROM Livros l
JOIN Autores a ON l.idAutor = a.idAutor
JOIN Departamentos d ON l.idEditora = d.idDepartamento;
-- 2 Listar todos os clientes que realizaram pedidos com o status 'Pago'.
SELECT c.nome, p.dataTransacao, p.statusPedido
FROM Clientes c
JOIN PedidosVendas p ON c.idCliente = p.idCliente
WHERE p.statusPedido = 'Pago';
-- 3 Consultar quais livros possuem mais de 400 páginas.
SELECT titulo, num_paginas
FROM Livros
WHERE num_paginas > 400;
-- 4 Exibir o nome e o cargo de um funcionário de um determinado número.

select telefone from Funcionarios;

SELECT nome, cargo
FROM Funcionarios
WHERE telefone = 819945678123;

-- 5 Listar todos os exemplares de livros disponíveis em bom estado.
SELECT l.titulo, e.numSerie, e.estado
FROM Exemplares e
JOIN Livros l ON e.ISBN = l.ISBN
WHERE e.estado = 'Novo';
-- 6 Listar todos os autores e os livros que eles escreveram.
SELECT a.nome, l.titulo
FROM Autores a
JOIN Livros l ON a.idAutor = l.idAutor;
-- 7 Listar o total de pedidos realizados por cada cliente.
SELECT c.nome, COUNT(p.idPedido) AS Total_Pedidos
FROM Clientes c
JOIN PedidosVendas p ON c.idCliente = p.idCliente
GROUP BY c.nome;
-- 8 Consultar a quantidade de livros por cada editora.

SELECT idEditora, COUNT(*) AS quantidade_livros_por_editora
FROM Livros
GROUP BY idEditora;

select * from Livros;

-- 9 Consultar os detalhes de pagamento de todos os pedidos.
SELECT p.idPedido, p.detalhePagamento, c.nome AS cliente, p.statusPedido
FROM PedidosVendas p
JOIN Clientes c ON p.idCliente = c.idCliente;
-- 10 Listar todos os funcionários e seus respectivos departamentos.

SELECT f.nome, f.cargo, d.nome AS departamento
FROM Funcionarios f
JOIN Departamentos d ON f.idDepartamento = d.idDepartamento;

-- 11 Consultar todos os livros e seus exemplares junto com o estado de cada exemplar.
SELECT l.titulo, e.numSerie, e.estado
FROM Livros l
JOIN Exemplares e ON l.ISBN = e.ISBN;
-- 12 Exibir a lista de clientes que fizeram pedidos e a data do último pedido.
SELECT c.nome, MAX(p.dataTransacao) AS ultima_compra
FROM Clientes c
JOIN PedidosVendas p ON c.idCliente = p.idCliente
GROUP BY c.nome;
-- 13 Listar o nome dos livros que possuem mais de um exemplar.
SELECT l.titulo, COUNT(e.numSerie) AS qtd_exemplares
FROM Livros l
JOIN Exemplares e ON l.ISBN = e.ISBN
GROUP BY l.titulo
HAVING COUNT(e.numSerie) > 1;
-- 14 Listar os funcionários que possuem cargos definidos.

SELECT nome, cargo
FROM Funcionarios
WHERE cargo IS NOT NULL; 


-- 15 Listar os livros junto com as palavras-chave associadas.
SELECT l.titulo, pk.descricao AS palavra_chave
FROM Livros l
JOIN Indexacao i ON l.ISBN = i.ISBN
JOIN PalavrasChave pk ON i.codigoPalavra = pk.codigoPalavra;
-- 16 Consultar todos os Cliente e a quais Pedidos pertencem --

SELECT pv.idPedido, c.nome AS cliente
FROM PedidosVendas pv
JOIN Clientes c ON pv.idCliente = c.idCliente;

-- 17 Consultar a lista de pedidos com data de transação e status feitos por um determinado cliente.

SELECT p.idPedido, p.dataTransacao, p.statusPedido
FROM pedidosvendas p
JOIN Clientes c ON p.idCliente = c.idCliente
WHERE c.nome = 'Maria Oliveira';

-- 18 Listar os clientes que ainda não fizeram pedidos (LEFT JOIN).
SELECT c.nome
FROM Clientes c
LEFT JOIN PedidosVendas p ON c.idCliente = p.idCliente
WHERE p.idPedido IS NULL;

-- Diferença 

SELECT c.nome
FROM Clientes c
LEFT JOIN PedidosVendas p ON c.idCliente = p.idCliente;
-- 19 Exibir os pedidos realizados em um período específico e seus respectivos clientes.
SELECT c.nome, p.dataTransacao, p.statusPedido
FROM PedidosVendas p
JOIN Clientes c ON p.idCliente = c.idCliente
WHERE p.dataTransacao BETWEEN '2024-01-01' AND '2024-12-31';
