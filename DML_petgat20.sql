use petgato;

insert into Endereco (id, cep, complemento, rua, pais, estado, cidade, bairro)
values 
('1', "70730670", "Entrada 51", "SCRN 705/705", "Brasil", "Distrito Federal", "Brasilia", "Asa Norte"),
('2', "70730671", "Entrada 54", "SCRN 711/712", "Brasil", "Distrito Federal", "Brasilia", "Asa Norte");

insert into Voluntario (CPF, nome, RG, data_nasc, genero, id_endereco, email, senha)
values
("07383273109", "Alice da Costa Borges", "3779628", '2000-02-04', 'F', '1', "aliceborges42.ab@gmail.com", "senha12345"),
("90910524653", "Ana Paula da Costa", "3744628", '1972-04-02', 'F', '1', "anapaula42.ab@gmail.com", "senha123455");


insert into Voluntario(CPF, nome, RG, data_nasc, genero, id_endereco, email, senha, foto) values
("28709861143", "Adilson", "3444628", '1963-04-23', 'M', '2', "adilson42.ab@gmail.com", "senha123456", 'C:\Users\Alce Borges\Pictures\meninascomp.png');

SELECT * from Voluntario;
select foto from Voluntario where CPF = "28709861143";
delete from Voluntario where CPF = "28709861143";