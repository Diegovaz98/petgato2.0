DROP DATABASE IF EXISTS petgat20_development;
create DATABASE petgat20_development;

use petgat20_development;

DROP TABLE IF EXISTS Tipos_de_Animais;
create table Tipos_de_Animais(
    id int primary key not null auto_increment,
    nome varchar(45) not null 
);
 
DROP TABLE IF EXISTS Enderecos;
create table Enderecos(
    id int not null primary key auto_increment,
    cep varchar(11) not null,
    complemento VARCHAR(45),
    rua VARCHAR(45) not null,
    pais VARCHAR(45) not null,
    estado VARCHAR(45) not null,
    cidade VARCHAR(45) not null,
    bairro VARCHAR(45) not null
);

DROP TABLE IF EXISTS Pessoas;
create table Pessoas(
    CPF char(11) not null primary key,
    nome varchar(45) not null,
    RG varchar(45) not null,
    data_nasc date not null,
    genero char(1),
    id_endereco int not null,
    email varchar(45) not null,
    constraint fk_Pessoa_Endereco FOREIGN KEY (id_endereco) REFERENCES Enderecos (id)
);

DROP TABLE IF EXISTS Vacinas;
create table Vacinas (
    id int not null auto_increment,
    quantidade int not null,
    doenca varchar(45) not null,
    cod_vacina varchar(45) not null unique,
    primary key (id, cod_vacina)
);

DROP TABLE IF EXISTS Voluntarios;
create table Voluntarios(
    CPF char(11) not null primary key unique,
    nome varchar(45) not null,
    RG varchar(45) not null,
    data_nasc date not null,
    genero char(1),
    id_endereco int not null,
    email varchar(45) not null,
    senha varchar(45) not null,
    constraint fk_Vonluntarios_Enderecos FOREIGN KEY (id_endereco) REFERENCES Enderecos (id) on delete cascade
);

DROP TABLE IF EXISTS Setores;
create table Setores(
	id int not null primary key auto_increment,
    numero_setor varchar(11) not null, 
    capacidade_max int not null,
    quantidade int not null
);

DROP TABLE IF EXISTS Animais;
create table Animais (
    id int not null primary key unique auto_increment,
    nome varchar(45) not null,
    idade int not null,
    data_chegada date not null,
    adotado boolean not null,
    id_setor int not null,
    id_pessoa char(11) not null, 
    id_tipo_animal int not null, 
    raca varchar(45) not null,
    constraint fk_Animais_Setores foreign key (id_setor) references Setores (id),
    constraint fk_Animais_Pessoas foreign key (id_pessoa) references Pessoas (cpf),
    constraint fk_Animais_TiposAnimais foreign key (id_tipo_animal) references Tipos_de_Animais(id)
); 

DROP TABLE IF EXISTS Historico_Adocoes;
create table Historico_Adocoes (
    id int not null auto_increment, 
    nome varchar(45) not null,
    data date not null,
    condicao_animal varchar(45) not null,
    descricao varchar(45), 
    id_animal int not null,
    primary key (id, id_animal),
    constraint fk_HistoricoAdocoes_Animais FOREIGN KEY (id_animal) REFERENCES Animais (id) on delete cascade
);

DROP TABLE IF EXISTS Possiveis_Adocoes;
create table Possiveis_Adocoes(
	id_animal int not null,
    id_pessoa char(11) not null,
    foreign key (id_animal) references Animais (id) on delete cascade, 
    foreign key (id_pessoa) references Pessoas (cpf) on delete cascade, 
    unique (id_animal, id_pessoa)
);

DROP TABLE IF EXISTS Cartoes_de_Vacina;
create table Cartoes_de_Vacina(
	id_animal int not null,
    id_vacina int not null,
    foreign key (id_animal) references Animais (id) on delete cascade,
    foreign key (id_vacina) references Vacinas (id) on delete cascade,
    unique (id_animal, id_vacina)
);

DROP TABLE IF EXISTS Responsaveis;
create table Responsaveis(
	id_animal int not null,
    id_voluntario char(11) not null,
    foreign key (id_animal) references Animais (id) ON DELETE CASCADE,
    foreign key (id_voluntario) references Voluntarios (cpf) ON DELETE CASCADE,
    unique (id_animal, id_voluntario)
);

DROP TABLE IF EXISTS Estoque_Farmacinha;
create table Estoque_Farmacinha(
    id int not null primary key auto_increment,
    nome varchar(45) not null,
    validade date not null,
    quantidade int not null,
    doenca varchar(45) not null
);

DROP TABLE IF EXISTS Estoque_Racoes;
create table Estoque_Racoes(
    id int not null primary key auto_increment,
    quantidade int not null,
    marca varchar(45) not null,
    nome varchar(45) not null,
    id_tipo_animal int not null,
    kg float not null,
    constraint fk_EstoqueRacoes_TipoAnimais FOREIGN KEY (id_tipo_animal) REFERENCES Tipos_de_Animais (id)
);

DROP TABLE IF EXISTS Parceiros;
create table Parceiros(
    telefone VARCHAR(11) not null,
    nome VARCHAR(45) not null,
    email VARCHAR(45) not null primary key UNIQUE
);

DROP TABLE IF EXISTS Fichas_Medicas;
create table Fichas_Medicas(
	id int not null auto_increment,
    data_inicio date not null, 
    data_fim date,
    procedimento varchar(45), 
    status varchar(45) not null,
    remedio varchar(45),
    doenca varchar(45),
    remedio_discricao varchar(255),
    id_animal int not null,
    primary key (id, id_animal),
    constraint fk_FichaMedica_Animal foreign key (id_animal) references Animais (id) on delete cascade
);

ALTER TABLE `Voluntario` ADD COLUMN `foto` blob;
ALTER TABLE `Pessoa` ADD COLUMN `foto` blob;
ALTER TABLE `Animal` ADD COLUMN `foto` blob;
