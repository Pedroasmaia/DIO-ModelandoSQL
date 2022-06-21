# Precisamos de 3 tabelas
|Tabelas| Relacionamento entre elas | Forekey|
|---|---|---|
Planetas | Pode conter X pilotos| Id planeta|
Pilotos | Pode ter vindo de apenas 1 planeta | Id Piloto 
Naves | Como o mesmo piloto pode usar varias naves e as naves podem ser pilotadas por varios pilotos useremos uma tabela intermediaria | ID piloto e ID Nave
