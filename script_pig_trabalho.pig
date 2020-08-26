-- Carrega o arquivo Movies.csv usando o PigStorage indicando o separador dos campos, a vírgula.
Filmes = LOAD '/cloudera/trabalho/pig/movies.csv' using PigStorage(',') as (movieId: chararray, title: chararray, genres: chararray);
-- Filtra filmes somente de ação
Genero = FILTER Filmes by genres == 'Action';
--Armazena a relação Genero Filmes Ação no diretório /cloudera/trabalho/Pig
STORE Genero into '/user/cloudera/filmes/Genero2' using PigStorage(',');

DUMP Genero
