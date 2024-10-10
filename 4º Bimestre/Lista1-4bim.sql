use db_atividade_view;

-- Ex.1
create view Alunos_Comp as
select 
aluno.nome,
disciplina.nome as disciplina,
curso.nome as curso
from aluno join disciplina join curso;

-- Ex.2
create view total_de_alunos as
select 
disciplina.nome as disciplina,
count(aluno.id_aluno) as quantidade
FROM disciplina join aluno group by disciplina;

-- Ex.3
create view status_das_disciplinas as
select	
aluno.nome as aluno,
disciplina.nome as disciplina,
matricula.status
from matricula join ALUNO on aluno.id_aluno = matricula.id_aluno join disciplina on disciplina.id_disciplina = matricula.id_disciplina 
inner join curso on curso.id_curso = disciplina.id_curso;

-- Ex. 4
create view comp_professores as
select	
professor.nome as professor,
disciplina.nome as disciplina,
turma.horario as horario
from turma join professor on professor.id_professor = turma.id_professor join disciplina on disciplina.id_disciplina = turma.id_disciplina;

-- Ex. 5
select	
nome,
data_nascimento
from aluno
where (DATEDIFF(CURDATE(), data_nascimento) /365) > 20;

-- Ex. 6
create view comp_curso as
select	
curso.nome as curso,
COUNT(disciplina.id_disciplina) AS disc_total,
curso.carga_horaria
from curso join disciplina on disciplina.id_curso = curso.id_curso 
GROUP BY
curso.nome,
curso.carga_horaria;

-- Ex. 7
create view esp_professor as
select	
nome,
especialidade
from professor;

-- Ex. 8
create view alunos_com_multidisciolina as
select	
aluno.nome
from matricula join aluno on aluno.id_aluno = matricula.id_aluno
GROUP BY aluno.nome having COUNT(matricula.id_disciplina) > 1;

-- Ex. 9
create view concluidos as
select 
aluno.nome,
COUNT(matricula.status)
from matricula join aluno on aluno.id_aluno = matricula.id_aluno
WHERE	matricula.status LIKE ("C%")
GROUP BY aluno.nome;

-- Ex. 10
create view turmas_semestrea as
select id_turma
from turma
WHERE semestre LIKE '2024.1'
;

-- Ex. 11
create view trancadas as
select aluno.nome
from matricula join aluno on aluno.id_aluno = matricula.id_aluno
WHERE	matricula.status LIKE ("T%")
GROUP BY aluno.nome;

-- Ex. 12
create view disc_sem_matriculas as
select disciplina.nome
from disciplina left join matricula on matricula.id_disciplina = disciplina.id_disciplina
WHERE matricula.id_disciplina IS NULL;

-- Ex. 13
create view console_status_matricula as
select
status,
COUNT(id_aluno)	AS qnt_aluno
from matricula
GROUP BY status;

-- Ex. 14
create view prof_controle as
select	
especialidade,
COUNT(id_professor)	as qnt_prof
from professor
GROUP BY especialidade;

-- Ex. 15
create view aluno_idade as
select
nome,
FORMAT((DATEDIFF(CURDATE(), data_nascimento) /365), 0) AS idade
from aluno;

-- Ex. 16
create view ultima_matricula_aluno as
select
aluno.nome,
MAX(matricula.data_matricula) as ult_matricula
from matricula join aluno on aluno.id_aluno = matricula.id_aluno
GROUP BY aluno.nome;

-- Ex. 17
create view discplina_cursos as
select
disciplina.nome as disc,
curso.nome as curso
from disciplina join curso on curso.id_curso = disciplina.id_curso
WHERE curso.nome LIKE 'Engenharia de Software';

-- Ex. 18
create view professores_sem_aula as
select
professor.nome
from turma left join professor on professor.id_professor = turma.id_professor
WHERE professor.id_professor IS NULL;

-- Ex. 19
create view aluno_filtrado as
select
nome,
CPF,
email
from aluno;

-- Ex. 20
create view qnt_disc_prof as
select
professor.nome as professor,
COUNT(id_disciplina) as	qnt_disc 
from professor join turma on turma.id_professor = professor.id_professor
GROUP BY professor.nome;