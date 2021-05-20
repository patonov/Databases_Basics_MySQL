USE soft_uni;


DELIMITER $$
create function ufn_is_word_comprised (set_of_chars varchar(30), word varchar(200))
returns bool DETERMINISTIC
begin
	declare len int default char_length(word);
    declare idx int default 1;
    while idx <= len do
		if locate(substring(word, idx, 1), set_of_chars) < 1
        then
        return false;
        end if;
    set idx = idx + 1;
    end while;
    return true;    
end$$

DELIMITER ;

select ufn_is_word_comprised('a', 'aab');

