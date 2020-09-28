create database `db_cidade_das_carnes`;
use `db_cidade_das_carnes`;

#drop database `db_cidade_das_carnes`;

create table `tb_categoria`(
`id_categoria` int not null auto_increment,
`carne` enum ('Bovina','Suina', 'Aves'),
`marca`varchar(30),
`tipo`enum ('peça inteira', 'fatiada'),
primary key (`id_categoria`)
);

create table `tb_produto`(
`tipo_carne` varchar (35),
`preco`decimal(10,2),
`quilo`varchar (5),
`validade`varchar(10),
`fabricacao`varchar (10),
`id_categoria` int,
constraint `fk_tb_categoria` foreign key (`id_categoria`) references `tb_categoria` (`id_categoria`));



insert into  `tb_categoria` (carne, marca, tipo)
values 
( 'Bovina', 'Friboi', 'peça inteira'),
( 'Aves', 'Seara', 'peça inteira'),
( 'Suina', 'Perdigão', 'fatiada'),
( 'Bovina', 'Friboi', 'fatiada'),
( 'Suina', 'Sadia', 'peça inteira');


select * from tb_categoria;


insert into `tb_produto`(`tipo_carne`, `preco`, `quilo`, `validade`, `fabricacao`, `id_categoria`)
values
('Contra-File', '120.50', '5.0', '2020-12-15', '2020-05-10',1),
('Coxão Mole', '41.90', '3.5', '2020-11-30', '2020-04-12',4),
('Coxa e Sobrecoxa', '27.90','5.5', '2020-12-30', '2020-06-08',2),
('Costelinha', '50.90','5.5', '2020-12-30', '2020-06-20',3),
('Picanha', '150.90','8.0', '2020-10-30', '2020-07-10',1),
('Linguiça', '32.90','7.5', '2020-10-20', '2020-06-18',3),
('Bisteca', '36.90','4.7', '2020-12-23', '2020-07-28',3),
('Frango resfriado', '7.90','5.5', '2020-10-29', '2020-08-08',2);


select * from tb_produto;


select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where tipo_carne like '%c%';

select * from tb_produto inner join tb_categoria on tb_produto.id_categoria = tb_categoria.id_categoria;

select * from tb_categoria where marca = 'Sadia';






