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

INSERT INTO funcionarios( nome_funcionario,cpf_funcionario,rg_funcionario,telefone_funcionario,email_funcionario,senha)	VALUES ('Mateus Andrade','602.960.089-31','36.930.498-6','(11)12345-1234','email@email',1234)

CREATE TABLE produtos(
	codigo_produto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(20) NOT NULL,
    quantidade_produto INT CHECK ( quantidade_produto >= 0 ),
	preco_produto FLOAT CHECK ( preco_produto >= 0 )
)

INSERT INTO produtos(nome_produto, quantidade_produto,preco_produto) VALUES ('Monitor',50,12.50)

CREATE TABLE requisicao(
	codigo_requisicao INT NOT NULL AUTO_INCREMENT,
    codigo_funcionario INT NOT NULL,
    data_requisicao DATE NOT NULL,
    hora_requisicao TIME NOT NULL,
	PRIMARY KEY ( codigo_requisicao ),
    FOREIGN KEY( codigo_funcionario ) REFERENCES funcionarios( codigo_funcionario )
)

CREATE TABLE itensRequisicao(
	codigo_itens_requisicao INT NOT NULL AUTO_INCREMENT,
	codigo_produto INT NOT NULL,
    codigo_requisicao INT NOT NULL,
    qtd_irequisicao INT NOT NULL CHECK( qtd_irequisicao > 0 ),
    PRIMARY KEY( codigo_itens_requisicao ),
    FOREIGN KEY( codigo_produto ) REFERENCES produtos( codigo_produto ),
    FOREIGN KEY( codigo_requisicao ) REFERENCES requisicao( codigo_requisicao )
)