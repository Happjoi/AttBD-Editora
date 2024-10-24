-- Scripts para Alterar DDL

-- Adicionando uma nova coluna para armazenar o idioma de publicação do livro
ALTER TABLE Livros ADD COLUMN idioma VARCHAR(50);

-- Modificando o tipo de dado da coluna telefone em Clientes para aumentar o tamanho
ALTER TABLE Clientes MODIFY telefone VARCHAR(20);

-- Removendo a coluna descricao de AreasConhecimento
ALTER TABLE AreasConhecimento DROP COLUMN descricao;

-- Adicionando uma coluna para armazenar a data de contratação dos funcionários
ALTER TABLE Funcionarios ADD COLUMN data_contratacao DATE;

-- Alterando o tipo de dado da coluna estado em Exemplares para ENUM
ALTER TABLE Exemplares MODIFY estado ENUM('Novo', 'Usado', 'Danificado');

-- Adicionando uma coluna para armazenar o CPF dos funcionários
ALTER TABLE Funcionarios ADD COLUMN cpf CHAR(11);

-- Adicionando uma restrição UNIQUE para o email de Clientes
ALTER TABLE Clientes ADD CONSTRAINT UNIQUE (email);

-- Alterando o tamanho da coluna nome em Autores para 200 caracteres
ALTER TABLE Autores MODIFY nome VARCHAR(200);

-- Adicionando uma coluna de 'data_expiracao' em PedidosVendas para controlar validade de pagamento
ALTER TABLE PedidosVendas ADD COLUMN data_expiracao DATE;

-- Modificando a coluna detalhePagamento em PedidosVendas para VARCHAR(500) ao invés de TEXT
ALTER TABLE PedidosVendas MODIFY detalhePagamento VARCHAR(500);
