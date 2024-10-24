-- Drop views (se houver)
DROP VIEW IF EXISTS view_name_1;
DROP VIEW IF EXISTS view_name_2;

-- Drop tables in the correct order considering foreign key dependencies
DROP TABLE IF EXISTS Indexacao;
DROP TABLE IF EXISTS Palavras_Chave;
DROP TABLE IF EXISTS Areas_de_Conhecimento;
DROP TABLE IF EXISTS Pedidos_Vendas;
DROP TABLE IF EXISTS Clientes;
DROP TABLE IF EXISTS Funcionarios;
DROP TABLE IF EXISTS Exemplares;
DROP TABLE IF EXISTS Obras;
DROP TABLE IF EXISTS Livros;
DROP TABLE IF EXISTS Autores;
DROP TABLE IF EXISTS Departamentos;

