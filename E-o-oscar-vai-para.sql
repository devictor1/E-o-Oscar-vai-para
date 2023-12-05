1) Quantas vezes Natalie Portman foi indicada ao Oscar?
SELECT * from movies where name like '%Natalie Portman%';
RESPOSTA: 3 vezes
    

2) Quantos Oscars Natalie Portman ganhou?
SELECT * from movies where name like '%Natalie Portman%' and winner like 'True%';
RESPOSTA: Nenhum
    
    
3) Amy Adams já ganhou algum Oscar?
SELECT * from movies where name like '%Amy Adams%' and winner like 'True%';
RESPOSTA: Nunca
    
    
4) A série de filmes Toy Story ganhou um Oscar em quais anos?
SELECT * from movies where film like '%Toy Story%' and winner like 'True%';
RESPOSTA: Em 2011 e 2020 
    

5) Quem tem mais Oscars: a categoria "Melhor  Ator" ou "Melhor Filme"?
    Select
    SUM(CASE WHEN category like '%ACTOR%' and winner like 'True%' THEN 1 ELSE 0 END) AS Melhor_Ator ,
    SUM(CASE WHEN category like '%BEST PICTURE%' and winner like 'True%' THEN 1 ELSE 0 END)  AS Melhor_Filme
   from movies;
RESPOSTA: A categoria de Melhor Ator com 177 Oscars contra 58 de Melhor Filme


6) O primeiro Oscar para melhor Atriz foi para quem? Em que ano?
SELECT * from movies where category like '%ACTRESS%' and ceremony = '1' and winner like 'true%';
RESPOSTA: O primeiro oscar foi para Janet Gaynor no ano de 1928 
    

7) Na coluna/campo Winner, altere todos os valores com "True" para 1 e todos os valores "False" para 0.

RESPOSTA:
UPDATE movies
SET winner = CASE
    WHEN winner = 'true' THEN '1'
    WHEN winner = 'false' THEN '0'
END;
 

    

8) Em qual edição do Oscar "Crash" ganhou o prêmio principal?

SELECT * FROM movies WHERE film = 'Crash' AND CATEGORY = 'FILM EDITING';
RESPOSTA: Ganhou em 2006



9) Bom... dê um Oscar para um filme que merece muito, mas não ganhou.
UPDATE movies SET winner = '1' WHERE id_movie = '8595';
RESPOSTA:  8595	2005	2006	78	CINEMATOGRAPHY	Wally Pfister	Batman Begins	1



10) O filme Central do Brasil aparece no Oscar?
SELECT * FROM movies WHERE film LIKE '%Central Station%';
RESPOSTA: Sim, em 1999



11) Inclua no banco 3 filmes que nunca nem foram nomeados ao Oscar, mas que na sua opinião, merecem. 
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2019', '2020', '93', '', 'Anthony Russo, Joe Russo', 'Avengers: Endgame', '0');
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2021', '2022', '93', '', 'Anthony Russo, Joe Russo', 'Avengers: Infinity War', '0');
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2021', '2022', '93', '', 'Jon Watts', 'Spider-Man: No Way Home', '0');
        RESPOSTA: 
         '10396', '2019', '2020', '93', '', 'Anthony Russo, Joe Russo', 'Avengers: Endgame', 'True'
         '10398', '2021', '2022', '93', '', 'Anthony Russo, Joe Russo', 'Avengers: Infinity War', 'True'
         '10397', '2021', '2022', '93', '', 'Jon Watts', 'Spider-Man: No Way Home', 'True'

12)  Crie uma nova categoria de premiação. Qualquer prêmio que você queira dar. Agora vamos dar esses prêmios aos filmes que você cadastrou na questão acima.
 UPDATE movies set category = 'The Greatest Marvel Movies' where ceremony = '93';
     RESPOSTA:
10396	2019	2020	93	The Greatest Marvel Movies	Anthony Russo, Joe Russo	Avengers: Endgame	True
10398	2021	2022	93	The Greatest Marvel Movies	Anthony Russo, Joe Russo	Avengers: Infinity War	True
10397	2021	2022	93	The Greatest Marvel Movies	Jon Watts	Spider-Man: No Way Home	True

13) Qual foi o primeiro ano a ter um prêmio do Oscar?
SELECT * from movies where ceremony = '1';
RESPOSTA: Foi 1928
    


14) Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?
SELECT year_ceremony, category, film, name from movies where category in ('BEST PICTURE','ACTRESS','DIRECTING') and year_ceremony ='2000' and winner like '1';
RESPOSTA: American Beauty, Hilary Swank e Sam Mendes


-15) Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras.  Vamos cadastrá-los no nosso banco, mas eles ainda não ganharam o Oscar. Só foram nomeados.
RESPOSTA:
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('1981', '1982', '93', 'ACTRESS', 'Glenn Close', 'The World According to Garp', '0');
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2022', '2023', '93', 'ACTRESS', 'Michelle Yeoh', 'Everything Everywhere All At Once', '0');
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2005', '2006', '93', 'ACTRESS', 'Rinko Kikuchi', 'Babel', '0');
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2020', '2021', '93', 'ACTRESS', 'Hong Chau', 'Downsizing', '0');
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2014', '2015', '93', 'ACTRESS', 'Rosamund Pike', 'Gone Girl', '0');
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2006', '2007', '93', 'ACTRESS', 'Marion Cotillard', 'La Vie en Rose', '0');
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2006', '2007', '93', 'ACTRESS', 'Tilda Swinton', 'Michael Clayton', '0');


    
16) Agora vamos falar da sua vida. Me diga o nome de uma pessoa que você admira e o que ela fez na sua vida. Agora me diz: Quê prêmio essa pessoa merece? 
RESPOSTA: Thiago, meu irmão.
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2014', '2023', '93', 'Greatest Bro Ever', 'Thiago Lemos', 'The Story of a Duo', '1');
