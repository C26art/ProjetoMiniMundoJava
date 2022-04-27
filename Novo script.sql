use cursoja;


CREATE  TABLE IF NOT EXISTS usuario (
  idusuario INT NOT NULL AUTO_INCREMENT ,
  nome VARCHAR(100) NOT NULL ,
  login VARCHAR(100) NOT NULL ,
  senha VARCHAR(100) NOT NULL, 
  PRIMARY KEY (idusuario) )
ENGINE = InnoDB;

insert into usuario(nome, login, senha) values ('Antônio Pedro', 'antonio.pedro', '123456');
insert into usuario(nome, login, senha) values ('Adminstrador', 'admin', 'admin123');
 

insert into professor (nome, celular, valorhora) values('Luis', '2345', '20.00');
insert into professor (nome, celular, valorhora) values('Renato', '5432', '35.00');


insert into turma(datainicio, datafim, curso_id, professor_id) values ('2022-05-01', '2022-06-01', 3, 1);
insert into turma(datainicio, datafim, curso_id, professor_id) values ('2022-06-01', '2022-08-01', 4, 2);
insert into turma(datainicio, datafim, curso_id, professor_id) values ('2022-08-01', '2022-09-01', 3, 1);