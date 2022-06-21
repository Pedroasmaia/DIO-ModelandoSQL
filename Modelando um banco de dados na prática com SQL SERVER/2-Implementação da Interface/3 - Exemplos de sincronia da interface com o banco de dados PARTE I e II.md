# Definindo alias para as tabelas

~~~SQL
FROM HistoricoViagens t1
INNER join Pilotos t2
on t1.IdPiloto = t2.IdPiloto