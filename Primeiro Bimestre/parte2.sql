use e_comerce;
  
insert into clientes values (null, 'Caio', 'Rua Cadrigo 139', 'caio@gmail.com', '(11) 99234-4893', '1980-07-13');
insert into clientes values (null, 'Roman', 'Rua Leichiv', 'goodra@gmail.com.br', '(11) 98252-4014', '1985-09-23');
insert into clientes values (null, 'Nora', 'Rua Conan 189', 'moca.ind@gmail.com', '(11) 93644-0696', '1972-10-21');
insert into clientes values (null, 'Luna', 'Rua São Castro 107', 'luna.carvalho@gmail.com', '(11) 91867-2059', '1990-02-03');
insert into clientes values (null, 'Mario', 'Rua Celavisa 098', 'carmeilinc@gmail.com', '(11) 96281-9813', '2000-01-29');
insert into clientes values (null, 'Adriana', 'Rua liminha 531', 'adriana.saraiva@gmail.com', '(11) 92714-5201', '1983-08-05');
insert into clientes values (null, 'Maria', 'Rua Oscar Freire 310', 'oliveira.peixoto@gmail.com', '(11) 94102-8130', '1991-04-17');
insert into clientes values (null, 'Victoria', 'Bairro Jardins 010', 'legacyinc@gmail.org', '(11) 95041-0017', '1979-08-03');
insert into clientes values (null, 'João', 'Vila Mariana 073', 'alves.silva@gmail.com', '(11) 97233-0135', '1986-12-09');
insert into clientes values (null, 'Rebecca', 'Vila San Pietro 713', 'pierro.oficial@gmail.com', '(11) 90973-1037', '1998-05-20');

Update clientes set endereço = 'Rua Manch 092', email = 'cario.leio@gmail.org', celular = '(11) 93012-0987' where id_cliente = 2;

select * from clientes;

insert into produtos values (null, 'Beringela', '5.99', 'A berinjela ou beringela é o fruto da planta Solanum melongena, uma solanaceae arbustiva originária da Índia, considerada de fácil cultivo nos trópicos.', '400');
insert into produtos values (null, 'Maça', '2.29', 'A maçã é o fruto da macieira, árvore da família Rosaceae, com tronco de casca parda, lisa e copa arredondada que chega a 10 m de altura.', '513');
insert into produtos values (null, 'Pera', '4.99', 'A pêra é o fruto originário da árvore denominada pereira. É cultivável em clima temperado e em regiões serranas de solo fértil.', '200');
insert into produtos values (null, 'Melancia', '29.99', 'Melancia é uma planta da família Cucurbitaceae e também o nome do seu fruto. Trata-se de uma trepadeira rastejante originária da África.', '318');
insert into produtos values (null, 'Queijo Mussarela', '6.90', 'Por ser originado do leite, o queijo é um alimento que apresenta alta concentração de proteínas, gordura, sais minerais e vitaminas.', '1000');
insert into produtos values (null, 'Alface Americana', '5.99', 'Alface (Lactuca sativa) é uma hortense anual ou bienal, utilizada na alimentação humana desde cerca de 500 a.C..', '800');
insert into produtos values (null, 'Tomate italiano', '1.05', 'O tomate é o fruto do tomateiro. Da sua família, fazem também parte as berinjelas, as pimentas e os pimentões, que integram a família das Solanáceas, além de algumas espécies não comestíveis.', '900');
insert into produtos values (null, 'Carne Vermelha - Patinho', '39.99', 'As carnes vermelhas incluem as de vaca, de vitela, de porco, de cordeiro, de carneiro, de cavalo ou de cabra.', '478');
insert into produtos values (null, 'Peito de Frango', '13.99', 'O peito de frango cozido sem pele é uma excelente fonte de proteínas, que é essencial para construir e reparar tecidos do corpo.', '617');
insert into produtos values (null, 'Feijão', '9.17', 'Os Feijões são plantas herbáceas, anuais, com morfologia variável, consoante as cultivares.', '2000');

update produtos set preco = '5.00' where id_produto = 10;

select * from produtos;

insert into pedidos values (null, '1', '2024-03-10', '17.97', '2024-03-15');
insert into pedidos values (null, '2', '2024-03-13', '34.50', '2024-03-14');
insert into pedidos values (null, '3', '2024-02-02', '239.94', '2024-02-09');
insert into pedidos values (null, '4', '2024-03-01', '45.85', '2024-03-03');
insert into pedidos values (null, '5', '2024-01-20', '111.92', '2024-01-25');
insert into pedidos values (null, '6', '2024-02-24', '34.35', '2024-02-26');
insert into pedidos values (null, '7', '2024-03-27', '99.80', '2024-03-31');
insert into pedidos values (null, '8', '2024-02-11', '5.99', '2024-02-12');
insert into pedidos values (null, '9', '2024-03-17', '12.60', '2024-03-18');
insert into pedidos values (null, '10', '2024-03-09', '29.99', '2024-03-11');

update pedidos set data_entrega_estimada = '2024-03-15' where numero_pedido = 10;

select * from pedidos;

insert into itens_pedido values (null, '1', '1', '3', '5.99', '17.97');
insert into itens_pedido values (null, '2', '5', '5', '6.90', '34.50');
insert into itens_pedido values (null, '3', '8', '6', '39.99', '239.94');
insert into itens_pedido values (null, '4', '10', '5', '9.17', '45.85');
insert into itens_pedido values (null, '5', '9', '8', '13.99', '111.92');
insert into itens_pedido values (null, '6', '2', '15', '2.29', '34.35');
insert into itens_pedido values (null, '7', '3', '20', '4.99', '99.80');
insert into itens_pedido values (null, '8', '6', '1', '5.99', '5.99');
insert into itens_pedido values (null, '9', '7', '12', '1.05', '12.60');
insert into itens_pedido values (null, '10', '4', '1', '29.99', '29.99');

update itens_pedido set valor_unitario = '5.00' where id_itens = 4;

select * from itens_pedido;

delete from itens_pedido where numero_pedido = 1;

delete from pedidos where numero_pedido = 1;

