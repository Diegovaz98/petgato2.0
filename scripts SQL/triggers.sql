use petgat20_development;
DROP TRIGGER IF EXISTS atualizaQuantidadeAfterInsertAnimals;

DELIMITER //

CREATE TRIGGER atualizaQuantidadeAfterInsertAnimals
    AFTER INSERT
    ON animals for each row
BEGIN
	declare quantidade_atual int default 0;
    select count(*) into quantidade_atual from animals where id_setor = NEW.id_setor and adotado <> true;
    
    if quantidade_atual > 0 then
		update sectors set quantidade = quantidade_atual where id = NEW.id_setor;
    end if;
END//

DROP TRIGGER if exists atualizaQuantidadeAfterInsertAdoptionHistories;

DELIMITER //

CREATE TRIGGER atualizaQuantidadeAfterInsertAdoptionHistories
    AFTER INSERT
    ON adoption_histories for each row
BEGIN
	UPDATE animals set adotado = true where id = NEW.id_animal;
	call updateSectorQuantity (NEW.id_animal);
END//   

DELIMITER ;

