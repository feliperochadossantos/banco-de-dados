CREATE TABLE hospede (
     nome varchar (25) not NULL,
     genero  varchar  (1),
     biotipo varchar (1),
     altura  numeric(5,2),
     primary key(nome)
)
create table quarto (
	nome varchar (25) not null,
	quarto INT not null,
	chegada DATE NOT NULL,
	saide DATE NOT NULL,
	desconto NUMERIC (5,2),
	PRIMARY KEY (nome, quarto)
    )

drop table quarto
TRUNCATE TABLE hospede;
select * from hospede;

insert into hospede (nome, genero, biotipo, altura)
values
('miguel','m','m', 1.67),
('josiel', 'm', 'm', 1.72),
('raquel', 'm', 'g', 1.65),
('luciana','f', 'g', 1.80),
('joana','f', 'm', 1.65),



	
('emanuel','m', 'm', 1.78);

TRUNCATE TABLE hospede;
SELECT * FROM quarto
SELECT * FROM HOSPEDE;

ALTER TABLE quarto ADD CONSTRAINT fkquarto FOREIGN KEY (nome)
REFERENCES hospede (nome)
ON UPDATE CASCADE
ON DELETE CASCADE