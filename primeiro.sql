-- traço traço => comentário
-- DDL
create table Instituicao (
	idInstituicao int not null auto_increment, -- Atributo
    nomeInstituicao  varchar(255) not null, -- Atributo
    enderecoInstituicao varchar(100) not null, -- Atributo
    telefoneInstuicao varchar(11) not null, -- Atributoinstituicaoinstituicaoinstituicao
    primary key(idInstituicao)
    );
    
CREATE TABLE Alunos (
idAluno int not null auto_increment,
nomeAluno varchar(60) not null,
matriculaAluno varchar(15) not null unique, -- Unique impede dois alunos com a mesma matricula
cursoAluno varchar(100) not null,
instituicaoId int not null,
PRIMARY KEY(idAluno),
FOREIGN KEY(instituicaoId) REFERENCES instituicao(idInstituicao)
);
