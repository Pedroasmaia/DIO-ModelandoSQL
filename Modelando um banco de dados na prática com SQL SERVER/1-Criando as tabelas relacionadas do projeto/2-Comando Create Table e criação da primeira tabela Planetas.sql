CREATE TABLE Planetas(
    Idplaneta int not null,
    Nome varchar(50) not null,
    Rotacao float not null,
    Orbita float not null,
    Diametro float not null,
    Clima varchar(50) not null,
    População int not null,
)
/*Sempre me lembrar de utilizar essas informações de forma consciente, para máximar o uso de um banco, exemplo:*/
/*Utilizar varchar salva o caracter utilizando 1byte e o nvarchar utilizar 2byte */

GO/*Define fim de uma secção de comandos*/

ALTER TABLE Planetas add constraint PK_Planetas PRIMARY KEY(Idplaneta);
/*Isso é uma alteração na tabela, "CONSTRAINT" adiciona uma regra.*/
/*"PRIMARY KEY" define que idplaneta será uma chave que não pode se repetir.*/
