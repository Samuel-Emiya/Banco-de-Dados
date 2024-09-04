create table Produtos (
	ID_Produto int primary key,
    Nome_Produto varchar(100),
    Preço decimal (6, 2),
    Categoria varchar(100)
    
);

create table Estoque (
	ID_Estoque int primary key,
    ID_Produto int,
    FOREIGN KEY (ID_Produto) REFERENCES Produtos(ID_Produto),
    Quantidade int,
    Localizacao varchar(100)
);

insert into Produtos (ID_Produto, Nome_Produto, Preço, Categoria) values (1, 'Smartphone X1', 1500, 'Eletrônicos');
insert into Produtos (ID_Produto, Nome_Produto, Preço, Categoria) values (2, 'Notebook Pro', 3500, 'Eletrônicos');
insert into Produtos (ID_Produto, Nome_Produto, Preço, Categoria) values (3, 'Cadeira Gamer', 800, 'Móveis');
insert into Produtos (ID_Produto, Nome_Produto, Preço, Categoria) values (4, 'Fone de Ouvido', 200, 'Acessórios');
insert into Produtos (ID_Produto, Nome_Produto, Preço, Categoria) values (5, 'Mesa de Escritório', 1200, 'Móveis');

insert into Estoque (ID_Estoque, ID_Produto, Quantidade, Localizacao) values (1, 1, 50, 'Depósito A');
insert into Estoque (ID_Estoque, ID_Produto, Quantidade, Localizacao) values (2, 2, 30, 'Depósito B');
insert into Estoque (ID_Estoque, ID_Produto, Quantidade, Localizacao) values (3, 3, 20, 'Depósito A');
insert into Estoque (ID_Estoque, ID_Produto, Quantidade, Localizacao) values (2, 2, 30, 'Depósito B');
insert into Estoque (ID_Estoque, ID_Produto, Quantidade, Localizacao) values (4, 4, 100, 'Depósito C');
insert into Estoque (ID_Estoque, ID_Produto, Quantidade, Localizacao) values (5, 5, 10, 'Depósito B');

-- Prova
-- EX 1
select 
Produtos.Nome_Produto,
Estoque.Quantidade
from Produtos join Estoque on Produtos.ID_Produto = Estoque.ID_Produto;

-- EX 2
select
Produtos.Nome_Produto,
Estoque.Localizacao
from Produtos join Estoque on Produtos.ID_Produto = Estoque.ID_Produto;

-- EX 3
select
Produtos.Nome_Produto,
Estoque.Quantidade
from Produtos join Estoque on Produtos.ID_Produto = Estoque.ID_Produto where Produtos.Categoria = 'Eletrônicos';

-- EX 4
select
Produtos.Nome_Produto,
Estoque.Localizacao
from Produtos join Estoque on Produtos.ID_Produto = Estoque.ID_Produto where Produtos.Preço > 1000;

-- EX 5
select
Produtos.Nome_Produto,
Produtos.Preço,
Estoque.Quantidade
from Produtos join Estoque on Produtos.ID_Produto = Estoque.ID_Produto order by Estoque.Quantidade desc;

