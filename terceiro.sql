-- DML

insert into sistemaescolar.instituicao
(nomeInstituicao, enderecoInstituicao, telefoneInstuicao)
VALUES
('Senai - Cyber e IA', 'Rua Niterói, 180 - São Caetano do Sul', '4225-2001'),
('Etec Jorge Street', 'Rua do Paralelo, 898 - São Caetano do Sul', '2539-5002');

insert into sistemaescolar.alunos
(nomeAluno, matriculaAluno, cursoAluno, instituicaoId)
VALUES
('João Henrique', '147852', 'Programação Backend', 1),
('Matheus', '258741', 'Programação Backend', 1),
('João Vitor', '852369', 'Programação Backend', 1),
('Francisco', '963258', 'Programação Backend', 1),
('Sabrina', '789654', 'Programação Frontend', 1),
('Olivia', '654789', 'Programação Frontend', 1),
('Taylor', '123654', 'Banco de dados', 2),
('Britney', '741963', 'Programação C#', 2),
('Shania', '951486', 'Banco de dados', 2),
('Demi', '876594', 'Programação Fullstack', 2);

-- UPDADE
update alunos
 set matriculaAluno = '111111' 
 where matriculaAluno = '876594';

-- DELETE
delete from alunos
where matriculaAluno = '951486';

