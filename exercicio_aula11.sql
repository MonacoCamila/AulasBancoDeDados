/*1) Queremos ter uma lista de todas as categorias*/
SELECT * FROM Categorias;

/*2) Como as categorias não possuem imagens, você está interessado em obter apenas um Nome e descrição da lista de categorias.*/
SELECT CategoriaNome, Descricao FROM Categorias;

/*3) Obtenha uma lista dos produtos.*/
SELECT * FROM produtos;

/*4) Existem produtos descontinuados? (Descontinuado = 1). Não*/
SELECT * FROM produtos
WHERE descontinuado = 1;

/*5) Na sexta-feira, você deve se reunir com o fornecedor nr. 8. 
Quais são os produtos que eles fornecem? 4 produtos, chocolate e biscoitos.*/

SELECT * FROM produtos
WHERE ProvedorID = 8;

/*6) Queremos saber todos os produtos cujo preço unitário se encontra entre 10 e 22*/

select * from produtos
where PrecoUnitario between 10 and 22;

/*7) Fica definido que um produto deve ser solicitado ao fornecedor se suas unidades em estoque forem inferiores ao nível de reabastecimento. 
Existem produtos a solicitar? Sim.*/

select * from produtos where UnidadesEstoque < NivelReabastecimento;

/*8) Você quer saber todos os produtos da lista anterior, mas que as unidades pedidas sejam iguais a zero.*/ 

select * from produtos where UnidadesEstoque < NivelReabastecimento
AND UnidadesPedidas = 0;

/*CLIENTES*/
/*1) Obtenha uma lista de todos os clientes com contato, empresa, cargo, País. Classifique a lista por país.*/

SELECT * FROM Clientes
ORDER BY pais;

/*2) Queremos atender todos os clientes que possuem o título de  “Proprietário". Esse título estará em inglês (Owner).*/ 

SELECT * FROM Clientes WHERE Titulo = 'Owner';

/*3) A operadora de telefonia atendeu um cliente e não lembra o nome dele. Sabe apenas que começa com "C". 
Podemos ajudá-lo a obter uma lista com todos os contatos que começam com a letra C?*/

select * from Clientes
where Contato like 'C%';

/*FATURAS*/
/*1) Obtenha uma lista de todas as faturas, ordenadas por data da fatura em ordem ascendente.*/

SELECT*FROM faturas ORDER BY DataFatura ASC;

/*2) Agora é necessário uma lista de faturas com o país de envio "EUA" e que a FormaeEnvio seja diferente de 3.*/

SELECT*FROM faturas WHERE PaisEnvio = 'USA' AND FormaEnvio <> 3;

/*3) O cliente 'GOURL' fez um pedido? Sim.*/

SELECT * FROM faturas WHERE ClienteID = 'GOURL';

/*4) Você deseja visualizar todas as faturas dos funcionários 2, 3, 5, 8 e 9.*/

SELECT * FROM faturas WHERE EmpregadoID IN (2, 3, 5, 8, 9) GROUP BY EmpregadoID;

/*QUERIES 1 - PARTE 2*/
/*PRODUTOS*/

/*1) Obtenha a lista de todos os produtos em ordem decrescente por preço unitário.*/

SELECT * FROM produtos ORDER BY PrecoUnitario DESC;

/*2) Obtenha a lista dos 5 melhores produtos cujo preço unitário é o mais "Caro".*/

SELECT * FROM produtos ORDER BY PrecoUnitario ASC LIMIT 5;

/*3) Obtenha um top 10 dos produtos com mais unidades em estoque.*/

SELECT*FROM produtos order by UnidadesEstoque DESC LIMIT 10;

/*FATURAS*/
/*1) Obtenha uma lista de FaturaId, Produto, Quantidade.*/

SELECT * FROM faturas















