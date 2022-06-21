# Criar tabelas por meio do Microsoft SQL Server Management Studio

1. Clicar com direito em tabelas => Novo => Tabela

![Print](https://github.com/Pedroasmaia/Learn/blob/PRD/SQL/Digital%20Innovation%20One/Modelando%20um%20banco%20de%20dados%20na%20pr%C3%A1tica%20com%20SQL%20SERVER/3-001.png)

2. Inserir nome da coluna => Tipo de Dados => E se permite nulos => Clique com o direito no cabeçalho e defina a Chave Primaria

![Print2](https://github.com/Pedroasmaia/Learn/blob/b8c293738901cc66926477471718fa62d16222cc/SQL/Digital%20Innovation%20One/Modelando%20um%20banco%20de%20dados%20na%20pr%C3%A1tica%20com%20SQL%20SERVER/3-Cria%C3%A7%C3%A3o%20da%20tabela%20Naves%20e%20a%20Pilotos.md)

~~~Sql
CREATE TABLE Pilotos(
	IdPiloto int not null,
	Nome varchar(200) not null,
	AnoNascimento varchar(10) not null
	IdPlaneta int not null
)
GO
Alter table Pilotos add constraint PK_Pilotos Primary KEY (idPiloto);
GO
Alter table Pilotos add constraint FK_Pilotos_planetas FOREIGN KEY(IdPlaneta)
References Planetas (idPlaneta)
