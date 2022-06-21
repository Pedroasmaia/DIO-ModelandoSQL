# Fazer pesquisa com filto especifico:

~~~SQL
select * from Pilotos where Nome = 'Darth'
/*Seleciona do todo, na tabela piltos quando COLUNA for igual VALOR"*/ 
select * from Pilotos where Nome  like '%Darth'
/*Seleciona do todo, na tabela piltos quando *COLUNA* começar com *valor*"*/
select * from Pilotos where Nome  like '%Darth%'
/*Seleciona do todo, na tabela piltos quando *COLUNA* contenha *valor*"*/
select * from Pilotos where Nome  like '%Darth%'
/*Seleciona do todo, na tabela piltos quando *COLUNA* termina com *valor*"*/
select  

~~~

# Funcção para descobrir hora atual no sql server:

~~~SQL

select GetDate()