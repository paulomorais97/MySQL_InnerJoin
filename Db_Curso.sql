create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

#drop database db_cursoDaMinhaVida;
create table `tb_categoria`(
`id_categoria` int not null auto_increment,
`tipo_curso`varchar(30),
`escola` varchar(30),
`modo`enum ('EAD', 'presencial', 'semi-presencial'),
primary key (`id_categoria`)
);

create table `tb_curso`(
`curso` varchar (35),
`mensalidade`decimal(10,2),
`duração`varchar (30),
`turno`varchar(10),
`turma`varchar (10),
`id_categoria` int,
constraint `fk_tb_categoria` foreign key (`id_categoria`) references `tb_categoria` (`id_categoria`));


insert into  `tb_categoria` (tipo_curso, escola, modo)
values 
( 'Programação', 'Generation', 'EAD'),
( 'Programação', 'FIAP', 'presencial'),
( 'Gerenciamento de Projetos', 'FIAP', 'semi-presencial'),
( 'Algoritimos', 'Udemy', 'EAD'),
( 'I.A.', 'Udemy', 'semi-presencial');

insert into `tb_curso`(`curso`, `mensalidade`, `duração`, `turno`, `turma`, `id_categoria`)
values
('Java', '50.0', '6 meses', 'Manhã', 'A',1),
('C', '41.90', '6 meses', 'Manhã', 'B',2),
('Python', '47.90','8 meses', 'Noite', 'C',2),
('Scrum', '70.90','3 meses', 'Manhã', 'D',3),
('Introdução', '20.90','3 meses', 'Tarde', 'A',4),
('Cascata', '32.90','7 meses', 'Manhã', 'B',2),
('Power B.I.', '60.90','9 meses', 'Noite', 'A',5),
('C#', '45.90','5 meses', 'Tarde', 'B',2);
	

select * from tb_curso;


select * from tb_curso where mensalidade > 50;

select * from tb_curso where mensalidade between 3 and 60;

select * from tb_curso where curso like '%j%';

select * from tb_curso inner join tb_categoria on tb_curso.id_categoria = tb_categoria.id_categoria;

select * from tb_categoria where tipo_curso = 'Programação';