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

-- 4 Exibir o nome e o cargo dos funcionários de um determinado departamento.
SELECT f.nome, f.cargo
FROM Funcionarios f
JOIN Departamentos d ON f.idDepartamento = d.idDepartamento
WHERE d.nome = 'TI';

-- 5 Listar todos os exemplares de livros disponíveis em bom estado.
SELECT l.titulo, e.numSerie, e.estado
FROM Exemplares e
JOIN Livros l ON e.ISBN = l.ISBN
WHERE e.estado = 'Bom';

-- 6 Listar todos os autores e os livros que eles escreveram.
SELECT a.nome, l.titulo
FROM Autores a
JOIN Livros l ON a.idAutor = l.idAutor;

-- 7 Listar o total de pedidos realizados por cada cliente.
SELECT c.nome, COUNT(p.idPedido) AS Total_Pedidos
FROM Clientes c
JOIN PedidosVendas p ON c.idCliente = p.idCliente
GROUP BY c.nome;

-- 8 Consultar a quantidade de livros por cada área de conhecimento.
SELECT ac.descricao AS area_conhecimento, COUNT(l.ISBN) AS qtd_livros
FROM Livros l
JOIN Indexacao i ON l.ISBN = i.ISBN
JOIN AreasConhecimento ac ON i.codigoPalavra = ac.codigoArea
GROUP BY ac.descricao;

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

-- 14 Listar os funcionários que possuem mais de 5 anos de trabalho na empresa.
SELECT nome, cargo, dataAdmissao
FROM Funcionarios
WHERE YEAR(CURDATE()) - YEAR(dataAdmissao) > 5;

-- 15 Listar os livros junto com as palavras-chave associadas.
SELECT l.titulo, pk.descricao AS palavra_chave
FROM Livros l
JOIN Indexacao i ON l.ISBN = i.ISBN
JOIN PalavrasChave pk ON i.codigoPalavra = pk.codigoPalavra;

-- 16 Listar os exemplares de um livro específico que estão em reparo.
SELECT l.titulo, e.numSerie, e.estado
FROM Livros l
JOIN Exemplares e ON l.ISBN = e.ISBN
WHERE e.estado = 'Em reparo' AND l.titulo = 'O Senhor dos Anéis';

-- 17 Consultar os livros disponíveis que estão associados à área de tecnologia.
SELECT l.titulo
FROM Livros l
JOIN Indexacao i ON l.ISBN = i.ISBN
JOIN AreasConhecimento ac ON i.codigoPalavra = ac.codigoArea
WHERE ac.descricao = 'Tecnologia';

-- 18 Listar os clientes que ainda não fizeram pedidos (LEFT JOIN).
SELECT c.nome
FROM Clientes c
LEFT JOIN PedidosVendas p ON c.idCliente = p.idCliente
WHERE p.idPedido IS NULL;

-- 19 Exibir os pedidos realizados em um período específico e seus respectivos clientes.
SELECT c.nome, p.dataTransacao, p.statusPedido
FROM PedidosVendas p
JOIN Clientes c ON p.idCliente = c.idCliente
WHERE p.dataTransacao BETWEEN '2024-01-01' AND '2024-12-31';

-- 20 Listar os livros que não possuem exemplares (LEFT JOIN).
SELECT l.titulo
FROM Livros l
LEFT JOIN Exemplares e ON l.ISBN = e.ISBN
WHERE e.numSerie IS NULL;








