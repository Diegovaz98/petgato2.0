DROP DATABASE IF EXISTS petgato;
create DATABASE petgato;

use petgato;

DROP TABLE IF EXISTS Tipo_Animal;
create table Tipo_Animal(
    id int primary key not null auto_increment,
    nome varchar(45) not null 
);
 
DROP TABLE IF EXISTS endereco;
create table endereco(
    id int not null primary key auto_increment,
    cep varchar(11) not null,
    complemento VARCHAR(45),
    rua VARCHAR(45) not null,
    pais VARCHAR(45) not null,
    estado VARCHAR(45) not null,
    cidade VARCHAR(45) not null,
    bairro VARCHAR(45) not null
);

DROP TABLE IF EXISTS Pessoa;
create table Pessoa(
    CPF char(11) not null primary key,
    nome varchar(45) not null,
    RG varchar(45) not null,
    data_nasc date not null,
    genero char(1),
    id_endereco int not null,
    constraint fk_Pessoa_Endereco FOREIGN KEY (id_endereco) REFERENCES Endereco (id)
);

DROP TABLE IF EXISTS Vacina;
create table Vacina (
    id int not null auto_increment,
    quantidade int not null,
    doenca varchar(45) not null,
    cod_vacina varchar(45) not null unique,
    primary key (id, cod_vacina)
);

DROP TABLE IF EXISTS Voluntario;
create table Voluntario(
    CPF char(11) not null primary key unique,
    nome varchar(45) not null,
    RG varchar(45) not null,
    data_nasc date not null,
    genero char(1),
    id_endereco int not null,
    constraint fk_Vonluntario_Endereco FOREIGN KEY (id_endereco) REFERENCES Endereco (id) on delete cascade
);

DROP TABLE IF EXISTS Setor;
create table Setor(
	id int not null primary key auto_increment,
    numero_setor varchar(11) not null, 
    capacidade_max int not null,
    quantidade int not null
);

DROP TABLE IF EXISTS Animal;
create table Animal (
    id int not null primary key unique auto_increment,
    nome varchar(45) not null,
    idade int not null,
    data_chegada date not null,
    adotado boolean not null,
    id_setor int not null,
    id_pessoa char(11) not null, 
    id_tipo_animal int not null, 
    raca varchar(45) not null,
    constraint fk_Animal_Setor foreign key (id_setor) references Setor (id),
    constraint fk_Animal_Pessoa foreign key (id_pessoa) references Pessoa (cpf),
    constraint fk_Animal_TipoAnimal foreign key (id_tipo_animal) references Tipo_Animal(id)
); 

DROP TABLE IF EXISTS Historico_Adocao;
create table Historico_Adocao (
    id int not null auto_increment, 
    nome varchar(45) not null,
    data date not null,
    condicao_animal varchar(45) not null,
    descricao varchar(45), 
    id_animal int not null,
    primary key (id, id_animal),
    constraint fk_HistoricoAdocao_Animal FOREIGN KEY (id_animal) REFERENCES Animal (id) on delete cascade
);

DROP TABLE IF EXISTS Possiveis_Adocoes;
create table Possiveis_Adocoes(
	id_animal int not null,
    id_pessoa char(11) not null,
    foreign key (id_animal) references Animal (id) on delete cascade, 
    foreign key (id_pessoa) references Pessoa (cpf) on delete cascade, 
    unique (id_animal, id_pessoa)
);

DROP TABLE IF EXISTS Cartao_de_Vacina;
create table cartao_de_vacina(
	id_animal int not null,
    id_vacina int not null,
    foreign key (id_animal) references Animal (id) on delete cascade,
    foreign key (id_vacina) references Vacina (id) on delete cascade,
    unique (id_animal, id_vacina)
);

DROP TABLE IF EXISTS Responsaveis;
create table Responsaveis(
	id_animal int not null,
    id_voluntario char(11) not null,
    foreign key (id_animal) references Animal (id) ON DELETE CASCADE,
    foreign key (id_voluntario) references Voluntario (cpf) ON DELETE CASCADE,
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

DROP TABLE IF EXISTS Estoque_Racao;
create table Estoque_Racao(
    id int not null primary key auto_increment,
    quantidade int not null,
    marca varchar(45) not null,
    nome varchar(45) not null,
    id_tipo_animal int not null,
    kg float not null,
    constraint fk_EstoqueRacao_TipoAnimal FOREIGN KEY (id_tipo_animal) REFERENCES Tipo_Animal (id)
);

DROP TABLE IF EXISTS Parceiros;
create table Parceiros(
    telefone VARCHAR(11) not null,
    nome VARCHAR(45) not null,
    email VARCHAR(45) not null primary key UNIQUE
);

DROP TABLE IF EXISTS Ficha_Medica;
create table Ficha_Medica(
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
    constraint fk_FichaMedica_Animal foreign key (id_animal) references Animal (id) on delete cascade
);