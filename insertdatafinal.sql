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

insert into CLIENTE (idcliente, nome, sobrenome, sexo, cpf) values(1, 'Diogo', 'Silva', 'M', '123.456.789-10');
insert into CLIENTE (idcliente, nome, sobrenome, sexo, cpf) values(2, 'Mariana', 'Leite', 'F', '000.000.000-00');
insert into CLIENTE (idcliente, nome, sobrenome, sexo, cpf) values(3, 'Felipe', 'Santos', 'M', '111.111.111-11');
insert into CLIENTE (idcliente, nome, sobrenome, sexo, cpf) values(4, 'Luana', 'Bremenkamp', 'F', '222.333.444-55');
insert into CLIENTE (idcliente, nome, sobrenome, sexo, cpf) values(5, 'Leonardo', 'Oliveira', 'M', '321.555.777-98');
insert into CLIENTE (idcliente, nome, sobrenome, sexo, cpf) values(6, 'Eduarda', 'Borges', 'F', '222.222.222-33');
insert into CLIENTE (idcliente, nome, sobrenome, sexo, cpf) values(7, 'Marcos', 'Ventura', 'M', '333.333.444-56');
insert into CLIENTE (idcliente, nome, sobrenome, sexo, cpf) values(8, 'Davi', 'Martins', 'M', '444.444.521-99');
insert into CLIENTE (idcliente, nome, sobrenome, sexo, cpf) values(9, 'Julia', 'Lima', 'F', '321.567.713-51');

insert into TELEFONE (idtelefone, numero, tipo, id_cliente) values(10, 997469190, 'C', 1);
insert into TELEFONE (idtelefone, numero, tipo, id_cliente) values(11, 33424875, 'R', 2);
insert into TELEFONE (idtelefone, numero, tipo, id_cliente) values(12, 997069295, 'C', 3);
insert into TELEFONE (idtelefone, numero, tipo, id_cliente) values(13, 40028922, 'R', 4);
insert into TELEFONE (idtelefone, numero, tipo, id_cliente) values(14, 998714567, 'C', 5);
insert into TELEFONE (idtelefone, numero, tipo, id_cliente) values(15, 991234165, 'C', 6);
insert into TELEFONE (idtelefone, numero, tipo, id_cliente) values(16, 33434874, 'R', 7);
insert into TELEFONE (idtelefone, numero, tipo, id_cliente) values(17, 999317757, 'C', 8);
insert into TELEFONE (idtelefone, numero, tipo, id_cliente) values(18, 981276543, 'C', 9);

insert into CARRO (idcarro, placa, cor, marca, id_cliente) values(100, 'MTG3526', 'Preto', 'Ferrari', 1);
insert into CARRO (idcarro, placa, cor, marca, id_cliente) values(101, 'PPK1234', 'Branco', 'Lamborghini', 2);
insert into CARRO (idcarro, placa, cor, marca, id_cliente) values(102, 'OSX3738', 'Vermelho', 'Mustang', 3);
insert into CARRO (idcarro, placa, cor, marca, id_cliente) values(103, 'DZN8216', 'Amarelo', 'BMW', 4);
insert into CARRO (idcarro, placa, cor, marca, id_cliente) values(104, 'MSN1435', 'Azul', 'Chevrolet', 1);
insert into CARRO (idcarro, placa, cor, marca, id_cliente) values(105, 'ABC3226', 'Verde', 'Toyota', 2);
insert into CARRO (idcarro, placa, cor, marca, id_cliente) values(106, 'DEF7882', 'Rosa', 'Mitsubishi', 5);
insert into CARRO (idcarro, placa, cor, marca, id_cliente) values(107, 'GHI4952', 'Laranja', 'Nissan', 6);
insert into CARRO (idcarro, placa, cor, marca, id_cliente) values(108, 'JKL3991', 'Prata', 'Fiat', 7);
insert into CARRO (idcarro, placa, cor, marca, id_cliente) values(109, 'MNO1122', 'Prata', 'Citroen', 8);
insert into CARRO (idcarro, placa, cor, marca, id_cliente) values(110, 'PQR3344', 'Branco', 'Audi', 9);
insert into CARRO (idcarro, placa, cor, marca, id_cliente) values(111, 'STU3216', 'Vermelho', 'Volkswagen', 5);

insert into VAGA (idvaga, numerovaga, tamanho) values(200, 300, 3.15); 
insert into VAGA (idvaga, numerovaga, tamanho) values(201, 301, 3.15);
insert into VAGA (idvaga, numerovaga, tamanho) values(202, 302, 3.15);
insert into VAGA (idvaga, numerovaga, tamanho) values(203, 303, 3.15);
insert into VAGA (idvaga, numerovaga, tamanho) values(204, 304, 3.15);

insert into OCUPACAO (idocupacao, dataEntrada, dataSaida, id_carro, id_vaga) values(1001, TO_DATE('2020/06/13 10:12:22', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2020/06/16 15:26:27', 'yyyy/mm/dd hh24:mi:ss'), 100, 200);
insert into OCUPACAO (idocupacao, dataEntrada, dataSaida, id_carro, id_vaga) values(1002, TO_DATE('2020/05/01 08:02:34', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2020/05/04 19:12:28', 'yyyy/mm/dd hh24:mi:ss'), 101, 201);
insert into OCUPACAO (idocupacao, dataEntrada, dataSaida, id_carro, id_vaga) values(1003, TO_DATE('2020/04/04 17:32:29', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2020/04/08 11:09:36', 'yyyy/mm/dd hh24:mi:ss'), 102, 202);
insert into OCUPACAO (idocupacao, dataEntrada, dataSaida, id_carro, id_vaga) values(1004, TO_DATE('2020/03/09 15:52:42', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2020/03/12 14:13:54', 'yyyy/mm/dd hh24:mi:ss'), 103, 203);
insert into OCUPACAO (idocupacao, dataEntrada, dataSaida, id_carro, id_vaga) values(1005, TO_DATE('2020/02/26 09:32:37', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2020/02/29 16:35:22', 'yyyy/mm/dd hh24:mi:ss'), 104, 204);
insert into OCUPACAO (idocupacao, dataEntrada, dataSaida, id_carro, id_vaga) values(1006, TO_DATE('2020/02/27 07:25:32', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2020/03/01 19:15:29', 'yyyy/mm/dd hh24:mi:ss'), 105, 200);
insert into OCUPACAO (idocupacao, dataEntrada, dataSaida, id_carro, id_vaga) values(1007, TO_DATE('2020/03/01 10:39:11', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2020/03/04 12:24:10', 'yyyy/mm/dd hh24:mi:ss'), 106, 201);
insert into OCUPACAO (idocupacao, dataEntrada, dataSaida, id_carro, id_vaga) values(1008, TO_DATE('2020/03/02 16:54:56', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2020/03/05 18:49:37', 'yyyy/mm/dd hh24:mi:ss'), 107, 202);
insert into OCUPACAO (idocupacao, dataEntrada, dataSaida, id_carro, id_vaga) values(1009, TO_DATE('2020/03/04 18:12:37', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2020/03/08 16:20:11', 'yyyy/mm/dd hh24:mi:ss'), 108, 203);
insert into OCUPACAO (idocupacao, dataEntrada, dataSaida, id_carro, id_vaga) values(1010, TO_DATE('2020/04/22 10:10:57', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2020/04/25 11:02:00', 'yyyy/mm/dd hh24:mi:ss'), 109, 204);
insert into OCUPACAO (idocupacao, dataEntrada, dataSaida, id_carro, id_vaga) values(1011, TO_DATE('2020/05/08 09:38:31', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2020/05/12 07:35:12', 'yyyy/mm/dd hh24:mi:ss'), 110, 200);
insert into OCUPACAO (idocupacao, dataEntrada, dataSaida, id_carro, id_vaga) values(1012, TO_DATE('2020/06/12 07:32:47', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2020/06/15 10:45:25', 'yyyy/mm/dd hh24:mi:ss'), 111, 201);
