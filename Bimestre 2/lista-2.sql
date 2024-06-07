use avaliacao_22b;

-- 1 --
select *
from livros
where disponivel = 1;

-- 2 --
select *
from livros
where editora like "harpercollins";

-- 3 --
select *
from livros
where ano_publicacao between 2000 and 2010;

-- 4 -- 
select autor, count(titulo)
from livros
group by autor
having count(titulo) > 3;

-- 5 --
select *
from livros
where titulo like "%senhor%";

-- 6 --
select *
from livros
where categoria in ( "fantasia", "ficção científica", "fábula");

-- 7 --
select distinct idioma
from livros;

-- 8 --
select *
from livros
where quantidade_paginas between 200 and 400;

-- 9 --
select titulo, ano_publicacao
from livros
order by ano_publicacao