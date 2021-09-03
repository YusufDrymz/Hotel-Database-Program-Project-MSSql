create database SEYAHAT_ACENTESI_DB
go
use SEYAHAT_ACENTESI_DB
go

/*Sistemi kullanan yöneticiler için öncelikle admin bilgileri*/
create table Yonetici(
AdminId int identity(1,1) primary key,
AdminAd varchar(25), LoginId varchar(25), Sifre varchar(50), Durum varchar(10));

insert into Yonetici(AdminAd, LoginId, Sifre, Durum) values ('Yusuf Darýyemez','YusufDRYMZ','123456','');
insert into Yonetici(AdminAd, LoginId, Sifre, Durum) values ('Erkan Darýyemez','YusufDRYMZ','123456','');
insert into Yonetici(AdminAd, LoginId, Sifre, Durum) values ('Ahmet','Kral','123456','');
insert into Yonetici(AdminAd, LoginId, Sifre, Durum) values ('Þafak','afsaa','123456','');
insert into Yonetici(AdminAd, LoginId, Sifre, Durum) values ('Güneþ','Denizin','123456','');
insert into Yonetici(AdminAd, LoginId, Sifre, Durum) values ('Ahmet','Ahmet123','123456','');
insert into Yonetici(AdminAd, LoginId, Sifre, Durum) values ('Mehmet','MehmetPaþa','123456','');
insert into Yonetici(AdminAd, LoginId, Sifre, Durum) values ('Ayþe','Ayþe07','123456','');
insert into Yonetici(AdminAd, LoginId, Sifre, Durum) values ('Pelin','PelinBaba','123456','');
insert into Yonetici(AdminAd, LoginId, Sifre, Durum) values ('Nagehan','NagehanHoca','123456','');

/*Seyahat acentelerinin anlaþmalý olduðu þirketlerin bilgisi*/
create table Sirket(
SirketId int identity(1,1) primary key,
SirketTipi varchar(20), SirketAd varchar(25), SirketLogo varchar(100), Aciklama text, Durum varchar(10));

insert into Sirket(SirketTipi, SirketAd, SirketLogo, Aciklama, Durum) values ('Otel','Güneþ Otel','','Konaklama için 3 yýldýzlý otel','');
insert into Sirket(SirketTipi, SirketAd, SirketLogo, Aciklama, Durum) values ('Rent a Car','Volkan Araba','','Araç kiralamanýn Yeni adresi','');
insert into Sirket(SirketTipi, SirketAd, SirketLogo, Aciklama, Durum) values ('Otel','Baba Motel','','Konaklama için 2 yýldýzlý otel','');
insert into Sirket(SirketTipi, SirketAd, SirketLogo, Aciklama, Durum) values ('Market','Uludað Market','','Market Alýþveriþleri','');
insert into Sirket(SirketTipi, SirketAd, SirketLogo, Aciklama, Durum) values ('Yardým','Kýzýlay','','Afed ve gerekli acil durumlar için','');
insert into Sirket(SirketTipi, SirketAd, SirketLogo, Aciklama, Durum) values ('Sucu','Madran Su','','Suyun en saf hali','');
insert into Sirket(SirketTipi, SirketAd, SirketLogo, Aciklama, Durum) values ('Elektrikçi','Kral Elektrik','','Elektrik ve elektronik tamir, bakým, onarým','');
insert into Sirket(SirketTipi, SirketAd, SirketLogo, Aciklama, Durum) values ('Sigorta','Lale Sigorta','','Güvencenin Adresi','');
insert into Sirket(SirketTipi, SirketAd, SirketLogo, Aciklama, Durum) values ('Kasap','Helal-Et','','Tazelik ve Tat','');
insert into Sirket(SirketTipi, SirketAd, SirketLogo, Aciklama, Durum) values ('Otel','Güneþ Otel','','Konaklama için 3 yýldýzlý otel','');
insert into Sirket(SirketTipi, SirketAd, SirketLogo, Aciklama, Durum) values ('Otel','Güneþ Otel','','Konaklama için 3 yýldýzlý otel','');


/*Müþteri bilgileri*/
create table Musteri(
MusteriId int identity(1,1) primary key,
MusteriAd varchar(25), DogumGunu date, Cinsiyet varchar(10), Adres varchar(500), IletisimNo varchar(20), Mobil varchar(20), Sehir varchar(20), Ulke varchar(25), PinCode varchar(10), EmailId varchar(20), LoginId varchar(20), Sifre varchar(50), Durum varchar(10));

insert into Musteri(MusteriAd, DogumGunu, Cinsiyet, Adres, IletisimNo, Mobil, Sehir, Ulke, EmailId, LoginId , Sifre, Durum) values ('Ahmet',datefromparts(2000,01,01),'Erkek','Antalya','12345', '','','Türkiye','123@gmail.com','Ahmet','1234','');
insert into Musteri(MusteriAd, DogumGunu, Cinsiyet, Adres, IletisimNo, Mobil, Sehir, Ulke, EmailId, LoginId , Sifre, Durum) values ('Nilay',datefromparts(1995,01,01),'Kadýn','Ýstanbul','12345', '','','Türkiye','123@gmail.com','Nilay','1234','');
insert into Musteri(MusteriAd, DogumGunu, Cinsiyet, Adres, IletisimNo, Mobil, Sehir, Ulke, EmailId, LoginId , Sifre, Durum) values ('Jason',datefromparts(1990,01,01),'Erkek','Paris','12345', '','','Fransa','123@gmail.com','Jason','1234','');
insert into Musteri(MusteriAd, DogumGunu, Cinsiyet, Adres, IletisimNo, Mobil, Sehir, Ulke, EmailId, LoginId , Sifre, Durum) values ('Carla',datefromparts(2000,01,01),'Kadýn','Berlin','12345', '','','Almanya','123@gmail.com','Carla','1234','');
insert into Musteri(MusteriAd, DogumGunu, Cinsiyet, Adres, IletisimNo, Mobil, Sehir, Ulke, EmailId, LoginId , Sifre, Durum) values ('Ali',datefromparts(1996,01,01),'Erkek','Þanlýurfa','12345', '','','Türkiye','123@gmail.com','Alican','1234','');
insert into Musteri(MusteriAd, DogumGunu, Cinsiyet, Adres, IletisimNo, Mobil, Sehir, Ulke, EmailId, LoginId , Sifre, Durum) values ('Yusuf',datefromparts(1989,01,01),'Erkek','Kocaeli','12345', '','','Türkiye','123@gmail.com','YusufYED','1234','');
insert into Musteri(MusteriAd, DogumGunu, Cinsiyet, Adres, IletisimNo, Mobil, Sehir, Ulke, EmailId, LoginId , Sifre, Durum) values ('Pýnar',datefromparts(2000,01,01),'Kadýn','Ankara','12345', '','','Türkiye','123@gmail.com','PýnarGül','1234','');
insert into Musteri(MusteriAd, DogumGunu, Cinsiyet, Adres, IletisimNo, Mobil, Sehir, Ulke, EmailId, LoginId , Sifre, Durum) values ('Canan',datefromparts(2000,01,01),'Kadýn','Kütahya','12345', '','','Türkiye','123@gmail.com','Canan123','1234','');
insert into Musteri(MusteriAd, DogumGunu, Cinsiyet, Adres, IletisimNo, Mobil, Sehir, Ulke, EmailId, LoginId , Sifre, Durum) values ('Ömer',datefromparts(2000,01,01),'Erkek','Antalya','12345', '','','Türkiye','123@gmail.com','ÖmerHalit','1234','');
insert into Musteri(MusteriAd, DogumGunu, Cinsiyet, Adres, IletisimNo, Mobil, Sehir, Ulke, EmailId, LoginId , Sifre, Durum) values ('Osman',datefromparts(2000,01,01),'Erkek','Ýdlib','12345', '','','Suriye','123@gmail.com','OsmanSuri','1234','');

/*Otobüs seyahati için otobüs ile ilgili bilgiler*/
create table Otobus(
OtobusId int identity(1,1) primary key,
OtobusTipi varchar(25), UykuSayisi int, KoltukSayisi int, Durum varchar(10));

insert into Otobus(OtobusTipi, UykuSayisi, KoltukSayisi, Durum) values ('Yolcu', '','18', '');
insert into Otobus(OtobusTipi, UykuSayisi, KoltukSayisi, Durum) values ('Þehirler Arasý', '','40', '');
insert into Otobus(OtobusTipi, UykuSayisi, KoltukSayisi, Durum) values ('Dolmuþ', '','18', '');
insert into Otobus(OtobusTipi, UykuSayisi, KoltukSayisi, Durum) values ('Metro', '','100', '');
insert into Otobus(OtobusTipi, UykuSayisi, KoltukSayisi, Durum) values ('Kamilkoç', '','20', '');
insert into Otobus(OtobusTipi, UykuSayisi, KoltukSayisi, Durum) values ('Yolcu', '','18', '');
insert into Otobus(OtobusTipi, UykuSayisi, KoltukSayisi, Durum) values ('Yolcu', '','18', '');
insert into Otobus(OtobusTipi, UykuSayisi, KoltukSayisi, Durum) values ('Yolcu', '','18', '');
insert into Otobus(OtobusTipi, UykuSayisi, KoltukSayisi, Durum) values ('Yolcu', '','18', '');
insert into Otobus(OtobusTipi, UykuSayisi, KoltukSayisi, Durum) values ('Yolcu', '','18', '');

/*Uçakla seyahat için uçak ile ilgili bilgiler*/
create table Ucak(
UcakId int identity(1,1) primary key,
SirketAd varchar(44), DlocationId int, AlocationId int, Duration varchar(25), KalkisZaman datetime, VarisZaman datetime, EkonomiKoltuk int, BusinessKoltuk int, FirstclassKoltuk int, PremiumeconomyKoltuk int, EkoFiyat float, BusinessFiyat float, FirstclassFiyat float, PremiumFiyat float, Aciklama text, Durum varchar(10));

insert into Ucak(SirketAd, DlocationId, AlocationId, KalkisZaman, VarisZaman, EkonomiKoltuk, BusinessKoltuk, FirstclassKoltuk, PremiumeconomyKoltuk, EkoFiyat, BusinessFiyat, FirstclassFiyat, PremiumFiyat, Aciklama,Durum) values ('THY','','', '2021-06-10 12:35:25', '2021-06-10 12:35:25', 4, 4,'','', 105, 207,'','', 'Dünyanýn bir numararalý uçak firmasý','');
insert into Ucak(SirketAd, DlocationId, AlocationId, KalkisZaman, VarisZaman, EkonomiKoltuk, BusinessKoltuk, FirstclassKoltuk, PremiumeconomyKoltuk, EkoFiyat, BusinessFiyat, FirstclassFiyat, PremiumFiyat, Aciklama,Durum) values ('Anadolu Jet','','',  '2021-06-10 12:35:25', '2021-06-10 12:35:25', 4, 4,'','',  181, 238,'','',  'THY ortaklý uçak firmasý','');
insert into Ucak(SirketAd, DlocationId, AlocationId, KalkisZaman, VarisZaman, EkonomiKoltuk, BusinessKoltuk, FirstclassKoltuk, PremiumeconomyKoltuk, EkoFiyat, BusinessFiyat, FirstclassFiyat, PremiumFiyat, Aciklama,Durum) values ('Pegasus','','',  '2021-06-10 12:35:25', '2021-06-10 12:35:25', 4, 4,'','',  105, 207,'','',  'Hesaplý Fiyatla','');
insert into Ucak(SirketAd, DlocationId, AlocationId, KalkisZaman, VarisZaman, EkonomiKoltuk, BusinessKoltuk, FirstclassKoltuk, PremiumeconomyKoltuk, EkoFiyat, BusinessFiyat, FirstclassFiyat, PremiumFiyat, Aciklama,Durum) values ('Sun Exprees','','',  '2021-06-10 12:35:25', '2021-06-10 12:35:25', 4, 4,'','',  80, 180,'','',  'Rusya Favorisi','');
insert into Ucak(SirketAd, DlocationId, AlocationId, KalkisZaman, VarisZaman, EkonomiKoltuk, BusinessKoltuk, FirstclassKoltuk, PremiumeconomyKoltuk, EkoFiyat, BusinessFiyat, FirstclassFiyat, PremiumFiyat, Aciklama,Durum) values ('Onur Air','','',  '2021-06-10 12:35:25', '2021-06-10 12:35:25', 4, 4,'','',  105, 207,'','',  'Ukrayna Almanya Fovorisi','');
insert into Ucak(SirketAd, DlocationId, AlocationId, KalkisZaman, VarisZaman, EkonomiKoltuk, BusinessKoltuk, FirstclassKoltuk, PremiumeconomyKoltuk, EkoFiyat, BusinessFiyat, FirstclassFiyat, PremiumFiyat, Aciklama,Durum) values ('Corendon Airlens','','',  '2021-06-10 12:35:25', '2021-06-10 12:35:25', 4, 4,'','',  105, 207,'','',  'Gooddd','');
insert into Ucak(SirketAd, DlocationId, AlocationId, KalkisZaman, VarisZaman, EkonomiKoltuk, BusinessKoltuk, FirstclassKoltuk, PremiumeconomyKoltuk, EkoFiyat, BusinessFiyat, FirstclassFiyat, PremiumFiyat, Aciklama,Durum) values ('THY','','',  '2021-06-10 12:35:25', '2021-06-10 12:35:25', 4, 4,'','',  105, 207,'','',  'Süper','');
insert into Ucak(SirketAd, DlocationId, AlocationId, KalkisZaman, VarisZaman, EkonomiKoltuk, BusinessKoltuk, FirstclassKoltuk, PremiumeconomyKoltuk, EkoFiyat, BusinessFiyat, FirstclassFiyat, PremiumFiyat, Aciklama,Durum) values ('THY','','',  '2021-06-10 12:35:25', '2021-06-10 12:35:25', 4, 4,'','',  105, 207,'','',  'Eh iþte','');
insert into Ucak(SirketAd, DlocationId, AlocationId, KalkisZaman, VarisZaman, EkonomiKoltuk, BusinessKoltuk, FirstclassKoltuk, PremiumeconomyKoltuk, EkoFiyat, BusinessFiyat, FirstclassFiyat, PremiumFiyat, Aciklama,Durum) values ('THY','','',  '2021-06-10 12:35:25', '2021-06-10 12:35:25', 4, 4,'','',  105, 207,'','',  'Ýyidir','');
insert into Ucak(SirketAd, DlocationId, AlocationId, KalkisZaman, VarisZaman, EkonomiKoltuk, BusinessKoltuk, FirstclassKoltuk, PremiumeconomyKoltuk, EkoFiyat, BusinessFiyat, FirstclassFiyat, PremiumFiyat, Aciklama,Durum) values ('THY','','',  '2021-06-10 12:35:25', '2021-06-10 12:35:25', 4, 4,'','',  105, 207,'','',  'Fena Deðil','');

/*Müþterilere konaklama hizmeti verilmesi için anlaþmalý otellerin bilgisi*/
create table Otel(
OtelId int identity(1,1) primary key,
SirketId int, foreign key (SirketId) references Sirket(SirketId), 
KonumId int, OtelAd varchar(44), OtelAdres varchar(250), Sifre varchar(44), Aciklama text);

insert into Otel(SirketId, KonumId, OtelAd, OtelAdres, Sifre, Aciklama) values (1,1,'Baba Otel','Marmaris', '123', 'Ýyidir');
insert into Otel(SirketId, KonumId, OtelAd, OtelAdres, Sifre, Aciklama) values (2,2,'Kral Otel','Antalya', '123', 'Ýyidir');
insert into Otel(SirketId, KonumId, OtelAd, OtelAdres, Sifre, Aciklama) values (3,3,'Can Otel','Uludað', '123', 'Ýyidir');
insert into Otel(SirketId, KonumId, OtelAd, OtelAdres, Sifre, Aciklama) values (4,4,'Cordano Otel','Ýstanbul', '123', 'Ýyidir');
insert into Otel(SirketId, KonumId, OtelAd, OtelAdres, Sifre, Aciklama) values (5,5,'Rixos Otel','Köþede', '123', 'Ýyidir');
insert into Otel(SirketId, KonumId, OtelAd, OtelAdres, Sifre, Aciklama) values (6,6,'Uygulama Otel','Karþýda', '123', 'Ýyidir');
insert into Otel(SirketId, KonumId, OtelAd, OtelAdres, Sifre, Aciklama) values (7,7,'Antalya Otel','Avrupa', '123', 'Ýyidir');
insert into Otel(SirketId, KonumId, OtelAd, OtelAdres, Sifre, Aciklama) values (8,8,'Pharis Otel','Asya', '123', 'Ýyidir');
insert into Otel(SirketId, KonumId, OtelAd, OtelAdres, Sifre, Aciklama) values (9,9,'Bonomo Otel','Tarlada', '123', 'Ýyidir');
insert into Otel(SirketId, KonumId, OtelAd, OtelAdres, Sifre, Aciklama) values (10,10,'Resident Otel','Çorum', '123', 'Ýyidir');

/*Otel Resmi*/
create table OtelResim(
OtelResimId int identity(1,1) primary key,
OtelId int, OtelResim varchar(50), Aciklama text, foreign key (OtelId) references Otel(OtelId));

insert into OtelResim(OtelId, OtelResim, Aciklama) values (1,'', 'Ýyidir');
insert into OtelResim(OtelId, OtelResim, Aciklama) values (2,'', 'Ýyidir');
insert into OtelResim(OtelId, OtelResim, Aciklama) values (3,'', 'Ýyidir');
insert into OtelResim(OtelId, OtelResim, Aciklama) values (4,'', 'Ýyidir');
insert into OtelResim(OtelId, OtelResim, Aciklama) values (5,'', 'Ýyidir');
insert into OtelResim(OtelId, OtelResim, Aciklama) values (6,'', 'Ýyidir');
insert into OtelResim(OtelId, OtelResim, Aciklama) values (7,'', 'Ýyidir');
insert into OtelResim(OtelId, OtelResim, Aciklama) values (8,'', 'Ýyidir');
insert into OtelResim(OtelId, OtelResim, Aciklama) values (9,'', 'Ýyidir');
insert into OtelResim(OtelId, OtelResim, Aciklama) values (10,'', 'Ýyidir');

/*Otel oda tipi bilgileri*/
create table OdaTipi(
OdaTipiId int identity(1,1) primary key,
OtelId int, OdaTipi varchar(50), Aciklama text, OdaTarifi float, Durum varchar(10), foreign key (OtelId) references Otel(OtelId));

insert into OdaTipi(OtelId, OdaTipi, Aciklama, OdaTarifi, Durum) values (1,'Kral Dairesi', 'Güzel', 100, 'Bos');
insert into OdaTipi(OtelId, OdaTipi, Aciklama, OdaTarifi, Durum) values (2,'Kral Dairesi', 'Güzel',80, 'Dolu');
insert into OdaTipi(OtelId, OdaTipi, Aciklama, OdaTarifi, Durum) values (3,'Kral Dairesi', 'Güzel',70, 'Boþ');
insert into OdaTipi(OtelId, OdaTipi, Aciklama, OdaTarifi, Durum) values (4,'Kral Dairesi', 'Güzel',110, 'Dolu');
insert into OdaTipi(OtelId, OdaTipi, Aciklama, OdaTarifi, Durum) values (5,'Kral Dairesi', 'Güzel',50, 'Boþ');
insert into OdaTipi(OtelId, OdaTipi, Aciklama, OdaTarifi, Durum) values (6,'Kral Dairesi', 'Güzel',49, 'Boþ');
insert into OdaTipi(OtelId, OdaTipi, Aciklama, OdaTarifi, Durum) values (7,'Kral Dairesi', 'Güzel',321, 'Boþ');
insert into OdaTipi(OtelId, OdaTipi, Aciklama, OdaTarifi, Durum) values (8,'Kral Dairesi', 'Güzel',111, 'Boþ');
insert into OdaTipi(OtelId, OdaTipi, Aciklama, OdaTarifi, Durum) values (9,'Kral Dairesi', 'Güzel',35, 'Boþ');
insert into OdaTipi(OtelId, OdaTipi, Aciklama, OdaTarifi, Durum) values (10,'Kral Dairesi', 'Güzel',97, 'Boþ');

/*Otel oda bilgileri*/
create table Oda(
OdaId int identity(1,1) primary key,
OdaNo varchar(30), OdaTipiId int, Durum varchar(10), foreign key (OdaTipiId) references OdaTipi(OdaTipiId));

insert into Oda(OdaNo, OdaTipiId, Durum) values ('123',1, 'Ýyidir');
insert into Oda(OdaNo, OdaTipiId, Durum) values ('123',2, 'Ýyidir');
insert into Oda(OdaNo, OdaTipiId, Durum) values ('123',3, 'Ýyidir');
insert into Oda(OdaNo, OdaTipiId, Durum) values ('123',4, 'Ýyidir');
insert into Oda(OdaNo, OdaTipiId, Durum) values ('123',5, 'Ýyidir');
insert into Oda(OdaNo, OdaTipiId, Durum) values ('123',6, 'Ýyidir');
insert into Oda(OdaNo, OdaTipiId, Durum) values ('123',7, 'Ýyidir');
insert into Oda(OdaNo, OdaTipiId, Durum) values ('123',8, 'Ýyidir');
insert into Oda(OdaNo, OdaTipiId, Durum) values ('123',9, 'Ýyidir');
insert into Oda(OdaNo, OdaTipiId, Durum) values ('123',10, 'Ýyidir');

/*Otel oda servis bilgileri*/
create table Servis(
ServisId int identity(1,1) primary key,
OtelId int, ServisTipi varchar(50), ServisTitle varchar(100), Aciklama text, Resim varchar(100), Fiyat float, TarifeTipi varchar(25), Birim varchar(25), Durum varchar(10), foreign key (OtelId) references Otel(OtelId));

insert into Servis(OtelId, ServisTipi, ServisTitle, Aciklama, Resim, Fiyat, TarifeTipi, Birim, Durum) values (1,'Tip1','Tip1', 'Güzel Servis', '', 100, 'Ýyidir','Birim1','Durum1');
insert into Servis(OtelId, ServisTipi, ServisTitle, Aciklama, Resim, Fiyat, TarifeTipi, Birim, Durum) values (2,'Tip2','Tip2', 'Güzel Servis', '', 100, 'Ýyidir','Birim2','Durum1');
insert into Servis(OtelId, ServisTipi, ServisTitle, Aciklama, Resim, Fiyat, TarifeTipi, Birim, Durum) values (3,'Tip3','Tip3', 'Güzel Servis', '', 100, 'Ýyidir','Birim3','Durum1');
insert into Servis(OtelId, ServisTipi, ServisTitle, Aciklama, Resim, Fiyat, TarifeTipi, Birim, Durum) values (4,'Tip4','Tip4', 'Güzel Servis', '', 100, 'Ýyidir','Birim4','Durum1');
insert into Servis(OtelId, ServisTipi, ServisTitle, Aciklama, Resim, Fiyat, TarifeTipi, Birim, Durum) values (5,'Tip5','Tip5', 'Güzel Servis', '', 100, 'Ýyidir','Birim5','Durum1');
insert into Servis(OtelId, ServisTipi, ServisTitle, Aciklama, Resim, Fiyat, TarifeTipi, Birim, Durum) values (6,'Tip6','Tip6', 'Güzel Servis', '', 100, 'Ýyidir','Birim6','Durum1');
insert into Servis(OtelId, ServisTipi, ServisTitle, Aciklama, Resim, Fiyat, TarifeTipi, Birim, Durum) values (7,'Tip7','Tip7', 'Güzel Servis', '', 100, 'Ýyidir','Birim7','Durum1');
insert into Servis(OtelId, ServisTipi, ServisTitle, Aciklama, Resim, Fiyat, TarifeTipi, Birim, Durum) values (8,'Tip8','Tip8', 'Güzel Servis', '', 100, 'Ýyidir','Birim8','Durum1');
insert into Servis(OtelId, ServisTipi, ServisTitle, Aciklama, Resim, Fiyat, TarifeTipi, Birim, Durum) values (9,'Tip9','Tip9', 'Güzel Servis', '', 100, 'Ýyidir','Birim9','Durum1');
insert into Servis(OtelId, ServisTipi, ServisTitle, Aciklama, Resim, Fiyat, TarifeTipi, Birim, Durum) values (10,'Tip10','Tip10', 'Güzel Servis', '', 100, 'Ýyidir','Birim10','Durum1');

/*Lokasyon bilgileri*/
create table Lokasyon(
LokasyonId int identity(1,1) primary key,
Lokasyon varchar(25), LokasyonTipi varchar(25), LokasyonTitle varchar(100), Aciklama text, Durum varchar(10));

insert into Lokasyon(Lokasyon, LokasyonTipi, LokasyonTitle, Aciklama, Durum) values ('Loc1','Tip1', 'Baþlýk1','Ýyidir','Boþ');
insert into Lokasyon(Lokasyon, LokasyonTipi, LokasyonTitle, Aciklama, Durum) values ('Loc2','Tip2', 'Baþlýk2','Ýyidir','Boþ');
insert into Lokasyon(Lokasyon, LokasyonTipi, LokasyonTitle, Aciklama, Durum) values ('Loc3','Tip3', 'Baþlýk3','Ýyidir','Boþ');
insert into Lokasyon(Lokasyon, LokasyonTipi, LokasyonTitle, Aciklama, Durum) values ('Loc4','Tip4', 'Baþlýk4','Ýyidir','Boþ');
insert into Lokasyon(Lokasyon, LokasyonTipi, LokasyonTitle, Aciklama, Durum) values ('Loc5','Tip5', 'Baþlýk5','Ýyidir','Boþ');
insert into Lokasyon(Lokasyon, LokasyonTipi, LokasyonTitle, Aciklama, Durum) values ('Loc6','Tip6', 'Baþlýk6','Ýyidir','Boþ');
insert into Lokasyon(Lokasyon, LokasyonTipi, LokasyonTitle, Aciklama, Durum) values ('Loc7','Tip7', 'Baþlýk7','Ýyidir','Boþ');
insert into Lokasyon(Lokasyon, LokasyonTipi, LokasyonTitle, Aciklama, Durum) values ('Loc8','Tip8', 'Baþlýk8','Ýyidir','Boþ');
insert into Lokasyon(Lokasyon, LokasyonTipi, LokasyonTitle, Aciklama, Durum) values ('Loc9','Tip9', 'Baþlýk9','Ýyidir','Boþ');
insert into Lokasyon(Lokasyon, LokasyonTipi, LokasyonTitle, Aciklama, Durum) values ('Loc10','Tip10', 'Baþlýk10','Ýyidir','Boþ');

/*Seyahat acentesine ait biniþ lokasyon bilgileri*/
create table BinisLokasyon(
BinisNoktasiId int identity(1,1) primary key,
OtobusId int, BinisNoktasiNo int, Dlocation varchar(50), VarisZamani datetime, HareketZamani datetime, KoltukUcreti float, UykuUcreti float, Durum varchar(10));

insert into BinisLokasyon(OtobusId, BinisNoktasiNo, Dlocation, VarisZamani, HareketZamani, KoltukUcreti, UykuUcreti, Durum) values (1,1,'','2021-07-10 15:15:00','2021-07-10 15:15:00', 100,10, 'Ýyidir');
insert into BinisLokasyon(OtobusId, BinisNoktasiNo, Dlocation, VarisZamani, HareketZamani, KoltukUcreti, UykuUcreti, Durum) values (2,2,'','2021-07-10 15:15:00','2021-07-10 15:15:00', 110,10, 'Ýyidir');
insert into BinisLokasyon(OtobusId, BinisNoktasiNo, Dlocation, VarisZamani, HareketZamani, KoltukUcreti, UykuUcreti, Durum) values (3,3,'','2021-07-10 15:15:00','2021-07-10 15:15:00', 120,10, 'Ýyidir');
insert into BinisLokasyon(OtobusId, BinisNoktasiNo, Dlocation, VarisZamani, HareketZamani, KoltukUcreti, UykuUcreti, Durum) values (4,4,'','2021-07-10 15:15:00','2021-07-10 15:15:00', 180,10, 'Ýyidir');
insert into BinisLokasyon(OtobusId, BinisNoktasiNo, Dlocation, VarisZamani, HareketZamani, KoltukUcreti, UykuUcreti, Durum) values (5,5,'','2021-07-10 15:15:00','2021-07-10 15:15:00', 70,10, 'Ýyidir');
insert into BinisLokasyon(OtobusId, BinisNoktasiNo, Dlocation, VarisZamani, HareketZamani, KoltukUcreti, UykuUcreti, Durum) values (6,6,'','2021-07-10 15:15:00','2021-07-10 15:15:00', 30,10, 'Ýyidir');
insert into BinisLokasyon(OtobusId, BinisNoktasiNo, Dlocation, VarisZamani, HareketZamani, KoltukUcreti, UykuUcreti, Durum) values (7,7,'','2021-07-10 15:15:00','2021-07-10 15:15:00', 90,10, 'Ýyidir');
insert into BinisLokasyon(OtobusId, BinisNoktasiNo, Dlocation, VarisZamani, HareketZamani, KoltukUcreti, UykuUcreti, Durum) values (8,8,'','2021-07-10 15:15:00','2021-07-10 15:15:00', 100,10, 'Ýyidir');
insert into BinisLokasyon(OtobusId, BinisNoktasiNo, Dlocation, VarisZamani, HareketZamani, KoltukUcreti, UykuUcreti, Durum) values (9,9,'','2021-07-10 15:15:00','2021-07-10 15:15:00', 99,10, 'Ýyidir');
insert into BinisLokasyon(OtobusId, BinisNoktasiNo, Dlocation, VarisZamani, HareketZamani, KoltukUcreti, UykuUcreti, Durum) values (10,10,'','2021-07-10 15:15:00','2021-07-10 15:15:00', 101,10, 'Ýyidir');

/*Rezervasyon bilgileri*/
create table Rezervasyon(
RezervasyonId int identity(1,1) primary key,
FaturaId int, RezervasyonTipi varchar(20), BiletId int, KoltukNo varchar(25), YolcuAdi varchar(25), Cinsiyet varchar(10), Iletisim varchar(15), Durum varchar(10));

insert into Rezervasyon(FaturaId, RezervasyonTipi, BiletId, KoltukNo, YolcuAdi, Cinsiyet, Iletisim, Durum) values (1,'Rezervasyon1', 1,'A1', 'Yolcu1', 'Erkek','123456','');
insert into Rezervasyon(FaturaId, RezervasyonTipi, BiletId, KoltukNo, YolcuAdi, Cinsiyet, Iletisim, Durum) values (2,'Rezervasyon2', 2,'A2', 'Yolcu2', 'Kadýn','123456','');
insert into Rezervasyon(FaturaId, RezervasyonTipi, BiletId, KoltukNo, YolcuAdi, Cinsiyet, Iletisim, Durum) values (3,'Rezervasyon3', 3,'A3', 'Yolcu3', 'Erkek','123456','');
insert into Rezervasyon(FaturaId, RezervasyonTipi, BiletId, KoltukNo, YolcuAdi, Cinsiyet, Iletisim, Durum) values (4,'Rezervasyon4', 4,'A1', 'Yolcu4', 'Erkek','123456','');
insert into Rezervasyon(FaturaId, RezervasyonTipi, BiletId, KoltukNo, YolcuAdi, Cinsiyet, Iletisim, Durum) values (5,'Rezervasyon5', 5,'A5', 'Yolcu5', 'Erkek','123456','');
insert into Rezervasyon(FaturaId, RezervasyonTipi, BiletId, KoltukNo, YolcuAdi, Cinsiyet, Iletisim, Durum) values (6,'Rezervasyon6', 6,'A6', 'Yolcu6', 'Erkek','123456','');
insert into Rezervasyon(FaturaId, RezervasyonTipi, BiletId, KoltukNo, YolcuAdi, Cinsiyet, Iletisim, Durum) values (7,'Rezervasyon7', 7,'A7', 'Yolcu7', 'Erkek','123456','');
insert into Rezervasyon(FaturaId, RezervasyonTipi, BiletId, KoltukNo, YolcuAdi, Cinsiyet, Iletisim, Durum) values (8,'Rezervasyon8', 8,'A8', 'Yolcu8', 'Erkek','123456','');
insert into Rezervasyon(FaturaId, RezervasyonTipi, BiletId, KoltukNo, YolcuAdi, Cinsiyet, Iletisim, Durum) values (9,'Rezervasyon9', 9,'A9', 'Yolcu9', 'Erkek','123456','');
insert into Rezervasyon(FaturaId, RezervasyonTipi, BiletId, KoltukNo, YolcuAdi, Cinsiyet, Iletisim, Durum) values (10,'Rezervasyon10', 10,'A1', 'Yolcu10', 'Erkek','123456','');

/*Rezervasyon Ýptal bilgileri*/
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

/*Müþteriye, almýþ olduðu hizmetler için derecelendirme yapmasýný saðlamak için derecelendirme bilgileri*/
create table Derecelendirme(
DerecelendirmeId int identity(1,1) primary key,
DerecelendirmeTipi varchar(25), MusteriId int, SirketId int, Degerlendirme int, YorumBasligi varchar(100), Yorum text, Tarih date, Durum varchar(10), 
foreign key (MusteriId) references Musteri(MusteriId),
foreign key (SirketId) references Sirket(SirketId));


insert into Derecelendirme(DerecelendirmeTipi, MusteriId, SirketId, Degerlendirme, YorumBasligi, Yorum, Tarih, Durum) values ('Derece1',1,1, 100, 'Ýyidir','Gayet Güzeldi','2021-07-05 15:12:00','');
insert into Derecelendirme(DerecelendirmeTipi, MusteriId, SirketId, Degerlendirme, YorumBasligi, Yorum, Tarih, Durum) values ('Derece2',2,2, 80, 'Ýyidir','Gayet Güzeldi','2021-07-05 15:12:00','');
insert into Derecelendirme(DerecelendirmeTipi, MusteriId, SirketId, Degerlendirme, YorumBasligi, Yorum, Tarih, Durum) values ('Derece3',3,3, 20, 'Ýyidir','Gayet Güzeldi','2021-07-05 15:12:00','');
insert into Derecelendirme(DerecelendirmeTipi, MusteriId, SirketId, Degerlendirme, YorumBasligi, Yorum, Tarih, Durum) values ('Derece4',4,4, 10, 'Ýyidir','Gayet Güzeldi','2021-07-05 15:12:00','');
insert into Derecelendirme(DerecelendirmeTipi, MusteriId, SirketId, Degerlendirme, YorumBasligi, Yorum, Tarih, Durum) values ('Derece5',5,5, 99, 'Ýyidir','Gayet Güzeldi','2021-07-05 15:12:00','');
insert into Derecelendirme(DerecelendirmeTipi, MusteriId, SirketId, Degerlendirme, YorumBasligi, Yorum, Tarih, Durum) values ('Derece6',6,6, 86, 'Ýyidir','Gayet Güzeldi','2021-07-05 15:12:00','');
insert into Derecelendirme(DerecelendirmeTipi, MusteriId, SirketId, Degerlendirme, YorumBasligi, Yorum, Tarih, Durum) values ('Derece7',7,7, 75, 'Ýyidir','Gayet Güzeldi','2021-07-05 15:12:00','');
insert into Derecelendirme(DerecelendirmeTipi, MusteriId, SirketId, Degerlendirme, YorumBasligi, Yorum, Tarih, Durum) values ('Derece8',8,8, 123, 'Ýyidir','Gayet Güzeldi','2021-07-05 15:12:00','');
insert into Derecelendirme(DerecelendirmeTipi, MusteriId, SirketId, Degerlendirme, YorumBasligi, Yorum, Tarih, Durum) values ('Derece9',9,9, 14, 'Ýyidir','Gayet Güzeldi','2021-07-05 15:12:00','');
insert into Derecelendirme(DerecelendirmeTipi, MusteriId, SirketId, Degerlendirme, YorumBasligi, Yorum, Tarih, Durum) values ('Derece10',10,10, 0, 'Ýyidir','Gayet Güzeldi','2021-07-05 15:12:00','');

/*Seyahat Acentesine ait tur paketleri bilgileri*/
create table TurPaketleri(
TurPaketId int identity(1,1) primary key,
SirketId int, TurPaketTipi varchar(25), PaketlemeBasligi varchar(100), VideoLink varchar(100), GorselLink varchar(100), GenelBakis text, Inclusion text, GunSayisi varchar(50), EnDusukFiyat float, foreign key (SirketId) references Sirket(SirketId));

insert into TurPaketleri(SirketId, TurPaketTipi, PaketlemeBasligi, VideoLink, GorselLink, GenelBakis, Inclusion, GunSayisi,EnDusukFiyat) values (1,'Paket1','Baslik1', 'v', 'g','Gayet Güzeldi','Klima Lazým','10',100);
insert into TurPaketleri(SirketId, TurPaketTipi, PaketlemeBasligi, VideoLink, GorselLink, GenelBakis, Inclusion, GunSayisi,EnDusukFiyat) values (2,'Paket2','Baslik2', 'v', 'g','Gayet Güzeldi','Klima Lazým','10',100);
insert into TurPaketleri(SirketId, TurPaketTipi, PaketlemeBasligi, VideoLink, GorselLink, GenelBakis, Inclusion, GunSayisi,EnDusukFiyat) values (3,'Paket3','Baslik3', 'v', 'g','Gayet Güzeldi','Klima Lazým','10',100);
insert into TurPaketleri(SirketId, TurPaketTipi, PaketlemeBasligi, VideoLink, GorselLink, GenelBakis, Inclusion, GunSayisi,EnDusukFiyat) values (4,'Paket4','Baslik4', 'v', 'g','Gayet Güzeldi','Klima Lazým','10',100);
insert into TurPaketleri(SirketId, TurPaketTipi, PaketlemeBasligi, VideoLink, GorselLink, GenelBakis, Inclusion, GunSayisi,EnDusukFiyat) values (5,'Paket5','Baslik5', 'v', 'g','Gayet Güzeldi','Klima Lazým','10',100);
insert into TurPaketleri(SirketId, TurPaketTipi, PaketlemeBasligi, VideoLink, GorselLink, GenelBakis, Inclusion, GunSayisi,EnDusukFiyat) values (6,'Paket6','Baslik6', 'v', 'g','Gayet Güzeldi','Klima Lazým','10',100);
insert into TurPaketleri(SirketId, TurPaketTipi, PaketlemeBasligi, VideoLink, GorselLink, GenelBakis, Inclusion, GunSayisi,EnDusukFiyat) values (7,'Paket7','Baslik7', 'v', 'g','Gayet Güzeldi','Klima Lazým','10',100);
insert into TurPaketleri(SirketId, TurPaketTipi, PaketlemeBasligi, VideoLink, GorselLink, GenelBakis, Inclusion, GunSayisi,EnDusukFiyat) values (8,'Paket8','Baslik8', 'v', 'g','Gayet Güzeldi','Klima Lazým','10',100);
insert into TurPaketleri(SirketId, TurPaketTipi, PaketlemeBasligi, VideoLink, GorselLink, GenelBakis, Inclusion, GunSayisi,EnDusukFiyat) values (9,'Paket9','Baslik9', 'v', 'g','Gayet Güzeldi','Klima Lazým','10',100);
insert into TurPaketleri(SirketId, TurPaketTipi, PaketlemeBasligi, VideoLink, GorselLink, GenelBakis, Inclusion, GunSayisi,EnDusukFiyat) values (10,'Paket10','Baslik10', 'v', 'g','Gayet Güzeldi','Klima Lazým','10',100);

/*Seyahat Acentesine ait tur paketlerinin güzergah bilgileri bilgileri*/
create table TurGuzergahý(
Guzergah int identity(1,1) primary key, 
TurPaketId int, GunNo int, GuzergahBasligi varchar(100), GuzergahAciklamasi text, GuzergahResmi varchar(100), foreign key (TurPaketId) references TurPaketleri(TurPaketId));

insert into TurGuzergahý(TurPaketId, GunNo, GuzergahBasligi, GuzergahAciklamasi, GuzergahResmi) values (1,1,'Güzergah1','Nice', '');
insert into TurGuzergahý(TurPaketId, GunNo, GuzergahBasligi, GuzergahAciklamasi, GuzergahResmi) values (2,2,'Güzergah2','Nice', '');
insert into TurGuzergahý(TurPaketId, GunNo, GuzergahBasligi, GuzergahAciklamasi, GuzergahResmi) values (3,3,'Güzergah3','Nice', '');
insert into TurGuzergahý(TurPaketId, GunNo, GuzergahBasligi, GuzergahAciklamasi, GuzergahResmi) values (4,4,'Güzergah4','Nice', '');
insert into TurGuzergahý(TurPaketId, GunNo, GuzergahBasligi, GuzergahAciklamasi, GuzergahResmi) values (5,5,'Güzergah5','Nice', '');
insert into TurGuzergahý(TurPaketId, GunNo, GuzergahBasligi, GuzergahAciklamasi, GuzergahResmi) values (6,6,'Güzergah6','Nice', '');
insert into TurGuzergahý(TurPaketId, GunNo, GuzergahBasligi, GuzergahAciklamasi, GuzergahResmi) values (7,7,'Güzergah7','Nice', '');
insert into TurGuzergahý(TurPaketId, GunNo, GuzergahBasligi, GuzergahAciklamasi, GuzergahResmi) values (8,8,'Güzergah8','Nice', '');
insert into TurGuzergahý(TurPaketId, GunNo, GuzergahBasligi, GuzergahAciklamasi, GuzergahResmi) values (9,9,'Güzergah9','Nice', '');
insert into TurGuzergahý(TurPaketId, GunNo, GuzergahBasligi, GuzergahAciklamasi, GuzergahResmi) values (10,10,'Güzergah10','Nice', '');

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

/*Seyahat Acentesine ait seçenek bilgileri*/
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

/*Seyahat acentesinin faturalandýrma bilgileri*/
create table Faturalandirma(
FaturaId int identity(1,1) primary key,
MusteriId int, FaturaTutari float, VergiTutari float, Tarih date, OdemeTipi varchar(20), KartNo varchar(25), Durum varchar(10), foreign key (MusteriId) references Musteri(MusteriId));

insert into Faturalandirma(MusteriId, FaturaTutari, VergiTutari, Tarih, OdemeTipi, KartNo, Durum) values (1, 100, 18,'2021-07-05 15:12:00','Kredi Kartý', '1234-5678-9123-45678', '');
insert into Faturalandirma(MusteriId, FaturaTutari, VergiTutari, Tarih, OdemeTipi, KartNo, Durum) values (2, 200, 36,'2021-07-05 15:12:00','Kredi Kartý', '1234-5678-9123-45678', '');
insert into Faturalandirma(MusteriId, FaturaTutari, VergiTutari, Tarih, OdemeTipi, KartNo, Durum) values (3, 118, 20,'2021-07-05 15:12:00','Kredi Kartý', '1234-5678-9123-45678', '');
insert into Faturalandirma(MusteriId, FaturaTutari, VergiTutari, Tarih, OdemeTipi, KartNo, Durum) values (4, 190, 35,'2021-07-05 15:12:00','Kredi Kartý', '1234-5678-9123-45678', '');
insert into Faturalandirma(MusteriId, FaturaTutari, VergiTutari, Tarih, OdemeTipi, KartNo, Durum) values (5, 40, 4,'2021-07-05 15:12:00','Kredi Kartý', '1234-5678-9123-45678', '');
insert into Faturalandirma(MusteriId, FaturaTutari, VergiTutari, Tarih, OdemeTipi, KartNo, Durum) values (6, 500, 60,'2021-07-05 15:12:00','Kredi Kartý', '1234-5678-9123-45678', '');
insert into Faturalandirma(MusteriId, FaturaTutari, VergiTutari, Tarih, OdemeTipi, KartNo, Durum) values (7, 10000, 1800,'2021-07-05 15:12:00','Kredi Kartý', '1234-5678-9123-45678', '');
insert into Faturalandirma(MusteriId, FaturaTutari, VergiTutari, Tarih, OdemeTipi, KartNo, Durum) values (8, 100, 18,'2021-07-05 15:12:00','Kredi Kartý', '1234-5678-9123-45678', '');
insert into Faturalandirma(MusteriId, FaturaTutari, VergiTutari, Tarih, OdemeTipi, KartNo, Durum) values (9, 100, 18,'2021-07-05 15:12:00','Kredi Kartý', '1234-5678-9123-45678', '');
insert into Faturalandirma(MusteriId, FaturaTutari, VergiTutari, Tarih, OdemeTipi, KartNo, Durum) values (10, 150, 27,'2021-07-05 15:12:00','Kredi Kartý', '1234-5678-9123-45678', '');


/*Her bir müþterinin kaç kez ayný otelde kaç kez kaldýðýný gösteren sql kodu yazýnýz*/

select MusteriId,Otel.OtelId ,count(*) from (((OdaRezervasyon inner join Oda on OdaRezervasyon.OdaId=Oda.OdaId) inner join OdaTipi on OdaTipi.OdaTipiId=Oda.OdaTipiId) inner join Otel on Otel.OtelId=OdaTipi.OtelId) group by MusteriId,Otel.OtelId


/*En çok beðeni alan otelin bilgilerini gösteren sql kodu yazýnýz*/
 
select top 1 '-------------------------->' 'En fazla beðeni alan otel', Otel.OtelId,Derecelendirme.SirketId from Otel inner join Derecelendirme on Otel.SirketId=Derecelendirme.SirketId order by Derecelendirme.Degerlendirme desc


/*Her bir otelin oda özelliklerini ve ücretlerini listeleyen kodu yazýnýz*/

select  '-------------------------->' 'Otel Özellikleri ve Ücretleri',OtelAd,OdaTipi,OdaTarifi from Otel,OdaTipi where Otel.OtelId=OdaTipi.OtelId


/*En çok yorum ve beðenisi olan ilk 5 müþterinin bilgilerini ve beðeni ve yorum sayýlarýný listeleyen kodu yazýnýz.*/

select top 5'-------------------------->' 'Müþterilerin Yorum ve Deðerlendirmeleri', Musteri.MusteriId,Musteri.MusteriAd,Musteri.Cinsiyet,Musteri.Ulke, Derecelendirme.Degerlendirme, Derecelendirme.YorumBasligi from musteri inner join Derecelendirme on Musteri.MusteriId=Derecelendirme.MusteriId group by Musteri.MusteriId,Musteri.MusteriAd,Musteri.Cinsiyet,Musteri.Ulke, Derecelendirme.Degerlendirme, Derecelendirme.YorumBasligi order by count(Derecelendirme.MusteriId) desc


/*Her bir müþterilerin bütün zamanlarda toplam harcama bilgisini hesaplayýp sýralý bir þekilde gösteren sql kodu yazýnýz.*/

SELECT '-------------------------->' 'Müþterilerin Toplam Harcamalarý',Musteri.MusteriId, MusteriAd, SUM(FaturaTutari) AS Faturalandirma FROM Musteri inner join Faturalandirma ON Musteri.MusteriId = Faturalandirma.MusteriId GROUP BY Musteri.MusteriId, MusteriAd


CREATE TRIGGER RezervasyonIptali
on 
RezervasyonIptal 
after insert 
as  
declare 
@id int SET @id = (select RezervasyonIptal.FaturaId from inserted RezervasyonIptal)  delete from Rezervasyon where FaturaId = @id select 'Rezervasyon iptal edildi'


