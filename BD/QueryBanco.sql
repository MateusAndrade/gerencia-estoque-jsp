/*----------------------------------------- DDL ---------------------------------------------*/

CREATE DATABASE estoque

USE estoque

CREATE TABLE funcionarios(
	codigo_funcionario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_funcionario VARCHAR(50) NOT NULL,
    cpf_funcionario VARCHAR(20) NOT NULL UNIQUE,
    rg_funcionario VARCHAR(20)	NOT NULL,
    telefone_funcionario VARCHAR(15),
    email_funcionario VARCHAR(50) NOT NULL,
    senha INT NOT NULL
)

CREATE TABLE produtos(
	codigo_produto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(20) NOT NULL,
    quantidade_produto INT CHECK ( quantidade_produto >= 0 ),
	preco_produto FLOAT CHECK ( preco_produto >= 0 )
)

CREATE TABLE requisicao(
	codigo_requisicao INT NOT NULL AUTO_INCREMENT,
    codigo_funcionario INT NOT NULL,
    codigo_produto INT NOT NULL,
    qtd_requisicao INT NOT NULL CHECK( qtd_requisicao > 0 ),
    data_requisicao DATE NOT NULL,
    hora_requisicao TIME NOT NULL,
    status_requisicao CHAR(1) NOT NULL,
	PRIMARY KEY ( codigo_requisicao ),
    FOREIGN KEY( codigo_funcionario ) REFERENCES funcionarios( codigo_funcionario ),
    FOREIGN KEY( codigo_produto ) REFERENCES produtos( codigo_produto )
)

INSERT INTO requisicao( codigo_funcionario, codigo_produto, qtd_requisicao, data_requisicao, hora_requisicao, status_requisicao)
VALUES ( 1 , 1, 5 , CURDATE() , TIME(SYSDATE()) ,'P');

INSERT INTO requisicao( codigo_funcionario, codigo_produto, qtd_requisicao, data_requisicao, hora_requisicao, status_requisicao)
VALUES ( 2 , 2, 5 , CURDATE() , TIME(SYSDATE()) ,'P');


/*----------------------------------------- DDL ---------------------------------------------*/

/*----------------------------------------- DML ---------------------------------------------*/

/* DML Para Funcionario */

DROP PROCEDURE IF EXISTS inserirFuncionario;

DELIMITER //

CREATE PROCEDURE inserirFuncionario(IN nome VARCHAR(50), IN cpf VARCHAR(20), IN rg VARCHAR(20), IN fone VARCHAR(15), IN email VARCHAR(50), IN senha INT)
BEGIN
	INSERT INTO funcionarios(nome_funcionario,cpf_funcionario,rg_funcionario,telefone_funcionario,email_funcionario,senha) 
    VALUES(nome,cpf,rg,fone,email,senha);
END//

CALL inserirFuncionario('Mateus','11123','12113','11213','EMAIL',21);

DROP PROCEDURE IF EXISTS excluirFuncionario();

DELIMITER //

CREATE PROCEDURE excluirFuncionario( IN cod INT )
BEGIN
	DELETE FROM funcionarios WHERE codigo_funcionario = 4;
END//

CALL excluirFuncionario(2);


DROP PROCEDURE IF EXISTS consultarFuncionarioCodigo;

DELIMITER //

CREATE PROCEDURE consultarFuncionarioCodigo( IN cod INT )
BEGIN
	SELECT codigo_funcionario,nome_funcionario,cpf_funcionario,rg_funcionario,telefone_funcionario,email_funcionario FROM funcionarios WHERE codigo_funcionario = cod;
END//

CALL consultarFuncionarioCodigo(1);


SELECT * FROM funcionarios

DROP PROCEDURE IF EXISTS consultarFuncionarioNome;

DELIMITER //

CREATE PROCEDURE consultarFuncionarioNome( IN nome VARCHAR(50) )
BEGIN
	SELECT codigo_funcionario,nome_funcionario,cpf_funcionario,rg_funcionario,telefone_funcionario,email_funcionario FROM funcionarios WHERE nome_funcionario LIKE nome;
END//

CALL consultarFuncionarioNome('Mateus');


DROP PROCEDURE IF EXISTS consultarFuncionarioTabela;

DELIMITER //

CREATE PROCEDURE consultarFuncionarioTabela()
BEGIN
	SELECT codigo_funcionario,nome_funcionario,cpf_funcionario,email_funcionario FROM funcionarios;
END//

CALL consultarFuncionarioTabela();


DROP PROCEDURE IF EXISTS updateFuncionario;

DELIMITER //

CREATE PROCEDURE updateFuncionario(IN codigo INT, IN nome VARCHAR(50), IN cpf VARCHAR(20), IN rg VARCHAR(20), IN fone VARCHAR(15), IN email VARCHAR(50), IN senha INT)
BEGIN
	UPDATE funcionarios
    SET nome_funcionario = nome, cpf_funcionario = cpf , rg_funcionario = rg, rg_funcionario = fone, email_funcionario = email, senha = senha
    WHERE codigo_funcionario = codigo;
END//

DROP PROCEDURE IF EXISTS consultarFuncionarioLogin;

DELIMITER //

CREATE PROCEDURE consultarFuncionarioLogin( IN cpf VARCHAR(20), IN senha INT)
BEGIN
	SELECT codigo_funcionario,nome_funcionario,cpf_funcionario,rg_funcionario,telefone_funcionario,email_funcionario FROM funcionarios WHERE cpf_funcionario = cpf AND senha = senha;
END//

/* Adicionar handler para manipular mensagem http://www.mysqltutorial.org/mysql-error-handling-in-stored-procedures/ */

/* DML Para Funcionario */

DROP PROCEDURE IF EXISTS inserirProduto;

DELIMITER //

CREATE PROCEDURE inserirProduto(IN nome VARCHAR(20), IN quantidade INT, IN preco FLOAT )
BEGIN
	INSERT INTO produtos(nome_produto,quantidade_produto,preco_produto) 
    VALUES(nome,quantidade,preco);
END//

CALL inserirProduto('Mouse',20,50);


DROP PROCEDURE IF EXISTS excluirProduto;

DELIMITER //

CREATE PROCEDURE excluirProduto( IN cod INT )
BEGIN
	DELETE FROM produtos WHERE codigo_produto = cod;
END//

CALL excluirProduto(13);


DROP PROCEDURE IF EXISTS consultaProduto;

DELIMITER //

CREATE PROCEDURE consultaProduto( IN cod INT )
BEGIN
	SELECT * FROM produtos WHERE codigo_produto = cod;
END//

CALL consultaProduto(7);


/*----------------------------------------- DML ---------------------------------------------*/
