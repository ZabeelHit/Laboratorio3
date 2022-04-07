CREATE DATABASE RelacionNaN
go
use RelacionNaN
go

CREATE TABLE Videojuegos(
Nombre varchar(100) not null primary key,
Año smallint not null,
Genero varchar(100) not null
)
GO

CREATE TABLE Consolas(
ID smallint not null primary key identity (1, 1),
Nombre varchar(100) not null,
Año smallint not null
)
GO

CREATE TABLE VideoJuegosXConsolas(
NombreVideojuego varchar(100) not null foreign key references Videojuegos(Nombre),
IDConsola smallint not null foreign key references Consolas(ID),
primary key (NombreVideojuego, IDConsola),
)
GO
