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
("Spirit", 7, "2015-12-22", true, "Rex", 2, 3), ("Bethoven", 5, "2014-11-22", false, "Rex", 5, 1),
("Dory", 1, "2002-10-22", true, "Peixe-Palhaço", 4, 4), ("Marlin", 2, "2002-11-22", true, "Peixe-Palhaço", 4, 4),
("Nemo", 1, "2002-12-22", true, "Peixe-Palhaço", 4, 4), ("Bob", 10, "2011-01-10", false, "Sírio", 3, 5), 
("Coelho maluco", 3, "2017-11-12", false, "Rabbit", 2, 3); 


insert into animals (nome, idade, data_chegada, adotado, raca, id_setor, id_tipo_animal)
values
("Perebas", 17, "2003-02-18", false, "Persa", 3, 5);

insert into people (CPF, nome, RG, data_nasc, genero, email, foto)
values 
("10406474486", "Ricardo Danilo João Martins", "376376041", "1995-03-31", "M", "ricardodanilojoaomartins-83@raizen.com", ""),
("01129502481", "Rebeca Eloá Vitória Peixoto", "402317579", "1945-05-31", "F", "rebecaeloavitoriapeixoto_@heinrich.com.br", ""),
("59327213408", "Geraldo Marcos Almeida", "156330635", "1975-07-11", "M", "geraldomarcosalmeida_@hoatmail.com", ""),
("46832530463", "Levi Hugo Caio Oliveira", "214680563", "1995-05-12", "M", "levihugocaiooliveira-93@graffiti.net", ""),
("64289407285", "Luan Theo Vinicius Silveira", "140707268", "1995-02-23", "M", "luantheoviniciussilveira_@centrooleo.com.br", "");


insert into addresses (people_id, cep, complemento, numero, endereco, pais, estado, cidade, bairro)
values 
('10406474486', "69265970", "Favela", 301, "Avenida Ministro Oliveira Brito 135", "Brasil",  "AM", "Apuí", "Centro"),
('01129502481', "48680970", "Apartamento", 204, "Praça José Borges do Vale, s/n", "Brasil", "BA", "Abaré", "Icozeira"),
('59327213408', "48680971", "casa", 404,"Praça José Borges do Vale, s/n", "Brasil", "BA", "Abaré", "Icozeira"),
('46832530463', "68997970", "Estrada de terra 51", 501, "Travessa Lourenço de Araujo 552", "Brasil", "AP", "Porto Grande", "Centro"),
('64289407285', "38812970", "Mansão", 500, "Rua Treze de Maio, s/n", "Brasil", "MG", "Abaeté dos Mendes", "Centro");

insert into voluntaries (CPF, nome, RG, data_nasc, genero, email, senha, foto)
values
("10406474486", "Ricardo Danilo João Martins", "376376041", "1995-03-31", "M", "ricardodanilojoaomartins-83@raizen.com","123456789" , ""),
("01129502481", "Rebeca Eloá Vitória Peixoto", "402317579", "1945-05-31", "F", "rebecaeloavitoriapeixoto_@heinrich.com.br", "123456789" ,""),
("59327213408", "Geraldo Marcos Almeida", "156330635", "1975-07-11", "M", "geraldomarcosalmeida_@hoatmail.com", "123456789" ,""),
("46832530463", "Levi Hugo Caio Oliveira", "214680563", "1995-05-12", "M", "levihugocaiooliveira-93@graffiti.net", "123456789",""),
("64289407285", "Luan Theo Vinicius Silveira", "140707268", "1995-02-23", "M", "luantheoviniciussilveira_@centrooleo.com.br", "123456789","");

insert into adoption_histories (data, condicao_animal, descricao, id_animal, id_pessoa)
values 
("2021-05-10", "Perfeito estado", "Dono bastante atencioso e com boas condições de manter o animal", 2, "10406474486"),
("2021-03-01", "Debilitado", "O dono se apegou muito ao pequeno e levou para casa para tratar", 5, "01129502481"),
("2021-02-11", "Pós-cirurgico", "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", 7, "59327213408"),
("2021-01-23", "Bem", "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", 8, "46832530463"),
("2020-12-17", "Perfeito estado", "when an unknown printer took a galley of type and scrambled it to make a type specimen book", 9, "64289407285");

insert into feed_stocks (quantidade, marca, nome, id_tipo_animal, kg)
values 
(20, "Natural", "Ração natural para caes", 1, 10), (20, "Bong", "Ração bong para seus peixes", 4, 10),
(10, "PremieR", "Ração premier para gatos", 2, 5), (15, "Durama", "Ração de coelho", 3, 10),
(5, "Natural", "Ração para seus hamsters", 5, 25);

insert into medical_records (data_inicio, data_fim, procedimento, status, remedio, doenca, remedio_discricao, id_animal)
values 
("2010-11-20", "2010-11-23", "Amputação", "Recuperado", "Analgésicos e Anti-inflamaótios", "Diabetes", "Remedios para dor e infecções", 1), 
("2020-10-13", "2020-10-13", "Estração de cisto", "Em recuperação", "Lorem ipsum", "Lorem ipsum", "Lorem ipsum", 2), 
("2019-12-14", "2019-12-14", "Retirda de objeto estranho no estomago", "Em observação", "Lorem ipsum", "Lorem ipsum", "Lorem ipsum", 3),
("2018-01-04", "2018-01-04", "Castração", "Recuperado", "Lorem ipsum", "Lorem ipsum", "Lorem ipsum", 4),
("2021-05-10", "2021-05-10", "Amputação dianteira", "Falecido", "Lorem ipsum", "Lorem ipsum", "Lorem ipsum", 5);

insert into medicine_stocks (nome, validade, quantidade, doenca)
values 
("Cloroquina", "2022-09-11", 20, "Malária"),
("Iverctimina", "2023-01-14", 10, "Verme"), 
("Xarope da vovo", "2021-08-14", 20, "Resfriado"),
("Cloroquina", "2022-09-11", 20, "Malária"),
("Simparic", "2024-11-01", 50, "Carrapatos, Vermes, Sarna") ;

insert into partners (telefone, nome, email)
values
("6198414905", "Abrigo Fauna e Flora", "faunaeflora@gmail.com"),
("8336843161", "Rosângela Maria", "heloiselunalarissadaluz@valeguinchos.com.br"),
("9876543210", "Hugo Rafael Luiz Drumond", "hhugorafaed@wsiconsultores.com.br"),
("1234567891", "Cauê Victor Sales", "cauevictorsales.@esctech.com.br"),
("6129412385", "Isaac Igor Elias Fernandes", "iisaacigoreliasfernandes@techs.com.br");

insert into possible_adoptions (id_animal, id_pessoa)
values 
(3, "01129502481"), (4, "10406474486"), (6, "46832530463"), 
(1, "59327213408"), (10, "64289407285");

insert into responsibles (id_animal, id_voluntario)
values 
(3, "01129502481"), (4, "10406474486"), (6, "46832530463"), 
(1, "59327213408"), (10, "64289407285");

insert into vaccines (nome, cod_vacina)
values 
("Vacina antirrábica", "00123"), ("Vacina contra a giardíase", "00113"), ("Vacina contra a gripe canina", "00122"), 
("Vacina contra a leishmaniose", "00422"), ("Vacina contra raiva", "45621");

insert into vaccine_cards (id_animal, id_vacina)
values 
(1, 2), (1, 1), (1, 3), (2, 1), (2, 4), (3, 3), (4, 1), (5, 4) 
;