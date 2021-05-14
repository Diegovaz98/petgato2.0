use petgat20_development;

DROP PROCEDURE IF EXISTS updateSectorQuantity;

DELIMITER //

create procedure updateSectorQuantity(
	in animal_id int
)
begin
	declare setor_id, quantidade_atual, quantidade_maxima int default 0;
    select id_setor into setor_id from animals where id = animal_id limit 1;
    select capacidade_max into quantidade_maxima from sectors where id = setor_id; 
    if setor_id > 0 then
        select count(*) into quantidade_atual from animals where id_setor = setor_id and adotado <> true; 
        if quantidade_atual >= 0 and quantidade_atual < quantidade_maxima THEN
			update sectors set quantidade = quantidade_atual where id = setor_id;
		end if;
    end if;
	
end//

DELIMITER ;