-- 1 View: Livros e seus Autores
CREATE VIEW vw_Livros_Autores_Editoras AS
SELECT l.titulo, a.nome AS autor, d.nome AS editora
FROM Livros l
JOIN Autores a ON l.idAutor = a.idAutor
JOIN Departamentos d ON l.idEditora = d.idDepartamento;

-- 2 View: Clientes com Pedidos Pagos
CREATE VIEW vw_Clientes_Pedidos_Pagos AS
SELECT c.nome, p.dataTransacao, p.statusPedido
FROM Clientes c
JOIN PedidosVendas p ON c.idCliente = p.idCliente
WHERE p.statusPedido = 'Pago';

-- 3 View: Livros com Mais de 400 Páginas
CREATE VIEW vw_Livros_Mais400Paginas AS
SELECT titulo, num_paginas
FROM Livros
WHERE num_paginas > 400;

-- 4 View: Funcionários por Departamento
CREATE VIEW vw_Funcionarios_Departamento AS
SELECT f.nome, f.cargo, d.nome AS departamento
FROM Funcionarios f
JOIN Departamentos d ON f.idDepartamento = d.idDepartamento;

-- 5 View: Exemplares de Livros Disponíveis
CREATE VIEW vw_Exemplares_Disponiveis AS
SELECT l.titulo, e.numSerie, e.estado
FROM Exemplares e
JOIN Livros l ON e.ISBN = l.ISBN
WHERE e.estado = 'Bom';

-- 6 View: Autores e seus Livros
CREATE VIEW vw_Autores_Livros AS
SELECT a.nome AS autor, l.titulo
FROM Autores a
JOIN Livros l ON a.idAutor = l.idAutor;

-- 7 View: Total de Pedidos por Cliente
CREATE VIEW vw_Total_Pedidos_Clientes AS
SELECT c.nome, COUNT(p.idPedido) AS Total_Pedidos
FROM Clientes c
JOIN PedidosVendas p ON c.idCliente = p.idCliente
GROUP BY c.nome;

-- 8 View: Quantidade de Livros por Área de Conhecimento
CREATE VIEW vw_Livros_Area_Conhecimento AS
SELECT ac.descricao AS area_conhecimento, COUNT(l.ISBN) AS qtd_livros
FROM Livros l
JOIN Indexacao i ON l.ISBN = i.ISBN
JOIN AreasConhecimento ac ON i.codigoPalavra = ac.codigoArea
GROUP BY ac.descricao;

-- 9 View: Detalhes de Pagamentos dos Pedidos
CREATE VIEW vw_Detalhes_Pagamento AS
SELECT p.idPedido, p.detalhePagamento, c.nome AS cliente, p.statusPedido
FROM PedidosVendas p
JOIN Clientes c ON p.idCliente = c.idCliente;

-- 10 View: Clientes sem Pedidos
CREATE VIEW vw_Clientes_Sem_Pedidos AS
SELECT c.nome
FROM Clientes c
LEFT JOIN PedidosVendas p ON c.idCliente = p.idCliente
WHERE p.idPedido IS NULL;

