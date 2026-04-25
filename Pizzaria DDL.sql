create table Cliente(
idCliente int not null auto_increment,
nomeCliente varchar(100) not null,
telefoneCliente varchar(20) not null,
emailCliente varchar(60) unique not null,
enderecoCliente varchar (100) not null,
dataCadastro date not null,
primary key (idCliente)
);

create table Funcionario(
idFuncionario int not null auto_increment,
nomeFuncionario varchar(100) not null,
cargo varchar(15) not null,
salario decimal(7,2) not null,
dataAdmissao date not null,
primary key (idFuncionario)
);

create table Produto(
idProduto int not null auto_increment,
nomeProduto varchar (30) not null,
categoria varchar(15) not null,
preco decimal(6,2) not null,
ativo boolean not null,
primary key (idProduto)
);

create table Pedido(
idPedido int not null auto_increment,
dataPedido date not null,
statusPedido varchar(15) not null,
tipoEntrega varchar(15) not null,
total decimal (6,2) not null,
clienteId int not null auto_increment,
funcionarioId int not null auto_increment,
produtoId int not null auto_increment,
FOREIGN KEY(funcionarioId) REFERENCES Funcionario(idFuncionario),
FOREIGN KEY(produtoId) REFERENCES Produto(idProduto),
FOREIGN KEY(clienteId) REFERENCES Cliente(idCliente)
);