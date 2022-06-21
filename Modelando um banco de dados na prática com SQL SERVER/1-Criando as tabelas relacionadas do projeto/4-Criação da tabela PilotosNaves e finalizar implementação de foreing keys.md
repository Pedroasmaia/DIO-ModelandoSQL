
# Criando tabela relacional entre Pilotos e Naves
~~~ SQL
CREATE TABLE PilotosNaves(
    IdPiloto int not null,
    IdNave int not null,
    FlagAutorizado bit not null,
    /*Bit representa ou 0 ou 1, sendo 0 = false e 1 = a true*/
)
GO

ALTER TABLE PilotosNaves ADD CONSTRAINT PK_PilotosNaves PRIMARY KEY (IdPiloto, IdNaves)
GO
ALTER TABLE PilotosNaves ADD CONSTRAINT FK_PilotosNaves_Pilotos FOREIGN KEY(IdPiloto)
REFERENCES Pilotos(IdPiloto)
/*Referencia a FOREING KEY IdPiloto, que tem que existir lá na tabela pilotos*/
GO
ALTER TABLE PilotosNaves ADD CONSTRAINT FK_PilotosNaves_Pilotos FOREIGN KEY (IdNaves)
REFERENCES Naves(IdNaves)
/*Referencia a FOREING KEY IdNaves, que tem que existir lá na tabela Naves*/
GO
ALTER TABLE PilotosNaves ADD CONSTRAINT DF_PilotosNaves_FlagAutorizado DEFAULT (1) FOR FlagAutorizado
/*A primeira vez que eu inserir um registro se eu não colocar um valor na coluna FlagAutorizado o valor padrão é 1*/
~~~
# Criando  Tabela de Historico de viagens

~~~ SQL
CREATE TABLE HistoricoViagens(
	IdNave int NOT null,
	IdPiloto int not null,
	DTSaida datetime not null,
	DTChegada datetime null,
)
GO

ALTER TABLE HistoricoViagens ADD CONSTRAINT FK_HistoricoViagens_PilotosNaves FOREIGN KEY(IdPilotos,IdNave)
/*Referencia a tabela pilotos naves*/
REFERENCES PilotosNaves (IdPIlotos,IdNave)
GO
ALTER TABLE HistoricoViagens CHECK CONSTRAINT FK_HistoricoViagens_PilotosNaves
