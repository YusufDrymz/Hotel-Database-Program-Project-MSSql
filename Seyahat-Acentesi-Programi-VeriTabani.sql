create database SEYAHAT_ACENTESI_DB
go
use SEYAHAT_ACENTESI_DB
go

/*Sistemi kullanan y�neticiler i�in �ncelikle admin bilgileri*/
create table Yonetici(
AdminId int identity(1,1) primary key,
AdminAd varchar(25), LoginId varchar(25), Sifre varchar(50), Durum varchar(10));

insert into Yonetici(AdminAd, LoginId, Sifre, Durum) values ('Yusuf Dar�yemez','YusufDRYMZ','123456','');
insert into Yonetici(AdminAd, LoginId, Sifre, Durum) values ('Erkan Dar�yemez','YusufDRYMZ','123456','');
insert into Yonetici(AdminAd, LoginId, Sifre, Durum) values ('Ahmet','Kral','123456','');
insert into Yonetici(AdminAd, LoginId, Sifre, Durum) values ('�afak','afsaa','123456','');
insert into Yonetici(AdminAd, LoginId, Sifre, Durum) values ('G�ne�','Denizin','123456','');
insert into Yonetici(AdminAd, LoginId, Sifre, Durum) values ('Ahmet','Ahmet123','123456','');
insert into Yonetici(AdminAd, LoginId, Sifre, Durum) values ('Mehmet','MehmetPa�a','123456','');
insert into Yonetici(AdminAd, LoginId, Sifre, Durum) values ('Ay�e','Ay�e07','123456','');
insert into Yonetici(AdminAd, LoginId, Sifre, Durum) values ('Pelin','PelinBaba','123456','');
insert into Yonetici(AdminAd, LoginId, Sifre, Durum) values ('Nagehan','NagehanHoca','123456','');

/*Seyahat acentelerinin anla�mal� oldu�u �irketlerin bilgisi*/
create table Sirket(
SirketId int identity(1,1) primary key,
SirketTipi varchar(20), SirketAd varchar(25), SirketLogo varchar(100), Aciklama text, Durum varchar(10));

insert into Sirket(SirketTipi, SirketAd, SirketLogo, Aciklama, Durum) values ('Otel','G�ne� Otel','','Konaklama i�in 3 y�ld�zl� otel','');
insert into Sirket(SirketTipi, SirketAd, SirketLogo, Aciklama, Durum) values ('Rent a Car','Volkan Araba','','Ara� kiralaman�n Yeni adresi','');
insert into Sirket(SirketTipi, SirketAd, SirketLogo, Aciklama, Durum) values ('Otel','Baba Motel','','Konaklama i�in 2 y�ld�zl� otel','');
insert into Sirket(SirketTipi, SirketAd, SirketLogo, Aciklama, Durum) values ('Market','Uluda� Market','','Market Al��veri�leri','');
insert into Sirket(SirketTipi, SirketAd, SirketLogo, Aciklama, Durum) values ('Yard�m','K�z�lay','','Afed ve gerekli acil durumlar i�in','');
insert into Sirket(SirketTipi, SirketAd, SirketLogo, Aciklama, Durum) values ('Sucu','Madran Su','','Suyun en saf hali','');
insert into Sirket(SirketTipi, SirketAd, SirketLogo, Aciklama, Durum) values ('Elektrik�i','Kral Elektrik','','Elektrik ve elektronik tamir, bak�m, onar�m','');
insert into Sirket(SirketTipi, SirketAd, SirketLogo, Aciklama, Durum) values ('Sigorta','Lale Sigorta','','G�vencenin Adresi','');
insert into Sirket(SirketTipi, SirketAd, SirketLogo, Aciklama, Durum) values ('Kasap','Helal-Et','','Tazelik ve Tat','');
insert into Sirket(SirketTipi, SirketAd, SirketLogo, Aciklama, Durum) values ('Otel','G�ne� Otel','','Konaklama i�in 3 y�ld�zl� otel','');
insert into Sirket(SirketTipi, SirketAd, SirketLogo, Aciklama, Durum) values ('Otel','G�ne� Otel','','Konaklama i�in 3 y�ld�zl� otel','');


/*M��teri bilgileri*/
create table Musteri(
MusteriId int identity(1,1) primary key,
MusteriAd varchar(25), DogumGunu date, Cinsiyet varchar(10), Adres varchar(500), IletisimNo varchar(20), Mobil varchar(20), Sehir varchar(20), Ulke varchar(25), PinCode varchar(10), EmailId varchar(20), LoginId varchar(20), Sifre varchar(50), Durum varchar(10));

insert into Musteri(MusteriAd, DogumGunu, Cinsiyet, Adres, IletisimNo, Mobil, Sehir, Ulke, EmailId, LoginId , Sifre, Durum) values ('Ahmet',datefromparts(2000,01,01),'Erkek','Antalya','12345', '','','T�rkiye','123@gmail.com','Ahmet','1234','');
insert into Musteri(MusteriAd, DogumGunu, Cinsiyet, Adres, IletisimNo, Mobil, Sehir, Ulke, EmailId, LoginId , Sifre, Durum) values ('Nilay',datefromparts(1995,01,01),'Kad�n','�stanbul','12345', '','','T�rkiye','123@gmail.com','Nilay','1234','');
insert into Musteri(MusteriAd, DogumGunu, Cinsiyet, Adres, IletisimNo, Mobil, Sehir, Ulke, EmailId, LoginId , Sifre, Durum) values ('Jason',datefromparts(1990,01,01),'Erkek','Paris','12345', '','','Fransa','123@gmail.com','Jason','1234','');
insert into Musteri(MusteriAd, DogumGunu, Cinsiyet, Adres, IletisimNo, Mobil, Sehir, Ulke, EmailId, LoginId , Sifre, Durum) values ('Carla',datefromparts(2000,01,01),'Kad�n','Berlin','12345', '','','Almanya','123@gmail.com','Carla','1234','');
insert into Musteri(MusteriAd, DogumGunu, Cinsiyet, Adres, IletisimNo, Mobil, Sehir, Ulke, EmailId, LoginId , Sifre, Durum) values ('Ali',datefromparts(1996,01,01),'Erkek','�anl�urfa','12345', '','','T�rkiye','123@gmail.com','Alican','1234','');
insert into Musteri(MusteriAd, DogumGunu, Cinsiyet, Adres, IletisimNo, Mobil, Sehir, Ulke, EmailId, LoginId , Sifre, Durum) values ('Yusuf',datefromparts(1989,01,01),'Erkek','Kocaeli','12345', '','','T�rkiye','123@gmail.com','YusufYED','1234','');
insert into Musteri(MusteriAd, DogumGunu, Cinsiyet, Adres, IletisimNo, Mobil, Sehir, Ulke, EmailId, LoginId , Sifre, Durum) values ('P�nar',datefromparts(2000,01,01),'Kad�n','Ankara','12345', '','','T�rkiye','123@gmail.com','P�narG�l','1234','');
insert into Musteri(MusteriAd, DogumGunu, Cinsiyet, Adres, IletisimNo, Mobil, Sehir, Ulke, EmailId, LoginId , Sifre, Durum) values ('Canan',datefromparts(2000,01,01),'Kad�n','K�tahya','12345', '','','T�rkiye','123@gmail.com','Canan123','1234','');
insert into Musteri(MusteriAd, DogumGunu, Cinsiyet, Adres, IletisimNo, Mobil, Sehir, Ulke, EmailId, LoginId , Sifre, Durum) values ('�mer',datefromparts(2000,01,01),'Erkek','Antalya','12345', '','','T�rkiye','123@gmail.com','�merHalit','1234','');
insert into Musteri(MusteriAd, DogumGunu, Cinsiyet, Adres, IletisimNo, Mobil, Sehir, Ulke, EmailId, LoginId , Sifre, Durum) values ('Osman',datefromparts(2000,01,01),'Erkek','�dlib','12345', '','','Suriye','123@gmail.com','OsmanSuri','1234','');

/*Otob�s seyahati i�in otob�s ile ilgili bilgiler*/
create table Otobus(
OtobusId int identity(1,1) primary key,
OtobusTipi varchar(25), UykuSayisi int, KoltukSayisi int, Durum varchar(10));

insert into Otobus(OtobusTipi, UykuSayisi, KoltukSayisi, Durum) values ('Yolcu', '','18', '');
insert into Otobus(OtobusTipi, UykuSayisi, KoltukSayisi, Durum) values ('�ehirler Aras�', '','40', '');
insert into Otobus(OtobusTipi, UykuSayisi, KoltukSayisi, Durum) values ('Dolmu�', '','18', '');
insert into Otobus(OtobusTipi, UykuSayisi, KoltukSayisi, Durum) values ('Metro', '','100', '');
insert into Otobus(OtobusTipi, UykuSayisi, KoltukSayisi, Durum) values ('Kamilko�', '','20', '');
insert into Otobus(OtobusTipi, UykuSayisi, KoltukSayisi, Durum) values ('Yolcu', '','18', '');
insert into Otobus(OtobusTipi, UykuSayisi, KoltukSayisi, Durum) values ('Yolcu', '','18', '');
insert into Otobus(OtobusTipi, UykuSayisi, KoltukSayisi, Durum) values ('Yolcu', '','18', '');
insert into Otobus(OtobusTipi, UykuSayisi, KoltukSayisi, Durum) values ('Yolcu', '','18', '');
insert into Otobus(OtobusTipi, UykuSayisi, KoltukSayisi, Durum) values ('Yolcu', '','18', '');

/*U�akla seyahat i�in u�ak ile ilgili bilgiler*/
create table Ucak(
UcakId int identity(1,1) primary key,
SirketAd varchar(44), DlocationId int, AlocationId int, Duration varchar(25), KalkisZaman datetime, VarisZaman datetime, EkonomiKoltuk int, BusinessKoltuk int, FirstclassKoltuk int, PremiumeconomyKoltuk int, EkoFiyat float, BusinessFiyat float, FirstclassFiyat float, PremiumFiyat float, Aciklama text, Durum varchar(10));

insert into Ucak(SirketAd, DlocationId, AlocationId, KalkisZaman, VarisZaman, EkonomiKoltuk, BusinessKoltuk, FirstclassKoltuk, PremiumeconomyKoltuk, EkoFiyat, BusinessFiyat, FirstclassFiyat, PremiumFiyat, Aciklama,Durum) values ('THY','','', '2021-06-10 12:35:25', '2021-06-10 12:35:25', 4, 4,'','', 105, 207,'','', 'D�nyan�n bir numararal� u�ak firmas�','');
insert into Ucak(SirketAd, DlocationId, AlocationId, KalkisZaman, VarisZaman, EkonomiKoltuk, BusinessKoltuk, FirstclassKoltuk, PremiumeconomyKoltuk, EkoFiyat, BusinessFiyat, FirstclassFiyat, PremiumFiyat, Aciklama,Durum) values ('Anadolu Jet','','',  '2021-06-10 12:35:25', '2021-06-10 12:35:25', 4, 4,'','',  181, 238,'','',  'THY ortakl� u�ak firmas�','');
insert into Ucak(SirketAd, DlocationId, AlocationId, KalkisZaman, VarisZaman, EkonomiKoltuk, BusinessKoltuk, FirstclassKoltuk, PremiumeconomyKoltuk, EkoFiyat, BusinessFiyat, FirstclassFiyat, PremiumFiyat, Aciklama,Durum) values ('Pegasus','','',  '2021-06-10 12:35:25', '2021-06-10 12:35:25', 4, 4,'','',  105, 207,'','',  'Hesapl� Fiyatla','');
insert into Ucak(SirketAd, DlocationId, AlocationId, KalkisZaman, VarisZaman, EkonomiKoltuk, BusinessKoltuk, FirstclassKoltuk, PremiumeconomyKoltuk, EkoFiyat, BusinessFiyat, FirstclassFiyat, PremiumFiyat, Aciklama,Durum) values ('Sun Exprees','','',  '2021-06-10 12:35:25', '2021-06-10 12:35:25', 4, 4,'','',  80, 180,'','',  'Rusya Favorisi','');
insert into Ucak(SirketAd, DlocationId, AlocationId, KalkisZaman, VarisZaman, EkonomiKoltuk, BusinessKoltuk, FirstclassKoltuk, PremiumeconomyKoltuk, EkoFiyat, BusinessFiyat, FirstclassFiyat, PremiumFiyat, Aciklama,Durum) values ('Onur Air','','',  '2021-06-10 12:35:25', '2021-06-10 12:35:25', 4, 4,'','',  105, 207,'','',  'Ukrayna Almanya Fovorisi','');
insert into Ucak(SirketAd, DlocationId, AlocationId, KalkisZaman, VarisZaman, EkonomiKoltuk, BusinessKoltuk, FirstclassKoltuk, PremiumeconomyKoltuk, EkoFiyat, BusinessFiyat, FirstclassFiyat, PremiumFiyat, Aciklama,Durum) values ('Corendon Airlens','','',  '2021-06-10 12:35:25', '2021-06-10 12:35:25', 4, 4,'','',  105, 207,'','',  'Gooddd','');
insert into Ucak(SirketAd, DlocationId, AlocationId, KalkisZaman, VarisZaman, EkonomiKoltuk, BusinessKoltuk, FirstclassKoltuk, PremiumeconomyKoltuk, EkoFiyat, BusinessFiyat, FirstclassFiyat, PremiumFiyat, Aciklama,Durum) values ('THY','','',  '2021-06-10 12:35:25', '2021-06-10 12:35:25', 4, 4,'','',  105, 207,'','',  'S�per','');
insert into Ucak(SirketAd, DlocationId, AlocationId, KalkisZaman, VarisZaman, EkonomiKoltuk, BusinessKoltuk, FirstclassKoltuk, PremiumeconomyKoltuk, EkoFiyat, BusinessFiyat, FirstclassFiyat, PremiumFiyat, Aciklama,Durum) values ('THY','','',  '2021-06-10 12:35:25', '2021-06-10 12:35:25', 4, 4,'','',  105, 207,'','',  'Eh i�te','');
insert into Ucak(SirketAd, DlocationId, AlocationId, KalkisZaman, VarisZaman, EkonomiKoltuk, BusinessKoltuk, FirstclassKoltuk, PremiumeconomyKoltuk, EkoFiyat, BusinessFiyat, FirstclassFiyat, PremiumFiyat, Aciklama,Durum) values ('THY','','',  '2021-06-10 12:35:25', '2021-06-10 12:35:25', 4, 4,'','',  105, 207,'','',  '�yidir','');
insert into Ucak(SirketAd, DlocationId, AlocationId, KalkisZaman, VarisZaman, EkonomiKoltuk, BusinessKoltuk, FirstclassKoltuk, PremiumeconomyKoltuk, EkoFiyat, BusinessFiyat, FirstclassFiyat, PremiumFiyat, Aciklama,Durum) values ('THY','','',  '2021-06-10 12:35:25', '2021-06-10 12:35:25', 4, 4,'','',  105, 207,'','',  'Fena De�il','');

/*M��terilere konaklama hizmeti verilmesi i�in anla�mal� otellerin bilgisi*/
create table Otel(
OtelId int identity(1,1) primary key,
SirketId int, foreign key (SirketId) references Sirket(SirketId), 
KonumId int, OtelAd varchar(44), OtelAdres varchar(250), Sifre varchar(44), Aciklama text);

insert into Otel(SirketId, KonumId, OtelAd, OtelAdres, Sifre, Aciklama) values (1,1,'Baba Otel','Marmaris', '123', '�yidir');
insert into Otel(SirketId, KonumId, OtelAd, OtelAdres, Sifre, Aciklama) values (2,2,'Kral Otel','Antalya', '123', '�yidir');
insert into Otel(SirketId, KonumId, OtelAd, OtelAdres, Sifre, Aciklama) values (3,3,'Can Otel','Uluda�', '123', '�yidir');
insert into Otel(SirketId, KonumId, OtelAd, OtelAdres, Sifre, Aciklama) values (4,4,'Cordano Otel','�stanbul', '123', '�yidir');
insert into Otel(SirketId, KonumId, OtelAd, OtelAdres, Sifre, Aciklama) values (5,5,'Rixos Otel','K��ede', '123', '�yidir');
insert into Otel(SirketId, KonumId, OtelAd, OtelAdres, Sifre, Aciklama) values (6,6,'Uygulama Otel','Kar��da', '123', '�yidir');
insert into Otel(SirketId, KonumId, OtelAd, OtelAdres, Sifre, Aciklama) values (7,7,'Antalya Otel','Avrupa', '123', '�yidir');
insert into Otel(SirketId, KonumId, OtelAd, OtelAdres, Sifre, Aciklama) values (8,8,'Pharis Otel','Asya', '123', '�yidir');
insert into Otel(SirketId, KonumId, OtelAd, OtelAdres, Sifre, Aciklama) values (9,9,'Bonomo Otel','Tarlada', '123', '�yidir');
insert into Otel(SirketId, KonumId, OtelAd, OtelAdres, Sifre, Aciklama) values (10,10,'Resident Otel','�orum', '123', '�yidir');

/*Otel Resmi*/
create table OtelResim(
OtelResimId int identity(1,1) primary key,
OtelId int, OtelResim varchar(50), Aciklama text, foreign key (OtelId) references Otel(OtelId));

insert into OtelResim(OtelId, OtelResim, Aciklama) values (1,'', '�yidir');
insert into OtelResim(OtelId, OtelResim, Aciklama) values (2,'', '�yidir');
insert into OtelResim(OtelId, OtelResim, Aciklama) values (3,'', '�yidir');
insert into OtelResim(OtelId, OtelResim, Aciklama) values (4,'', '�yidir');
insert into OtelResim(OtelId, OtelResim, Aciklama) values (5,'', '�yidir');
insert into OtelResim(OtelId, OtelResim, Aciklama) values (6,'', '�yidir');
insert into OtelResim(OtelId, OtelResim, Aciklama) values (7,'', '�yidir');
insert into OtelResim(OtelId, OtelResim, Aciklama) values (8,'', '�yidir');
insert into OtelResim(OtelId, OtelResim, Aciklama) values (9,'', '�yidir');
insert into OtelResim(OtelId, OtelResim, Aciklama) values (10,'', '�yidir');

/*Otel oda tipi bilgileri*/
create table OdaTipi(
OdaTipiId int identity(1,1) primary key,
OtelId int, OdaTipi varchar(50), Aciklama text, OdaTarifi float, Durum varchar(10), foreign key (OtelId) references Otel(OtelId));

insert into OdaTipi(OtelId, OdaTipi, Aciklama, OdaTarifi, Durum) values (1,'Kral Dairesi', 'G�zel', 100, 'Bos');
insert into OdaTipi(OtelId, OdaTipi, Aciklama, OdaTarifi, Durum) values (2,'Kral Dairesi', 'G�zel',80, 'Dolu');
insert into OdaTipi(OtelId, OdaTipi, Aciklama, OdaTarifi, Durum) values (3,'Kral Dairesi', 'G�zel',70, 'Bo�');
insert into OdaTipi(OtelId, OdaTipi, Aciklama, OdaTarifi, Durum) values (4,'Kral Dairesi', 'G�zel',110, 'Dolu');
insert into OdaTipi(OtelId, OdaTipi, Aciklama, OdaTarifi, Durum) values (5,'Kral Dairesi', 'G�zel',50, 'Bo�');
insert into OdaTipi(OtelId, OdaTipi, Aciklama, OdaTarifi, Durum) values (6,'Kral Dairesi', 'G�zel',49, 'Bo�');
insert into OdaTipi(OtelId, OdaTipi, Aciklama, OdaTarifi, Durum) values (7,'Kral Dairesi', 'G�zel',321, 'Bo�');
insert into OdaTipi(OtelId, OdaTipi, Aciklama, OdaTarifi, Durum) values (8,'Kral Dairesi', 'G�zel',111, 'Bo�');
insert into OdaTipi(OtelId, OdaTipi, Aciklama, OdaTarifi, Durum) values (9,'Kral Dairesi', 'G�zel',35, 'Bo�');
insert into OdaTipi(OtelId, OdaTipi, Aciklama, OdaTarifi, Durum) values (10,'Kral Dairesi', 'G�zel',97, 'Bo�');

/*Otel oda bilgileri*/
create table Oda(
OdaId int identity(1,1) primary key,
OdaNo varchar(30), OdaTipiId int, Durum varchar(10), foreign key (OdaTipiId) references OdaTipi(OdaTipiId));

insert into Oda(OdaNo, OdaTipiId, Durum) values ('123',1, '�yidir');
insert into Oda(OdaNo, OdaTipiId, Durum) values ('123',2, '�yidir');
insert into Oda(OdaNo, OdaTipiId, Durum) values ('123',3, '�yidir');
insert into Oda(OdaNo, OdaTipiId, Durum) values ('123',4, '�yidir');
insert into Oda(OdaNo, OdaTipiId, Durum) values ('123',5, '�yidir');
insert into Oda(OdaNo, OdaTipiId, Durum) values ('123',6, '�yidir');
insert into Oda(OdaNo, OdaTipiId, Durum) values ('123',7, '�yidir');
insert into Oda(OdaNo, OdaTipiId, Durum) values ('123',8, '�yidir');
insert into Oda(OdaNo, OdaTipiId, Durum) values ('123',9, '�yidir');
insert into Oda(OdaNo, OdaTipiId, Durum) values ('123',10, '�yidir');

/*Otel oda servis bilgileri*/
create table Servis(
ServisId int identity(1,1) primary key,
OtelId int, ServisTipi varchar(50), ServisTitle varchar(100), Aciklama text, Resim varchar(100), Fiyat float, TarifeTipi varchar(25), Birim varchar(25), Durum varchar(10), foreign key (OtelId) references Otel(OtelId));

insert into Servis(OtelId, ServisTipi, ServisTitle, Aciklama, Resim, Fiyat, TarifeTipi, Birim, Durum) values (1,'Tip1','Tip1', 'G�zel Servis', '', 100, '�yidir','Birim1','Durum1');
insert into Servis(OtelId, ServisTipi, ServisTitle, Aciklama, Resim, Fiyat, TarifeTipi, Birim, Durum) values (2,'Tip2','Tip2', 'G�zel Servis', '', 100, '�yidir','Birim2','Durum1');
insert into Servis(OtelId, ServisTipi, ServisTitle, Aciklama, Resim, Fiyat, TarifeTipi, Birim, Durum) values (3,'Tip3','Tip3', 'G�zel Servis', '', 100, '�yidir','Birim3','Durum1');
insert into Servis(OtelId, ServisTipi, ServisTitle, Aciklama, Resim, Fiyat, TarifeTipi, Birim, Durum) values (4,'Tip4','Tip4', 'G�zel Servis', '', 100, '�yidir','Birim4','Durum1');
insert into Servis(OtelId, ServisTipi, ServisTitle, Aciklama, Resim, Fiyat, TarifeTipi, Birim, Durum) values (5,'Tip5','Tip5', 'G�zel Servis', '', 100, '�yidir','Birim5','Durum1');
insert into Servis(OtelId, ServisTipi, ServisTitle, Aciklama, Resim, Fiyat, TarifeTipi, Birim, Durum) values (6,'Tip6','Tip6', 'G�zel Servis', '', 100, '�yidir','Birim6','Durum1');
insert into Servis(OtelId, ServisTipi, ServisTitle, Aciklama, Resim, Fiyat, TarifeTipi, Birim, Durum) values (7,'Tip7','Tip7', 'G�zel Servis', '', 100, '�yidir','Birim7','Durum1');
insert into Servis(OtelId, ServisTipi, ServisTitle, Aciklama, Resim, Fiyat, TarifeTipi, Birim, Durum) values (8,'Tip8','Tip8', 'G�zel Servis', '', 100, '�yidir','Birim8','Durum1');
insert into Servis(OtelId, ServisTipi, ServisTitle, Aciklama, Resim, Fiyat, TarifeTipi, Birim, Durum) values (9,'Tip9','Tip9', 'G�zel Servis', '', 100, '�yidir','Birim9','Durum1');
insert into Servis(OtelId, ServisTipi, ServisTitle, Aciklama, Resim, Fiyat, TarifeTipi, Birim, Durum) values (10,'Tip10','Tip10', 'G�zel Servis', '', 100, '�yidir','Birim10','Durum1');

/*Lokasyon bilgileri*/
create table Lokasyon(
LokasyonId int identity(1,1) primary key,
Lokasyon varchar(25), LokasyonTipi varchar(25), LokasyonTitle varchar(100), Aciklama text, Durum varchar(10));

insert into Lokasyon(Lokasyon, LokasyonTipi, LokasyonTitle, Aciklama, Durum) values ('Loc1','Tip1', 'Ba�l�k1','�yidir','Bo�');
insert into Lokasyon(Lokasyon, LokasyonTipi, LokasyonTitle, Aciklama, Durum) values ('Loc2','Tip2', 'Ba�l�k2','�yidir','Bo�');
insert into Lokasyon(Lokasyon, LokasyonTipi, LokasyonTitle, Aciklama, Durum) values ('Loc3','Tip3', 'Ba�l�k3','�yidir','Bo�');
insert into Lokasyon(Lokasyon, LokasyonTipi, LokasyonTitle, Aciklama, Durum) values ('Loc4','Tip4', 'Ba�l�k4','�yidir','Bo�');
insert into Lokasyon(Lokasyon, LokasyonTipi, LokasyonTitle, Aciklama, Durum) values ('Loc5','Tip5', 'Ba�l�k5','�yidir','Bo�');
insert into Lokasyon(Lokasyon, LokasyonTipi, LokasyonTitle, Aciklama, Durum) values ('Loc6','Tip6', 'Ba�l�k6','�yidir','Bo�');
insert into Lokasyon(Lokasyon, LokasyonTipi, LokasyonTitle, Aciklama, Durum) values ('Loc7','Tip7', 'Ba�l�k7','�yidir','Bo�');
insert into Lokasyon(Lokasyon, LokasyonTipi, LokasyonTitle, Aciklama, Durum) values ('Loc8','Tip8', 'Ba�l�k8','�yidir','Bo�');
insert into Lokasyon(Lokasyon, LokasyonTipi, LokasyonTitle, Aciklama, Durum) values ('Loc9','Tip9', 'Ba�l�k9','�yidir','Bo�');
insert into Lokasyon(Lokasyon, LokasyonTipi, LokasyonTitle, Aciklama, Durum) values ('Loc10','Tip10', 'Ba�l�k10','�yidir','Bo�');

/*Seyahat acentesine ait bini� lokasyon bilgileri*/
create table BinisLokasyon(
BinisNoktasiId int identity(1,1) primary key,
OtobusId int, BinisNoktasiNo int, Dlocation varchar(50), VarisZamani datetime, HareketZamani datetime, KoltukUcreti float, UykuUcreti float, Durum varchar(10));

insert into BinisLokasyon(OtobusId, BinisNoktasiNo, Dlocation, VarisZamani, HareketZamani, KoltukUcreti, UykuUcreti, Durum) values (1,1,'','2021-07-10 15:15:00','2021-07-10 15:15:00', 100,10, '�yidir');
insert into BinisLokasyon(OtobusId, BinisNoktasiNo, Dlocation, VarisZamani, HareketZamani, KoltukUcreti, UykuUcreti, Durum) values (2,2,'','2021-07-10 15:15:00','2021-07-10 15:15:00', 110,10, '�yidir');
insert into BinisLokasyon(OtobusId, BinisNoktasiNo, Dlocation, VarisZamani, HareketZamani, KoltukUcreti, UykuUcreti, Durum) values (3,3,'','2021-07-10 15:15:00','2021-07-10 15:15:00', 120,10, '�yidir');
insert into BinisLokasyon(OtobusId, BinisNoktasiNo, Dlocation, VarisZamani, HareketZamani, KoltukUcreti, UykuUcreti, Durum) values (4,4,'','2021-07-10 15:15:00','2021-07-10 15:15:00', 180,10, '�yidir');
insert into BinisLokasyon(OtobusId, BinisNoktasiNo, Dlocation, VarisZamani, HareketZamani, KoltukUcreti, UykuUcreti, Durum) values (5,5,'','2021-07-10 15:15:00','2021-07-10 15:15:00', 70,10, '�yidir');
insert into BinisLokasyon(OtobusId, BinisNoktasiNo, Dlocation, VarisZamani, HareketZamani, KoltukUcreti, UykuUcreti, Durum) values (6,6,'','2021-07-10 15:15:00','2021-07-10 15:15:00', 30,10, '�yidir');
insert into BinisLokasyon(OtobusId, BinisNoktasiNo, Dlocation, VarisZamani, HareketZamani, KoltukUcreti, UykuUcreti, Durum) values (7,7,'','2021-07-10 15:15:00','2021-07-10 15:15:00', 90,10, '�yidir');
insert into BinisLokasyon(OtobusId, BinisNoktasiNo, Dlocation, VarisZamani, HareketZamani, KoltukUcreti, UykuUcreti, Durum) values (8,8,'','2021-07-10 15:15:00','2021-07-10 15:15:00', 100,10, '�yidir');
insert into BinisLokasyon(OtobusId, BinisNoktasiNo, Dlocation, VarisZamani, HareketZamani, KoltukUcreti, UykuUcreti, Durum) values (9,9,'','2021-07-10 15:15:00','2021-07-10 15:15:00', 99,10, '�yidir');
insert into BinisLokasyon(OtobusId, BinisNoktasiNo, Dlocation, VarisZamani, HareketZamani, KoltukUcreti, UykuUcreti, Durum) values (10,10,'','2021-07-10 15:15:00','2021-07-10 15:15:00', 101,10, '�yidir');

/*Rezervasyon bilgileri*/
create table Rezervasyon(
RezervasyonId int identity(1,1) primary key,
FaturaId int, RezervasyonTipi varchar(20), BiletId int, KoltukNo varchar(25), YolcuAdi varchar(25), Cinsiyet varchar(10), Iletisim varchar(15), Durum varchar(10));

insert into Rezervasyon(FaturaId, RezervasyonTipi, BiletId, KoltukNo, YolcuAdi, Cinsiyet, Iletisim, Durum) values (1,'Rezervasyon1', 1,'A1', 'Yolcu1', 'Erkek','123456','');
insert into Rezervasyon(FaturaId, RezervasyonTipi, BiletId, KoltukNo, YolcuAdi, Cinsiyet, Iletisim, Durum) values (2,'Rezervasyon2', 2,'A2', 'Yolcu2', 'Kad�n','123456','');
insert into Rezervasyon(FaturaId, RezervasyonTipi, BiletId, KoltukNo, YolcuAdi, Cinsiyet, Iletisim, Durum) values (3,'Rezervasyon3', 3,'A3', 'Yolcu3', 'Erkek','123456','');
insert into Rezervasyon(FaturaId, RezervasyonTipi, BiletId, KoltukNo, YolcuAdi, Cinsiyet, Iletisim, Durum) values (4,'Rezervasyon4', 4,'A1', 'Yolcu4', 'Erkek','123456','');
insert into Rezervasyon(FaturaId, RezervasyonTipi, BiletId, KoltukNo, YolcuAdi, Cinsiyet, Iletisim, Durum) values (5,'Rezervasyon5', 5,'A5', 'Yolcu5', 'Erkek','123456','');
insert into Rezervasyon(FaturaId, RezervasyonTipi, BiletId, KoltukNo, YolcuAdi, Cinsiyet, Iletisim, Durum) values (6,'Rezervasyon6', 6,'A6', 'Yolcu6', 'Erkek','123456','');
insert into Rezervasyon(FaturaId, RezervasyonTipi, BiletId, KoltukNo, YolcuAdi, Cinsiyet, Iletisim, Durum) values (7,'Rezervasyon7', 7,'A7', 'Yolcu7', 'Erkek','123456','');
insert into Rezervasyon(FaturaId, RezervasyonTipi, BiletId, KoltukNo, YolcuAdi, Cinsiyet, Iletisim, Durum) values (8,'Rezervasyon8', 8,'A8', 'Yolcu8', 'Erkek','123456','');
insert into Rezervasyon(FaturaId, RezervasyonTipi, BiletId, KoltukNo, YolcuAdi, Cinsiyet, Iletisim, Durum) values (9,'Rezervasyon9', 9,'A9', 'Yolcu9', 'Erkek','123456','');
insert into Rezervasyon(FaturaId, RezervasyonTipi, BiletId, KoltukNo, YolcuAdi, Cinsiyet, Iletisim, Durum) values (10,'Rezervasyon10', 10,'A1', 'Yolcu10', 'Erkek','123456','');

/*Rezervasyon �ptal bilgileri*/
create table RezervasyonIptal(
RezervasyonIptalId int identity(1,1) primary key,
FaturaId int, IadeTutari float, IptalTarihi date, Durum varchar(10), foreign key (FaturaId) references Rezervasyon(RezervasyonId));

insert into RezervasyonIptal(FaturaId, IadeTutari, IptalTarihi, Durum) values (1,100, '2021-07-05 15:12:00', '');
insert into RezervasyonIptal(FaturaId, IadeTutari, IptalTarihi, Durum) values (2,100, '2021-07-05 15:12:00', '');
insert into RezervasyonIptal(FaturaId, IadeTutari, IptalTarihi, Durum) values (3,100, '2021-07-05 15:12:00', '');
insert into RezervasyonIptal(FaturaId, IadeTutari, IptalTarihi, Durum) values (4,100, '2021-07-05 15:12:00', '');
insert into RezervasyonIptal(FaturaId, IadeTutari, IptalTarihi, Durum) values (5,100, '2021-07-05 15:12:00', '');
insert into RezervasyonIptal(FaturaId, IadeTutari, IptalTarihi, Durum) values (6,100, '2021-07-05 15:12:00', '');
insert into RezervasyonIptal(FaturaId, IadeTutari, IptalTarihi, Durum) values (7,100, '2021-07-05 15:12:00', '');
insert into RezervasyonIptal(FaturaId, IadeTutari, IptalTarihi, Durum) values (8,100, '2021-07-05 15:12:00', '');
insert into RezervasyonIptal(FaturaId, IadeTutari, IptalTarihi, Durum) values (9,100, '2021-07-05 15:12:00', '');
insert into RezervasyonIptal(FaturaId, IadeTutari, IptalTarihi, Durum) values (10,100, '2021-07-05 15:12:00', '');

/*Oda rezervasyon bilgileri*/
create table OdaRezervasyon(
OdaRezervasyonId int identity(1,1) primary key,
FaturaId int, MusteriId int, OdaId int, GirisTarihi datetime, CikisTarihi datetime, YetiskinYok int, CocukYok int, Durum varchar(10), 
foreign key (FaturaId) references Rezervasyon(RezervasyonId), 
foreign key (MusteriId) references Musteri(MusteriId), 
foreign key (OdaId) references Oda(OdaId));

insert into OdaRezervasyon(FaturaId, MusteriId, OdaId, GirisTarihi, CikisTarihi, YetiskinYok, CocukYok, Durum) values (1,1,1, '2021-07-05 15:12:00', '2021-07-06 15:12:00', 1,0,'');
insert into OdaRezervasyon(FaturaId, MusteriId, OdaId, GirisTarihi, CikisTarihi, YetiskinYok, CocukYok, Durum) values (2,2,2, '2021-07-05 15:12:00', '2021-07-06 15:12:00', 1,0,'');
insert into OdaRezervasyon(FaturaId, MusteriId, OdaId, GirisTarihi, CikisTarihi, YetiskinYok, CocukYok, Durum) values (3,3,3, '2021-07-05 15:12:00', '2021-07-06 15:12:00', 1,0,'');
insert into OdaRezervasyon(FaturaId, MusteriId, OdaId, GirisTarihi, CikisTarihi, YetiskinYok, CocukYok, Durum) values (4,4,4, '2021-07-05 15:12:00', '2021-07-06 15:12:00', 1,0,'');
insert into OdaRezervasyon(FaturaId, MusteriId, OdaId, GirisTarihi, CikisTarihi, YetiskinYok, CocukYok, Durum) values (5,5,5, '2021-07-05 15:12:00', '2021-07-06 15:12:00', 1,0,'');
insert into OdaRezervasyon(FaturaId, MusteriId, OdaId, GirisTarihi, CikisTarihi, YetiskinYok, CocukYok, Durum) values (6,6,6, '2021-07-05 15:12:00', '2021-07-06 15:12:00', 1,0,'');
insert into OdaRezervasyon(FaturaId, MusteriId, OdaId, GirisTarihi, CikisTarihi, YetiskinYok, CocukYok, Durum) values (7,7,7, '2021-07-05 15:12:00', '2021-07-06 15:12:00', 1,0,'');
insert into OdaRezervasyon(FaturaId, MusteriId, OdaId, GirisTarihi, CikisTarihi, YetiskinYok, CocukYok, Durum) values (8,8,8, '2021-07-05 15:12:00', '2021-07-06 15:12:00', 1,0,'');
insert into OdaRezervasyon(FaturaId, MusteriId, OdaId, GirisTarihi, CikisTarihi, YetiskinYok, CocukYok, Durum) values (9,9,9, '2021-07-05 15:12:00', '2021-07-06 15:12:00', 1,0,'');
insert into OdaRezervasyon(FaturaId, MusteriId, OdaId, GirisTarihi, CikisTarihi, YetiskinYok, CocukYok, Durum) values (10,10,10, '2021-07-05 15:12:00', '2021-07-06 15:12:00', 1,0,'');

/*M��teriye, alm�� oldu�u hizmetler i�in derecelendirme yapmas�n� sa�lamak i�in derecelendirme bilgileri*/
create table Derecelendirme(
DerecelendirmeId int identity(1,1) primary key,
DerecelendirmeTipi varchar(25), MusteriId int, SirketId int, Degerlendirme int, YorumBasligi varchar(100), Yorum text, Tarih date, Durum varchar(10), 
foreign key (MusteriId) references Musteri(MusteriId),
foreign key (SirketId) references Sirket(SirketId));


insert into Derecelendirme(DerecelendirmeTipi, MusteriId, SirketId, Degerlendirme, YorumBasligi, Yorum, Tarih, Durum) values ('Derece1',1,1, 100, '�yidir','Gayet G�zeldi','2021-07-05 15:12:00','');
insert into Derecelendirme(DerecelendirmeTipi, MusteriId, SirketId, Degerlendirme, YorumBasligi, Yorum, Tarih, Durum) values ('Derece2',2,2, 80, '�yidir','Gayet G�zeldi','2021-07-05 15:12:00','');
insert into Derecelendirme(DerecelendirmeTipi, MusteriId, SirketId, Degerlendirme, YorumBasligi, Yorum, Tarih, Durum) values ('Derece3',3,3, 20, '�yidir','Gayet G�zeldi','2021-07-05 15:12:00','');
insert into Derecelendirme(DerecelendirmeTipi, MusteriId, SirketId, Degerlendirme, YorumBasligi, Yorum, Tarih, Durum) values ('Derece4',4,4, 10, '�yidir','Gayet G�zeldi','2021-07-05 15:12:00','');
insert into Derecelendirme(DerecelendirmeTipi, MusteriId, SirketId, Degerlendirme, YorumBasligi, Yorum, Tarih, Durum) values ('Derece5',5,5, 99, '�yidir','Gayet G�zeldi','2021-07-05 15:12:00','');
insert into Derecelendirme(DerecelendirmeTipi, MusteriId, SirketId, Degerlendirme, YorumBasligi, Yorum, Tarih, Durum) values ('Derece6',6,6, 86, '�yidir','Gayet G�zeldi','2021-07-05 15:12:00','');
insert into Derecelendirme(DerecelendirmeTipi, MusteriId, SirketId, Degerlendirme, YorumBasligi, Yorum, Tarih, Durum) values ('Derece7',7,7, 75, '�yidir','Gayet G�zeldi','2021-07-05 15:12:00','');
insert into Derecelendirme(DerecelendirmeTipi, MusteriId, SirketId, Degerlendirme, YorumBasligi, Yorum, Tarih, Durum) values ('Derece8',8,8, 123, '�yidir','Gayet G�zeldi','2021-07-05 15:12:00','');
insert into Derecelendirme(DerecelendirmeTipi, MusteriId, SirketId, Degerlendirme, YorumBasligi, Yorum, Tarih, Durum) values ('Derece9',9,9, 14, '�yidir','Gayet G�zeldi','2021-07-05 15:12:00','');
insert into Derecelendirme(DerecelendirmeTipi, MusteriId, SirketId, Degerlendirme, YorumBasligi, Yorum, Tarih, Durum) values ('Derece10',10,10, 0, '�yidir','Gayet G�zeldi','2021-07-05 15:12:00','');

/*Seyahat Acentesine ait tur paketleri bilgileri*/
create table TurPaketleri(
TurPaketId int identity(1,1) primary key,
SirketId int, TurPaketTipi varchar(25), PaketlemeBasligi varchar(100), VideoLink varchar(100), GorselLink varchar(100), GenelBakis text, Inclusion text, GunSayisi varchar(50), EnDusukFiyat float, foreign key (SirketId) references Sirket(SirketId));

insert into TurPaketleri(SirketId, TurPaketTipi, PaketlemeBasligi, VideoLink, GorselLink, GenelBakis, Inclusion, GunSayisi,EnDusukFiyat) values (1,'Paket1','Baslik1', 'v', 'g','Gayet G�zeldi','Klima Laz�m','10',100);
insert into TurPaketleri(SirketId, TurPaketTipi, PaketlemeBasligi, VideoLink, GorselLink, GenelBakis, Inclusion, GunSayisi,EnDusukFiyat) values (2,'Paket2','Baslik2', 'v', 'g','Gayet G�zeldi','Klima Laz�m','10',100);
insert into TurPaketleri(SirketId, TurPaketTipi, PaketlemeBasligi, VideoLink, GorselLink, GenelBakis, Inclusion, GunSayisi,EnDusukFiyat) values (3,'Paket3','Baslik3', 'v', 'g','Gayet G�zeldi','Klima Laz�m','10',100);
insert into TurPaketleri(SirketId, TurPaketTipi, PaketlemeBasligi, VideoLink, GorselLink, GenelBakis, Inclusion, GunSayisi,EnDusukFiyat) values (4,'Paket4','Baslik4', 'v', 'g','Gayet G�zeldi','Klima Laz�m','10',100);
insert into TurPaketleri(SirketId, TurPaketTipi, PaketlemeBasligi, VideoLink, GorselLink, GenelBakis, Inclusion, GunSayisi,EnDusukFiyat) values (5,'Paket5','Baslik5', 'v', 'g','Gayet G�zeldi','Klima Laz�m','10',100);
insert into TurPaketleri(SirketId, TurPaketTipi, PaketlemeBasligi, VideoLink, GorselLink, GenelBakis, Inclusion, GunSayisi,EnDusukFiyat) values (6,'Paket6','Baslik6', 'v', 'g','Gayet G�zeldi','Klima Laz�m','10',100);
insert into TurPaketleri(SirketId, TurPaketTipi, PaketlemeBasligi, VideoLink, GorselLink, GenelBakis, Inclusion, GunSayisi,EnDusukFiyat) values (7,'Paket7','Baslik7', 'v', 'g','Gayet G�zeldi','Klima Laz�m','10',100);
insert into TurPaketleri(SirketId, TurPaketTipi, PaketlemeBasligi, VideoLink, GorselLink, GenelBakis, Inclusion, GunSayisi,EnDusukFiyat) values (8,'Paket8','Baslik8', 'v', 'g','Gayet G�zeldi','Klima Laz�m','10',100);
insert into TurPaketleri(SirketId, TurPaketTipi, PaketlemeBasligi, VideoLink, GorselLink, GenelBakis, Inclusion, GunSayisi,EnDusukFiyat) values (9,'Paket9','Baslik9', 'v', 'g','Gayet G�zeldi','Klima Laz�m','10',100);
insert into TurPaketleri(SirketId, TurPaketTipi, PaketlemeBasligi, VideoLink, GorselLink, GenelBakis, Inclusion, GunSayisi,EnDusukFiyat) values (10,'Paket10','Baslik10', 'v', 'g','Gayet G�zeldi','Klima Laz�m','10',100);

/*Seyahat Acentesine ait tur paketlerinin g�zergah bilgileri bilgileri*/
create table TurGuzergah�(
Guzergah int identity(1,1) primary key, 
TurPaketId int, GunNo int, GuzergahBasligi varchar(100), GuzergahAciklamasi text, GuzergahResmi varchar(100), foreign key (TurPaketId) references TurPaketleri(TurPaketId));

insert into TurGuzergah�(TurPaketId, GunNo, GuzergahBasligi, GuzergahAciklamasi, GuzergahResmi) values (1,1,'G�zergah1','Nice', '');
insert into TurGuzergah�(TurPaketId, GunNo, GuzergahBasligi, GuzergahAciklamasi, GuzergahResmi) values (2,2,'G�zergah2','Nice', '');
insert into TurGuzergah�(TurPaketId, GunNo, GuzergahBasligi, GuzergahAciklamasi, GuzergahResmi) values (3,3,'G�zergah3','Nice', '');
insert into TurGuzergah�(TurPaketId, GunNo, GuzergahBasligi, GuzergahAciklamasi, GuzergahResmi) values (4,4,'G�zergah4','Nice', '');
insert into TurGuzergah�(TurPaketId, GunNo, GuzergahBasligi, GuzergahAciklamasi, GuzergahResmi) values (5,5,'G�zergah5','Nice', '');
insert into TurGuzergah�(TurPaketId, GunNo, GuzergahBasligi, GuzergahAciklamasi, GuzergahResmi) values (6,6,'G�zergah6','Nice', '');
insert into TurGuzergah�(TurPaketId, GunNo, GuzergahBasligi, GuzergahAciklamasi, GuzergahResmi) values (7,7,'G�zergah7','Nice', '');
insert into TurGuzergah�(TurPaketId, GunNo, GuzergahBasligi, GuzergahAciklamasi, GuzergahResmi) values (8,8,'G�zergah8','Nice', '');
insert into TurGuzergah�(TurPaketId, GunNo, GuzergahBasligi, GuzergahAciklamasi, GuzergahResmi) values (9,9,'G�zergah9','Nice', '');
insert into TurGuzergah�(TurPaketId, GunNo, GuzergahBasligi, GuzergahAciklamasi, GuzergahResmi) values (10,10,'G�zergah10','Nice', '');

/*Seyahat Acentesine ait tur paketleri yer bilgileri*/
create table TurPaketYeri(
TurPaketYeriId int identity(1,1) primary key,
TurPaketId int, YerBilgisi text, YerKonumu text, Iletisim varchar(25), Durum varchar(10), foreign key (TurPaketId) references TurPaketleri(TurPaketId));

insert into TurPaketYeri(TurPaketId, YerBilgisi, YerKonumu, Iletisim, Durum) values (1,'Yer1','Konum1', '123456', '');
insert into TurPaketYeri(TurPaketId, YerBilgisi, YerKonumu, Iletisim, Durum) values (2,'Yer2','Konum2', '123456', '');
insert into TurPaketYeri(TurPaketId, YerBilgisi, YerKonumu, Iletisim, Durum) values (3,'Yer3','Konum3', '123456', '');
insert into TurPaketYeri(TurPaketId, YerBilgisi, YerKonumu, Iletisim, Durum) values (4,'Yer4','Konum4', '123456', '');
insert into TurPaketYeri(TurPaketId, YerBilgisi, YerKonumu, Iletisim, Durum) values (5,'Yer5','Konum5', '123456', '');
insert into TurPaketYeri(TurPaketId, YerBilgisi, YerKonumu, Iletisim, Durum) values (6,'Yer6','Konum6', '123456', '');
insert into TurPaketYeri(TurPaketId, YerBilgisi, YerKonumu, Iletisim, Durum) values (7,'Yer7','Konum7', '123456', '');
insert into TurPaketYeri(TurPaketId, YerBilgisi, YerKonumu, Iletisim, Durum) values (8,'Yer8','Konum8', '123456', '');
insert into TurPaketYeri(TurPaketId, YerBilgisi, YerKonumu, Iletisim, Durum) values (9,'Yer9','Konum9', '123456', '');
insert into TurPaketYeri(TurPaketId, YerBilgisi, YerKonumu, Iletisim, Durum) values (10,'Yer10','Konum10', '123456', '');

/*Seyahat Acentesine ait se�enek bilgileri*/
create table SeyahatSecenek(
SeyahatSecenekId int identity(1,1) primary key,
TurPaketId int, SeyahatKaynagiKonum varchar(25), SeyahatHedefKonum varchar(25), SeyahatTipi varchar(25), Note text, foreign key (TurPaketId) references TurPaketleri(TurPaketId));

insert into SeyahatSecenek(TurPaketId, SeyahatKaynagiKonum, SeyahatHedefKonum, SeyahatTipi, Note) values (1,'KaynakKonum1','HedefKonum1', 'Tip', '');
insert into SeyahatSecenek(TurPaketId, SeyahatKaynagiKonum, SeyahatHedefKonum, SeyahatTipi, Note) values (2,'KaynakKonum2','HedefKonum2', 'Tip', '');
insert into SeyahatSecenek(TurPaketId, SeyahatKaynagiKonum, SeyahatHedefKonum, SeyahatTipi, Note) values (3,'KaynakKonum3','HedefKonum3', 'Tip', '');
insert into SeyahatSecenek(TurPaketId, SeyahatKaynagiKonum, SeyahatHedefKonum, SeyahatTipi, Note) values (4,'KaynakKonum4','HedefKonum4', 'Tip', '');
insert into SeyahatSecenek(TurPaketId, SeyahatKaynagiKonum, SeyahatHedefKonum, SeyahatTipi, Note) values (5,'KaynakKonum5','HedefKonum5', 'Tip', '');
insert into SeyahatSecenek(TurPaketId, SeyahatKaynagiKonum, SeyahatHedefKonum, SeyahatTipi, Note) values (6,'KaynakKonum6','HedefKonum6', 'Tip', '');
insert into SeyahatSecenek(TurPaketId, SeyahatKaynagiKonum, SeyahatHedefKonum, SeyahatTipi, Note) values (7,'KaynakKonum7','HedefKonum7', 'Tip', '');
insert into SeyahatSecenek(TurPaketId, SeyahatKaynagiKonum, SeyahatHedefKonum, SeyahatTipi, Note) values (8,'KaynakKonum8','HedefKonum8', 'Tip', '');
insert into SeyahatSecenek(TurPaketId, SeyahatKaynagiKonum, SeyahatHedefKonum, SeyahatTipi, Note) values (9,'KaynakKonum9','HedefKonum9', 'Tip', '');
insert into SeyahatSecenek(TurPaketId, SeyahatKaynagiKonum, SeyahatHedefKonum, SeyahatTipi, Note) values (10,'KaynakKonum10','HedefKonum10', 'Tip', '');

/*Seyahat acentesinin faturaland�rma bilgileri*/
create table Faturalandirma(
FaturaId int identity(1,1) primary key,
MusteriId int, FaturaTutari float, VergiTutari float, Tarih date, OdemeTipi varchar(20), KartNo varchar(25), Durum varchar(10), foreign key (MusteriId) references Musteri(MusteriId));

insert into Faturalandirma(MusteriId, FaturaTutari, VergiTutari, Tarih, OdemeTipi, KartNo, Durum) values (1, 100, 18,'2021-07-05 15:12:00','Kredi Kart�', '1234-5678-9123-45678', '');
insert into Faturalandirma(MusteriId, FaturaTutari, VergiTutari, Tarih, OdemeTipi, KartNo, Durum) values (2, 200, 36,'2021-07-05 15:12:00','Kredi Kart�', '1234-5678-9123-45678', '');
insert into Faturalandirma(MusteriId, FaturaTutari, VergiTutari, Tarih, OdemeTipi, KartNo, Durum) values (3, 118, 20,'2021-07-05 15:12:00','Kredi Kart�', '1234-5678-9123-45678', '');
insert into Faturalandirma(MusteriId, FaturaTutari, VergiTutari, Tarih, OdemeTipi, KartNo, Durum) values (4, 190, 35,'2021-07-05 15:12:00','Kredi Kart�', '1234-5678-9123-45678', '');
insert into Faturalandirma(MusteriId, FaturaTutari, VergiTutari, Tarih, OdemeTipi, KartNo, Durum) values (5, 40, 4,'2021-07-05 15:12:00','Kredi Kart�', '1234-5678-9123-45678', '');
insert into Faturalandirma(MusteriId, FaturaTutari, VergiTutari, Tarih, OdemeTipi, KartNo, Durum) values (6, 500, 60,'2021-07-05 15:12:00','Kredi Kart�', '1234-5678-9123-45678', '');
insert into Faturalandirma(MusteriId, FaturaTutari, VergiTutari, Tarih, OdemeTipi, KartNo, Durum) values (7, 10000, 1800,'2021-07-05 15:12:00','Kredi Kart�', '1234-5678-9123-45678', '');
insert into Faturalandirma(MusteriId, FaturaTutari, VergiTutari, Tarih, OdemeTipi, KartNo, Durum) values (8, 100, 18,'2021-07-05 15:12:00','Kredi Kart�', '1234-5678-9123-45678', '');
insert into Faturalandirma(MusteriId, FaturaTutari, VergiTutari, Tarih, OdemeTipi, KartNo, Durum) values (9, 100, 18,'2021-07-05 15:12:00','Kredi Kart�', '1234-5678-9123-45678', '');
insert into Faturalandirma(MusteriId, FaturaTutari, VergiTutari, Tarih, OdemeTipi, KartNo, Durum) values (10, 150, 27,'2021-07-05 15:12:00','Kredi Kart�', '1234-5678-9123-45678', '');


/*Her bir m��terinin ka� kez ayn� otelde ka� kez kald���n� g�steren sql kodu yaz�n�z*/

select MusteriId,Otel.OtelId ,count(*) from (((OdaRezervasyon inner join Oda on OdaRezervasyon.OdaId=Oda.OdaId) inner join OdaTipi on OdaTipi.OdaTipiId=Oda.OdaTipiId) inner join Otel on Otel.OtelId=OdaTipi.OtelId) group by MusteriId,Otel.OtelId


/*En �ok be�eni alan otelin bilgilerini g�steren sql kodu yaz�n�z*/
 
select top 1 '-------------------------->' 'En fazla be�eni alan otel', Otel.OtelId,Derecelendirme.SirketId from Otel inner join Derecelendirme on Otel.SirketId=Derecelendirme.SirketId order by Derecelendirme.Degerlendirme desc


/*Her bir otelin oda �zelliklerini ve �cretlerini listeleyen kodu yaz�n�z*/

select  '-------------------------->' 'Otel �zellikleri ve �cretleri',OtelAd,OdaTipi,OdaTarifi from Otel,OdaTipi where Otel.OtelId=OdaTipi.OtelId


/*En �ok yorum ve be�enisi olan ilk 5 m��terinin bilgilerini ve be�eni ve yorum say�lar�n� listeleyen kodu yaz�n�z.*/

select top 5'-------------------------->' 'M��terilerin Yorum ve De�erlendirmeleri', Musteri.MusteriId,Musteri.MusteriAd,Musteri.Cinsiyet,Musteri.Ulke, Derecelendirme.Degerlendirme, Derecelendirme.YorumBasligi from musteri inner join Derecelendirme on Musteri.MusteriId=Derecelendirme.MusteriId group by Musteri.MusteriId,Musteri.MusteriAd,Musteri.Cinsiyet,Musteri.Ulke, Derecelendirme.Degerlendirme, Derecelendirme.YorumBasligi order by count(Derecelendirme.MusteriId) desc


/*Her bir m��terilerin b�t�n zamanlarda toplam harcama bilgisini hesaplay�p s�ral� bir �ekilde g�steren sql kodu yaz�n�z.*/

SELECT '-------------------------->' 'M��terilerin Toplam Harcamalar�',Musteri.MusteriId, MusteriAd, SUM(FaturaTutari) AS Faturalandirma FROM Musteri inner join Faturalandirma ON Musteri.MusteriId = Faturalandirma.MusteriId GROUP BY Musteri.MusteriId, MusteriAd


CREATE TRIGGER RezervasyonIptali
on 
RezervasyonIptal 
after insert 
as  
declare 
@id int SET @id = (select RezervasyonIptal.FaturaId from inserted RezervasyonIptal)  delete from Rezervasyon where FaturaId = @id select 'Rezervasyon iptal edildi'


