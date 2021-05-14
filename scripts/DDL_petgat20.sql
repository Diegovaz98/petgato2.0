DROP DATABASE IF EXISTS petgat20_development;
create DATABASE petgat20_development;

use petgat20_development;

DROP TABLE IF EXISTS animal_types;
create table animal_types(
    id int primary key not null auto_increment,
    nome varchar(255) not null 
);
 
DROP TABLE IF EXISTS addresses;      


DROP TABLE IF EXISTS people;
create table people(
    CPF char(11) not null primary key,
    nome varchar(255) not null,
    RG varchar(255) not null,
    data_nasc date not null,
    genero char(1),
    email varchar(255) not null,
    unique (CPF, email)
);

create table addresses(
	people_id char(11) not null unique primary key,
    cep varchar(11) not null,
    complemento VARCHAR(255),
    numero int not null,
    endereco VARCHAR(255) not null,
    pais VARCHAR(255) not null,
    estado VARCHAR(255) not null,
    cidade VARCHAR(255) not null,
    bairro VARCHAR(255) not null,
    constraint fk_Addresses_People FOREIGN KEY (people_id) REFERENCES people (CPF) on delete cascade
);

DROP TABLE IF EXISTS vaccines;
create table vaccines (
    id int not null primary key auto_increment,
    nome varchar(255) not null,
    cod_vacina varchar(255) not null unique
);

DROP TABLE IF EXISTS voluntaries;
create table voluntaries(
    CPF char(11) not null primary key unique,
    nome varchar(255) not null,
    RG varchar(255) not null,
    data_nasc date not null,
    genero char(1),
    email varchar(255) not null,
    senha varchar(255) not null
);

DROP TABLE IF EXISTS sectors;
create table sectors(
	id int not null primary key auto_increment,
    numero varchar(11) not null unique, 
    capacidade_max int not null,
    quantidade int not null
);

DROP TABLE IF EXISTS animals;
create table animals (
    id int not null primary key auto_increment,
    nome varchar(255) not null,
    idade int not null,
    data_chegada date not null,
    adotado boolean not null,
    id_setor int not null,
    id_tipo_animal int not null, 
    raca varchar(255) not null,
    constraint fk_animals_sectors foreign key (id_setor) references sectors (id),
    constraint fk_animals_AnimalTypes foreign key (id_tipo_animal) references animal_types(id)
); 

DROP TABLE IF EXISTS adoption_histories;
create table adoption_histories (
    id int not null auto_increment, 
    nome varchar(255) not null,
    data date not null,
    condicao_animal varchar(255) not null,
    descricao varchar(255), 
    id_animal int not null,
    id_pessoa char(11) not null, 
    primary key (id, id_animal),
    constraint fk_AdoptionHistories_Animals FOREIGN KEY (id_animal) REFERENCES animals (id) on delete cascade,
    constraint fk_animals_people foreign key (id_pessoa) references people (CPF)
);

DROP TABLE IF EXISTS possible_adoptions;
create table possible_adoptions(
	id_animal int not null,
    id_pessoa char(11) not null,
    foreign key (id_animal) references animals (id) on delete cascade, 
    foreign key (id_pessoa) references people (CPF) on delete cascade, 
    unique (id_animal, id_pessoa)
);

DROP TABLE IF EXISTS vaccine_cards;
create table vaccine_cards(
	id_animal int not null,
    id_vacina int not null,
    foreign key (id_animal) references animals (id) on delete cascade,
    foreign key (id_vacina) references vaccines (id) on delete cascade,
    unique (id_animal, id_vacina)
);

DROP TABLE IF EXISTS responsibles;
create table responsibles(
	id_animal int not null,
    id_voluntario char(11) not null,
    foreign key (id_animal) references animals (id) ON DELETE CASCADE,
    foreign key (id_voluntario) references voluntaries (CPF) ON DELETE CASCADE,
    unique (id_animal, id_voluntario)
);

DROP TABLE IF EXISTS medicine_stock;
create table medicine_stock(
    id int not null primary key auto_increment,
    nome varchar(255) not null,
    validade date not null,
    quantidade int not null,
    doenca varchar(255) not null
);

DROP TABLE IF EXISTS feed_stocks;
create table feed_stocks(
    id int not null primary key auto_increment,
    quantidade int not null,
    marca varchar(255) not null,
    nome varchar(255) not null,
    id_tipo_animal int not null,
    kg float not null,
    constraint fk_FeedStocks_AnimalTypes FOREIGN KEY (id_tipo_animal) REFERENCES animal_types (id)
);

DROP TABLE IF EXISTS partners;
create table partners(
    telefone VARCHAR(11) not null,
    nome VARCHAR(255) not null,
    email VARCHAR(255) not null primary key UNIQUE
);

DROP TABLE IF EXISTS medical_records;
create table medical_records(
	id int not null auto_increment,
    data_inicio date not null, 
    data_fim date,
    procedimento varchar(255), 
    status varchar(255) not null,
    remedio varchar(255),
    doenca varchar(255),
    remedio_discricao varchar(255),
    id_animal int not null,
    primary key (id, id_animal),
    constraint fk_MedicalRecords_Animals foreign key (id_animal) references animals (id) on delete cascade
);

ALTER TABLE `voluntaries` ADD COLUMN `foto` blob;
ALTER TABLE `people` ADD COLUMN `foto` blob;
ALTER TABLE `animals` ADD COLUMN `foto` blob;


DELIMITER //

create procedure updateSectorQuantity(
	in animal_id int, out message varchar(255)
)
begin
	declare setor_id, quantidade_atual, quantidade_maxima int default 0;
    select id_setor into setor_id from animals where id = animal_id limit 1;
    select capacidade_max into quantidade_maxima from sectors where id = sector_id; 
    if setor_id <> 0 then
        select count(*) into quantidade_atual from animals where id_setor = setor_id and adotado <> true; 
        if quantidade_atual >= 0 and quantidade_atual < quantidade_maxima THEN
			update sectors set quantidade = quantidade_atual where id = setor_id;
		else 
			set message = "Capacidade máxima atingida";
		end if;
	else 
		set message = "Setor não encontrado";
    end if;
	
end//

DELIMITER ;

DELIMITER //

CREATE TRIGGER atualizaQuantidadeAfterInsert
    AFTER INSERT
    ON animals for each row
BEGIN
	declare quantidade_atual int default 0;
    select count(*) into quantidade_atual from animals where id_setor = NEW.id_setor and adotado <> true;
    
    if quantidade_atual > 0 then
		update sectors set quantidade = quantidade_atual where id = NEW.id_setor;
    end if;
END//    

DELIMITER ;
