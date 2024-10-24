UPDATE Funcionarios
SET endereco = 'Rua Nova, 123'
WHERE nome = 'Patrícia Gomes';

UPDATE PedidosVendas
SET statusPedido = 'Em Processamento'
WHERE idPedido = 12;

UPDATE Livros
SET descricao = 'Um livro que explora as tendências da inteligência artificial.'
WHERE ISBN = '9783333333333';

UPDATE Livros
SET idAutor = 5
WHERE ISBN = '9782222222222';


UPDATE Funcionarios
SET telefone = '819987654321'
WHERE nome = 'Lucas Santos';

UPDATE Exemplares
SET localizacao = 'Armazém Principal'
WHERE numSerie IN (2, 4, 7);

UPDATE PedidosVendas
SET statusPedido = 'Entregue'
WHERE idPedido IN (4, 5, 6);

UPDATE Livros
SET data_publicacao = '2022-01-15'
WHERE ISBN = '9781111111111';

UPDATE Funcionarios
SET cargo = 'Coordenador'
WHERE nome = 'Ana Costa';


UPDATE PedidosVendas
SET detalhePagamento = 'Cartão de Crédito'
WHERE idPedido = 7;

UPDATE Exemplares
SET estado = 'Vendido'
WHERE numSerie IN (12, 15, 18);

UPDATE Clientes
SET email = 'juliana_novoemail@example.com'
WHERE nome = 'Juliana Ferreira';

UPDATE PedidosVendas
SET statusPedido = 'Cancelado'
WHERE idPedido = 10;


UPDATE Livros
SET titulo = 'A Jornada dos Dados'
WHERE ISBN = '9781234567890';

UPDATE Funcionarios
SET cargo = 'Gerente de Vendas'
WHERE nome = 'Carlos Almeida';

UPDATE Exemplares
SET estado = 'Em reparo'
WHERE numSerie = 5;

UPDATE Exemplares
SET estado = 'Em reparo'
WHERE numSerie = 5;

UPDATE PedidosVendas
SET statusPedido = 'Enviado'
WHERE idPedido = 3;

UPDATE Clientes
SET telefone = '819900000000'
WHERE nome = 'Maria Silva';
