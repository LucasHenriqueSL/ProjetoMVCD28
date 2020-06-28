create database ProjetoMVCD28;
use ProjetoMVCD28;
create table tbl_clienteD28(
id_cliente int not null,
nome_cliente varchar(45) not null,
sobrenome_cliente varchar(45) not null,
email_cliente varchar(50) not null,
senha_cliente varchar(45) not null,
cpf_cliente varchar(11) not null,
nome_mae varchar(50) not null,
tp_usuario int default null
);

select * from tbl_clienteD28;
insert into tbl_clienteD28 values (4,"Lucas","","lucashenrique@gmail.com","123","123","Gisele",1);