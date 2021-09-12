create database SA05;
use SA05;


create table tbl_funcionario (
	id_funcionario int primary key auto_increment not null,
    nome_funcionario varchar(45),
    cargo varchar(45)
    );
    
insert into tbl_funcionario
(nome_funcionario, cargo) values
("Igor", "Gerente de Venda"),
("Pedro", "Operador de Caixa"),
("Roberta", "Zelador"),
("Maria", "Fundador");
    
create table tbl_venda (
	id_venda int primary key auto_increment not null,
    data_venda date,
    quantidade_venda int,
    valor_venda int,
    produto_id_produto int,
    foreign key (produto_id_produto) references tbl_produto(id_produto)
	);
    
insert into tbl_venda
(quantidade_venda, valor_venda, produto_id_produto ) values
("2", "600", "1"),
("1", "200", "3"),
("3", "690", "2");

create table tbl_produto (
	id_produto int primary key auto_increment not null,
    nome_produto varchar(45),
    quantidade int,
    valor decimal,
    fornecedor_id_fornecedor int,
    foreign key (fornecedor_id_fornecedor) references tbl_fornecedor(id_fornecedor)
    );
    
insert into tbl_produto
(nome_produto, quantidade, valor, fornecedor_id_fornecedor) values
("Edredom", "15", "300", "1"),
("Jogo de cama queen", "41", "230", "2"),
("Travesseiro", "200", "80", "4");
    
create table tbl_fornecedor (
	id_fornecedor int primary key auto_increment not null,
    endereco varchar(55),
    quantidade_compra int,
    valor_compra int
    );
    
insert into tbl_fornecedor
(endereco, quantidade_compra, valor_compra) values
("Av Antonio Carlos - BH", "200", "5000"),
("Av Antonio Carlos - BH", "100", "2500"),
("Av Antonio Carlos - BH", "400", "10000"),
("Av Antonio Carlos - BH", "20", "700");
    

create table tbl_caixa (
	id_caixa  int primary key auto_increment not null,
    valor_caixa  decimal,
    entrada date,
    saida date,
    funcionario_id_funcionario int,
    venda_id_venda int,
    foreign key (funcionario_id_funcionario) references tbl_funcionario(id_funcionario),
    foreign key (venda_id_venda) references tbl_venda(id_venda)
    );

insert into tbl_fornecedor
(valor_caixa, funcionario_id_funcionario, venda_id_venda) values
("900", "2", "2");

    