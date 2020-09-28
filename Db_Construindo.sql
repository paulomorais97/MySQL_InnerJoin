create database `db_construindo_a_nossa_vida`;
use `db_construindo_a_nossa_vida`;

create table `tb_categoria` (
`id_categoria` int not null auto_increment,
`basico` enum ('cimento', 'areia','pedra'),
`marca` varchar (55),
`tipo` enum ('entrega','retirada'),
primary key (`id_categoria`)
);

create table `tb_produto`(
`nome` varchar(55),
`validade` varchar(10),
`quantidade`varchar(20),
`preco`varchar (55),
`pagamento` enum('a vista', 'parcelado'),
`id_categoria`int,
constraint fk_tb_categoria foreign key ( id_categoria) references tb_categoria(id_categoria)
);


insert into  `tb_categoria` (basico, marca, tipo)
values 
( 'cimento', 'tupi', 'entrega'),
( 'areia', 'votoran', 'retirada'),
( 'areia', 'tupi', 'entrega'),
( 'cimento ','votoran', 'retirada'),
( 'pedra', 'tupi', 'retirada');



select * from tb_categoria;


insert into `tb_produto`(`nome`, `validade`, `quantidade`, `preco`, `pagamento`, `id_categoria`)
values
('cimento cpII', '30 dias', '50 sacos', '380.5', 'parcelado',1),
('areia fina', '90 dias', '20 metros', '280.5', 'a vista',2),
('areia grossa', '90 dias', '15 metros', '225.5', 'a vista',3),
('pedra', '90 dias', '10 metro', '250.7', 'parcelado',5),
('cimento cp II E32', '30 dias', '30 sacos', '345.8', 'a vista',4),
('pedra', '90 dias', '12 metros', '270.5', 'parcelado',5),
('cimento cp III 40', '30 dias', '25 sacos', '320.5', 'a vista',4),
('cimento branco', '30 dias', '5 sacos', '250.5', 'a vista',1);


select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like '%c%';

select * from tb_produto inner join tb_categoria on tb_produto.id_categoria = tb_categoria.id_categoria;

select * from tb_categoria where marca = 'votoran';

