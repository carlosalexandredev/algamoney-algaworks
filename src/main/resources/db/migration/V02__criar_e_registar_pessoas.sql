CREATE TABLE pessoa (
	codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(80) NOT NULL,
	ativo BOOLEAN,
	logradouro VARCHAR(30),
	numero INT,
	complemento VARCHAR(100),
	bairro VARCHAR(30),
	cep VARCHAR(9),
	cidade VARCHAR(30),
	estado VARCHAR(2)
	
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
INSERT INTO algamoney.pessoa (nome,ativo,logradouro,numero,complemento,bairro,cep,cidade,estado) VALUES
	 ('Júlio Luiz Conceição Carvalho',1,'Rua Três A',12,'','Flamboyant Residencial Park','38081-802','Uberaba','MG'),
	 ('Lívia Azevedo Augusto',0,'Quadra G',7,'Casa Verde','Bela Vista','64031-332','Teresina','PI'),
	 ('Helen Amorin Diniz',1,'Rua Três B',2,'','Restinga','91790-759','Porto Alegre','RS'),
	 ('Kevin Guzzo de Carvalho',1,'Avenida Doutor Juvêncio Matos',6,'Proximo ao banco BRB','COHAB Anil IV','65050-700','Porto Alegre','RS'),
	 ('Stenio Camacho Mata',0,'Quadra 606 Norte Rua 4',8,'Proximo ao Colégio Ipiranga','Plano Diretor Norte','77006-782','Palmas','TO'),
	 ('Pedro Figueiro Nunes',0,'',0,'','','77006-782','Caldas Novas','GO');
