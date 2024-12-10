create database test
use test

create table Sirket
(
	SirketID int not null primary key,
	SirketAdi nvarchar(20) not null,
	SirketTelefonu int not null,
	SirketMail varchar(40)
)

create table Calisan
(
	CalisanID int not null primary key,
	CalisanAdi nvarchar(20) not null,
	CalisanPozisyonu nvarchar(20) not null,
	CalisanTelefon int not null,
	CalisanMail varchar(40)
)

create table Proje
(
	ProjeID int not null primary key,
	ProjeAd nvarchar(50) not null,
	ProjeBasTarihi DateTime not null,
	ProjeBitisTarihi DateTime not null,
	ProjeButce float not null,
	CalisanID int not null foreign key references Calisan (CalisanID),
	SirketID int not null foreign key references Sirket (SirketID)
)