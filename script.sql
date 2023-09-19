DO
$$
DECLARE
	--1. Declaração de cursor
	cur_nomes_youtubers REFCURSOR;
	-- para armazenar o nome da vez
	v_youtuber VARCHAR(200);
BEGIN
	--2. Abertura do cursor
	OPEN cur_nomes_youtubers FOR
		SELECT youtuber
		FROM
		tb_top_youtubers;
	LOOP
		--3. Recuperação dos dados de interesse
		FETCH cur_nomes_youtubers INTO v_youtuber;
		--variável especial: FOUND
		EXIT WHEN NOT FOUND;
		RAISE NOTICE 'Nome: %', v_youtuber;
	END LOOP;
	--4. Fechar o ursor;
	CLOSE cur_nomes_youtubers;
END;
$$


-- SELECT * FROM tb_top_youtubers;

-- CREATE TABLE tb_top_youtubers(
-- 	cod_top_youtubers SERIAL PRIMARY KEY,
-- 	rank INT,
-- 	youtuber VARCHAR(200),
-- 	subscribers INT,
-- 	video_views VARCHAR(200),
-- 	video_count INT,
-- 	category VARCHAR(200),
-- 	started INT
-- );


