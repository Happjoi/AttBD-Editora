-- Drop views (se houver)
DROP VIEW IF EXISTS view_name_1;
DROP VIEW IF EXISTS view_name_2;
-- Adicionar mais views conforme necessário

-- Drop procedures (se houver)
DROP PROCEDURE IF EXISTS procedure_name_1;
DROP PROCEDURE IF EXISTS procedure_name_2;
-- Adicionar mais procedures conforme necessário

-- Drop functions (se houver)
DROP FUNCTION IF EXISTS function_name_1;
DROP FUNCTION IF EXISTS function_name_2;
-- Adicionar mais functions conforme necessário

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

-- If there are sequences or other dependencies like triggers, you should also drop them (optional)
DROP SEQUENCE IF EXISTS sequence_name;
DROP TRIGGER IF EXISTS trigger_name;