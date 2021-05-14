use petgat20_development;

DROP VIEW IF EXISTS viewAllVaccineCardsOfAnimalsInSector;

CREATE VIEW viewAllVaccineCardsOfAnimalsInSector
AS SELECT vaccines.nome as Nome_Vacina, animals.nome as Nome_Animal, animal_types.nome as Nome_Tipo_Animal from vaccine_cards inner join animals on (animals.id = vaccine_cards.id_animal)
inner join vaccines on (vaccines.id = vaccine_cards.id_vacina) 
inner join animal_types on (animal_types.id = animals.id_tipo_animal) where animals.id_setor = '1';

select * from viewAllVaccineCardsOfAnimalsInSector;