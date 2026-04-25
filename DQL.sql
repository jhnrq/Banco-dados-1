-- DQL

SELECT * FROM Alunos; -- retorna os dados
SELECT nomeInstituicao, enderecoInstituicao FROM instituicao;

-- where -> filtragem
SELECT nomeAluno, cursoAluno FROM alunos where cursoAluno = 'Programação Backend';

describe alunos; -- retorna as caracteristicas da tabela

select * from instituicao;

set sql_safe_updates = 0; -- desativar o safe mode update

-- total de alunos por curso
select cursoAluno, count(*) as qtdAlunos from alunos group by cursoAluno order by qtdAlunos desc;

-- os alunos e sua instituição de ensino
select nomeAluno, cursoAluno, nomeInstituicao from alunos join instituicao on alunos.instituicaoId = instituicao.idInstituicao;

-- total de alunos por instituicao
select i.nomeInstituicao, count(*) as qtdAlunos from instituicao i join alunos a on i.idInstituicao = a.instituicaoId group by i.nomeInstituicao;

-- exiba quantos alunos existem em um curso x da instituicao y
select cursoAluno, nomeInstituicao, count(*) as qtdAlunos from alunos a join instituicao i on a.instituicaoId = i.idInstituicao group by i.nomeInstituicao, a.cursoAluno;

select
a.nomeAluno as Aluno,
a.cursoAluno as Curso,
i.nomeInstituicao as Instituicao
from alunos a
join instituicao i on a.instituicaoId = i.idInstituicao
where i.idInstituicao = 1;

