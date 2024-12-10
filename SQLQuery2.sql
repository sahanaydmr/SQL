create database odev
use odev

create table Musteri
(
	musteriID int not null primary key,
	musteriAdi nvarchar(30) not null,
	musteriTelefon int not null
)

create table Tedarikci
(
	tedarikciID int not null primary key,
	tedarikciAdi nvarchar(30) not null,
	tedarikciTelefon int not null,
	tedarikciMail varchar(40) not null
)

create table Urun
(
	urunID int not null primary key,
	urunAdi nvarchar(30) not null,
	urunFiyat float not null,
	urunMiktar int not null,
	tedarikciID int not null foreign key references Tedarikci (tedarikciID)
)

create table SatinAlma
(
	satisID int not null primary key,
	odemeDurum nvarchar(15) not null,
	satýnAlmaTarihi DateTime not null,
	urunID int not null foreign key references Urun (urunID),
	adet int not null,
	satisfiyati float not null,
	musteriID int not null foreign key references Musteri (musteriID)
)