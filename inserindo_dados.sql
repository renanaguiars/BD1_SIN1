CREATE TABLE CLIENTE(
	idcliente Integer primary key not null, 
	nome Varchar2(30) not null, 
	sobrenome Varchar2(30) not null,
	sexo Char(1) not null,
	cpf Varchar2(15) unique not null
);

CREATE TABLE TELEFONE(
	idtelefone Integer primary key not null,
	numero Integer,
	tipo Char(1),
	id_cliente Integer not null,
	foreign key(id_cliente) references CLIENTE(idcliente)
);

CREATE TABLE CARRO(
	idcarro Integer primary key not null,
	placa Varchar2(9) unique not null, 
	cor Varchar2(20) not null, 
	marca Varchar2(25) not null,
	id_cliente Integer not null,
	foreign key(id_cliente) references CLIENTE(idcliente)
);

CREATE TABLE VAGA(
	idvaga Integer primary key not null,
	numerovaga Integer unique not null, 
	tamanho Float not null 
);

CREATE TABLE OCUPACAO(
	idocupacao Integer primary key not null,
	dataEntrada Date not null, 
	dataSaida Date,
	id_carro Integer not null,
	id_vaga Integer not null,
	foreign key(id_carro) references CARRO(idcarro),
	foreign key(id_vaga) references VAGA(idvaga)
); 

insert into CLIENTE (idcliente, nome, sobrenome, sexo, cpf) values(1, 'Percy', 'Jackson', 'M', '123.456.789-10');
insert into CLIENTE (idcliente, nome, sobrenome, sexo, cpf) values(2, 'Annabeth', 'Chase', 'F', '000.000.000-00');
insert into CLIENTE (idcliente, nome, sobrenome, sexo, cpf) values(3, 'Jason', 'Grace', 'M', '111.111.111-11');
insert into CLIENTE (idcliente, nome, sobrenome, sexo, cpf) values(4, 'Piper', 'McLean', 'F', '222.333.444-55');
insert into CLIENTE (idcliente, nome, sobrenome, sexo, cpf) values(5, 'Leo', 'Valdez', 'M', '321.555.777-98');

insert into TELEFONE (idtelefone, numero, tipo, id_cliente) values(10, 997469190, 'C', 1);
insert into TELEFONE (idtelefone, numero, tipo, id_cliente) values(11, 33424875, 'R', 2);
insert into TELEFONE (idtelefone, numero, tipo, id_cliente) values(12, 997069295, 'C', 3);
insert into TELEFONE (idtelefone, numero, tipo, id_cliente) values(13, 40028922, 'R', 4);
insert into TELEFONE (idtelefone, numero, tipo, id_cliente) values(14, 991234567, 'C', 5);

insert into CARRO (idcarro, placa, cor, marca, id_cliente) values(100, 'MTG3526', 'Preto', 'Ferrari', 1);
insert into CARRO (idcarro, placa, cor, marca, id_cliente) values(101, 'PPK1234', 'Branco', 'Lamborghini', 2);
insert into CARRO (idcarro, placa, cor, marca, id_cliente) values(102, 'OSX3738', 'Vermelho', 'Mustang', 3);
insert into CARRO (idcarro, placa, cor, marca, id_cliente) values(103, 'DZN8216', 'Amarelo', 'Fiat', 4);
insert into CARRO (idcarro, placa, cor, marca, id_cliente) values(104, 'MSN3982', 'Azul', 'Volkswagen', 5);

insert into VAGA (idvaga, numerovaga, tamanho) values(200, 300, 3.15); 
insert into VAGA (idvaga, numerovaga, tamanho) values(201, 301, 3.15);
insert into VAGA (idvaga, numerovaga, tamanho) values(202, 302, 3.15);
insert into VAGA (idvaga, numerovaga, tamanho) values(203, 303, 3.15);
insert into VAGA (idvaga, numerovaga, tamanho) values(204, 304, 3.15);

insert into OCUPACAO (idocupacao, dataEntrada, dataSaida, id_carro, id_vaga) values(1001, TO_DATE('2020/06/13 10:12:22', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2020/06/16 15:26:22', 'yyyy/mm/dd hh24:mi:ss'), 100, 200);
insert into OCUPACAO (idocupacao, dataEntrada, dataSaida, id_carro, id_vaga) values(1002, TO_DATE('2020/05/01 08:02:34', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2020/05/04 19:12:22', 'yyyy/mm/dd hh24:mi:ss'), 101, 201);
insert into OCUPACAO (idocupacao, dataEntrada, dataSaida, id_carro, id_vaga) values(1003, TO_DATE('2020/04/04 17:32:29', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2020/04/08 11:09:22', 'yyyy/mm/dd hh24:mi:ss'), 102, 202);
insert into OCUPACAO (idocupacao, dataEntrada, dataSaida, id_carro, id_vaga) values(1004, TO_DATE('2020/03/09 15:52:42', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2020/03/12 14:13:22', 'yyyy/mm/dd hh24:mi:ss'), 103, 203);
insert into OCUPACAO (idocupacao, dataEntrada, dataSaida, id_carro, id_vaga) values(1005, TO_DATE('2020/02/26 09:32:37', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2020/02/29 16:35:22', 'yyyy/mm/dd hh24:mi:ss'), 104, 204);