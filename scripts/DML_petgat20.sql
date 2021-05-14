use petgat20_development;


insert into animal_types (nome)
values 
("Cachorro"), ("Gato"), ("Coelho"), ("Peixe"), ("Hamster");

insert into sectors (numero, quantidade, capacidade_max)
values 
("1", 0 , 20), ("2", 0 , 10), ("3", 0 , 5), ("4", 0 , 15), ("5", 0 , 30); 

insert into animals (nome, idade, data_chegada, adotado, raca, id_setor, id_tipo_animal)
values
("Garfield", 3, "2018-02-18", false, "Persa", 1, 2), ("Billy", 4, "2019-03-20", true, "Labrador", 5, 1),
("Bolinha", 1, "2020-07-20", false, "Pincher", 5, 1), ("Rafinha", 1, "2021-01-10", false, "Sírio", 3, 5),
("Spirit", 7, "2015-12-22", true, "Rex", 4, 3);

insert into animals (nome, idade, data_chegada, adotado, raca, id_setor, id_tipo_animal)
values
("Perebas", 17, "2003-02-18", false, "Persa", 3, 5);


insert into address (id, cep, complemento, rua, pais, estado, cidade, bairro)
values 
('1', "70730670", "Entrada 51", "SCRN 705/705", "Brasil", "Distrito Federal", "Brasilia", "Asa Norte"),
('2', "70730671", "Entrada 54", "SCRN 711/712", "Brasil", "Distrito Federal", "Brasilia", "Asa Norte");

insert into voluntaries (CPF, nome, RG, data_nasc, genero, id_endereco, email, senha)
values
("07383273109", "Alice da Costa Borges", "3779628", '2000-02-04', 'F', '1', "aliceborges42.ab@gmail.com", "senha12345"),
("90910524653", "Ana Paula da Costa", "3744628", '1972-04-02', 'F', '1', "anapaula42.ab@gmail.com", "senha123455");


insert into voluntaries (CPF, nome, RG, data_nasc, genero, id_endereco, email, senha, foto) values
("28709861143", "Adilson", "3444628", '1963-04-23', 'M', '2', "adilson42.ab@gmail.com", "senha123456", 'C:\Users\Alce Borges\Pictures\meninascomp.png');

SELECT * from voluntaries;
select foto from voluntaries where CPF = "28709861143";
delete from voluntaries where CPF = "28709861143";