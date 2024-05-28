use avaliacao_22b;

-- 1 --

insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values ("As Crônicas de Nárnia", "C.S Lewis", 1950, TRUE, "Fantasia", "978-0064471190", "HarperCollins", 768, "Inglês");

select * from Livros
where titulo = "As Crônicas de Nárnia";

-- 2 --

insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values ("Cem Anos de Solidão", "Gabriel Garcia Marquez", 1967, TRUE, "Ficção", '978-0241968581', "Penguin Books", 422, "Espanhol"), ("Harry Potter e a Pedra Filosofal", "J.K. Rowling", 1997, TRUE, "Fantasia", '978-0439708180', "Bloomsbury", 309, "Inglês"), ("O Senhor dos Anéis: A Sociedade do Anel", "J.R.R. Tolkien", 1954, TRUE, "Fantasia", '978-0618640157', "HarperCollins", 423, "Inglês");

-- 3 --

insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values ("Napoleão Bom na Party", "Elma Maria", 1503, TRUE, "História", "978-0064471191", "Shounen Pulo", 2, "Português");

-- 4 --

update Livros
set disponivel = false
where ano_publicacao < 2000;

-- 5 --

update Livros
set editora = "Plume Books"
where titulo = "1984";

-- 6 --

update Livros
set idioma = "Inglês"
where editora = "Penguin Books";

-- 7 --

update Livros
set titulo = "Harry Potter e a Pedra Filosofal (Edição Especial)"
where isbn = "978-0439708180";

-- 8 --

delete from Livros
where categoria = "Terror";

-- 9 --

delete from Livros
where idioma = "Francês" and ano_publicacao < 1970;

-- 10 --

delete from Livros
where titulo = "As Crônicas de Nárnia";

-- 11 --

delete from Livros
where editora = "Penguin Books";

-- 12 --

select * from Livros
where quantidade_paginas > 500;

-- 13 --

select count(categoria) from Livros
group by categoria;

-- 14 --

select * from Livros
limit 0,5;

-- 15 --

select count(quantidade_paginas) and sum(quantidade_pagina) from Livros
where categoria = "Drama";

-- 16 --

select avg(ano_publicacao) from Livros;

-- 17 --

SELECT max(ano_publicacao), min(ano_publicacao)
FROM Livros;

-- 18 --

select * from Livros
order by ano_publicacao desc;

-- 19 --

select titulo from Livros
where idioma = "Inglês"
UNION
select titulo from Livros
where idioma = "Português";

-- 20 --

select * from Livros
where autor = "George Orwell";