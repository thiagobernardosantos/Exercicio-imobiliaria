create database imobiliaria
use imobiliaria
create table tblVendedor (
	CodVendedor int not null primary key,
	Nome varchar(30)
)
create table tblImovel (
	CodImovel int not null primary key
)
create table tblBairro (
	Bairro varchar(20) primary key
)
create table tblCidade(
	Cidade varchar(20) primary key
)
create table tblEstado(
	Estado varchar(20) primary key
)
create table tblComprador(
	CodComprador int not null primary key 
)
create table tblOferta (
	coddepto int foreign key references tblImovel(CodImovel),
	coddept int foreign key references tblComprador(CodComprador)
)

create table tblFaixa (
	coddepto int foreign key references tblImovel(CodImovel),
	FaixaPreco int 
)

create index xtblImovel on tblImovel(CodImovel)

insert tblImovel (CodImovel) values (1),(2),(3),(4),(5),(6),(7),(8),(9)
insert tblVendedor (CodVendedor, Nome) values (1, 'João'),(2,'Maria'),(3,'José')
insert tblBairro(Bairro) values ('luz'),('saúde'),('jabaquara')

select * from tblImovel where CodImovel >3 and CodImovel <8

select CodImovel from tblImovel order by CodImovel asc
select CodVendedor,Nome from tblVendedor order by Nome desc

select distinct (Bairro) from tblBairro

select top 3 * from tblImovel
	where CodImovel > 6

order by CodImovel
order by CodImovel Desc