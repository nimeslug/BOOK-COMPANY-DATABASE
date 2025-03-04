create database Kitap
use Kitap

create table Kategoriler(
KategoriID int Primary Key,
KategoriAdi varchar(50), NOT NULL)

INSERT INTO [dbo].[Kategoriler] ([KategoriID], [KategoriAdi]) VALUES (1, N'Roman')
INSERT INTO [dbo].[Kategoriler] ([KategoriID], [KategoriAdi]) VALUES (2, N'Mizah')
INSERT INTO [dbo].[Kategoriler] ([KategoriID], [KategoriAdi]) VALUES (3, N'Yat�r�m')
INSERT INTO [dbo].[Kategoriler] ([KategoriID], [KategoriAdi]) VALUES (4, N'Fantastik')
INSERT INTO [dbo].[Kategoriler] ([KategoriID], [KategoriAdi]) VALUES (5, N'Tarih')
INSERT INTO [dbo].[Kategoriler] ([KategoriID], [KategoriAdi]) VALUES (6, N'Bilim Kurgu')


create table Alt Kategoriler(
AltKategoriID int Primary Key,
AltKategoriAdi varchar(50), NOT NULL,
KategoriID int Foreign Key references Kategoriler(KategoriID))

INSERT INTO [dbo].[Alt Kategoriler] ([AltKategoriID], [AltKategoriAdi], [KategoriID]) VALUES (1, N'A�k', 1)
INSERT INTO [dbo].[Alt Kategoriler] ([AltKategoriID], [AltKategoriAdi], [KategoriID]) VALUES (2, N'Psikolojik', 1)
INSERT INTO [dbo].[Alt Kategoriler] ([AltKategoriID], [AltKategoriAdi], [KategoriID]) VALUES (3, N'Gizem', 1)
INSERT INTO [dbo].[Alt Kategoriler] ([AltKategoriID], [AltKategoriAdi], [KategoriID]) VALUES (4, N'Karikat�r', 2)
INSERT INTO [dbo].[Alt Kategoriler] ([AltKategoriID], [AltKategoriAdi], [KategoriID]) VALUES (5, N'Parodi', 2)
INSERT INTO [dbo].[Alt Kategoriler] ([AltKategoriID], [AltKategoriAdi], [KategoriID]) VALUES (6, N'Espri', 2)
INSERT INTO [dbo].[Alt Kategoriler] ([AltKategoriID], [AltKategoriAdi], [KategoriID]) VALUES (7, N'Giri�imcilik', 3)
INSERT INTO [dbo].[Alt Kategoriler] ([AltKategoriID], [AltKategoriAdi], [KategoriID]) VALUES (8, N'Cad�', 4)
INSERT INTO [dbo].[Alt Kategoriler] ([AltKategoriID], [AltKategoriAdi], [KategoriID]) VALUES (9, N'Antik ', 5)
INSERT INTO [dbo].[Alt Kategoriler] ([AltKategoriID], [AltKategoriAdi], [KategoriID]) VALUES (10, N'Sava�', 5)
INSERT INTO [dbo].[Alt Kategoriler] ([AltKategoriID], [AltKategoriAdi], [KategoriID]) VALUES (11, N'�nsanl�k', 5)
INSERT INTO [dbo].[Alt Kategoriler] ([AltKategoriID], [AltKategoriAdi], [KategoriID]) VALUES (12, N'Polisiye', 1)
INSERT INTO [dbo].[Alt Kategoriler] ([AltKategoriID], [AltKategoriAdi], [KategoriID]) VALUES (13, N'Distopya', 1)
INSERT INTO [dbo].[Alt Kategoriler] ([AltKategoriID], [AltKategoriAdi], [KategoriID]) VALUES (14, N'Osmanl�', 5)
INSERT INTO [dbo].[Alt Kategoriler] ([AltKategoriID], [AltKategoriAdi], [KategoriID]) VALUES (15, N'Finans', 3)
INSERT INTO [dbo].[Alt Kategoriler] ([AltKategoriID], [AltKategoriAdi], [KategoriID]) VALUES (16, N'Ejderhalar', 4)
INSERT INTO [dbo].[Alt Kategoriler] ([AltKategoriID], [AltKategoriAdi], [KategoriID]) VALUES (17, N'Komedi', 2)
INSERT INTO [dbo].[Alt Kategoriler] ([AltKategoriID], [AltKategoriAdi], [KategoriID]) VALUES (18, N'Mitolojik', 4)

create table Kitaplar(
UrunID int Primary Key,
UrunAdi varchar(50) NOT NULL,
KategoriID int Foreign Key references Kategoriler(KategoriID),
AltKategoriID int Foreign Key references Alt Kategoriler(AltKategoriID)
Fiyat decimal NOT NULL,
StokMiktari int NOT NULL,
Yay�nTarihi date NOT NULL,
YayineviID int Foreign Key references Yay�nevleri(Yay�neviID),
YazarID int Foreign Key references Yazarlar(YazarID),
SayfaSayisi smallint NOT NULL)

INSERT INTO [dbo].[Kitaplar] ([UrunID], [UrunAdi], [KategoriID], [AltKategoriID], [Fiyat], [StokMiktari], [Yay�nTarihi], [YayineviID], [YazarID], [SayfaSayisi]) VALUES (1, N'Su� ve Ceza', 1, 2, CAST(30 AS Decimal(18, 0)), 200, N'1866-12-18', 6, 1, 705)
INSERT INTO [dbo].[Kitaplar] ([UrunID], [UrunAdi], [KategoriID], [AltKategoriID], [Fiyat], [StokMiktari], [Yay�nTarihi], [YayineviID], [YazarID], [SayfaSayisi]) VALUES (2, N'1984', 6, 13, CAST(28 AS Decimal(18, 0)), 240, N'1949-06-08', 9, 14, 352)
INSERT INTO [dbo].[Kitaplar] ([UrunID], [UrunAdi], [KategoriID], [AltKategoriID], [Fiyat], [StokMiktari], [Yay�nTarihi], [YayineviID], [YazarID], [SayfaSayisi]) VALUES (3, N'G�m�l� �amdan', 1, 12, CAST(14 AS Decimal(18, 0)), 78, N'1937-06-13', 4, 2, 120)
INSERT INTO [dbo].[Kitaplar] ([UrunID], [UrunAdi], [KategoriID], [AltKategoriID], [Fiyat], [StokMiktari], [Yay�nTarihi], [YayineviID], [YazarID], [SayfaSayisi]) VALUES (4, N'�nce Memed', 1, 2, CAST(20 AS Decimal(18, 0)), 45, N'1955-01-01', 8, 3, 436)
INSERT INTO [dbo].[Kitaplar] ([UrunID], [UrunAdi], [KategoriID], [AltKategoriID], [Fiyat], [StokMiktari], [Yay�nTarihi], [YayineviID], [YazarID], [SayfaSayisi]) VALUES (5, N'Sineklerin Tanr�s�', 6, 13, CAST(156 AS Decimal(18, 0)), 40, N'1949-01-01', 6, 15, 282)
INSERT INTO [dbo].[Kitaplar] ([UrunID], [UrunAdi], [KategoriID], [AltKategoriID], [Fiyat], [StokMiktari], [Yay�nTarihi], [YayineviID], [YazarID], [SayfaSayisi]) VALUES (7, N'Paran�n Psikolojisi', 3, 7, CAST(146 AS Decimal(18, 0)), 38, N'2021-11-30', 11, 2, 312)
INSERT INTO [dbo].[Kitaplar] ([UrunID], [UrunAdi], [KategoriID], [AltKategoriID], [Fiyat], [StokMiktari], [Yay�nTarihi], [YayineviID], [YazarID], [SayfaSayisi]) VALUES (8, N'Borsa 101', 3, 15, CAST(144 AS Decimal(18, 0)), 121, N'2021-06-01', 7, 17, 256)
INSERT INTO [dbo].[Kitaplar] ([UrunID], [UrunAdi], [KategoriID], [AltKategoriID], [Fiyat], [StokMiktari], [Yay�nTarihi], [YayineviID], [YazarID], [SayfaSayisi]) VALUES (9, N'A�k ve Gurur', 1, 1, CAST(137 AS Decimal(18, 0)), 500, N'2019-10-31', 2, 4, 387)
INSERT INTO [dbo].[Kitaplar] ([UrunID], [UrunAdi], [KategoriID], [AltKategoriID], [Fiyat], [StokMiktari], [Yay�nTarihi], [YayineviID], [YazarID], [SayfaSayisi]) VALUES (10, N'Kan ve Ate�', 4, 16, CAST(210 AS Decimal(18, 0)), 980, N'2019-11-13', 7, 9, 489)
INSERT INTO [dbo].[Kitaplar] ([UrunID], [UrunAdi], [KategoriID], [AltKategoriID], [Fiyat], [StokMiktari], [Yay�nTarihi], [YayineviID], [YazarID], [SayfaSayisi]) VALUES (11, N'Z�b�k', 2, 17, CAST(92 AS Decimal(18, 0)), 24, N'2016-08-05', 5, 2, 444)
INSERT INTO [dbo].[Kitaplar] ([UrunID], [UrunAdi], [KategoriID], [AltKategoriID], [Fiyat], [StokMiktari], [Yay�nTarihi], [YayineviID], [YazarID], [SayfaSayisi]) VALUES (12, N'Cad�n�n Y�re�i', 4, 8, CAST(168 AS Decimal(18, 0)), 169, N'2022-01-19', 7, 19, 336)
INSERT INTO [dbo].[Kitaplar] ([UrunID], [UrunAdi], [KategoriID], [AltKategoriID], [Fiyat], [StokMiktari], [Yay�nTarihi], [YayineviID], [YazarID], [SayfaSayisi]) VALUES (13, N'Do�u Ekspresinde Cinayet', 1, 3, CAST(108 AS Decimal(18, 0)), 256, N'2020-01-01', 11, 12, 256)

create table KullaniciBilgi(
KullaniciID int Primary Key,
KullaniciAdi varchar(50) NOT NULL,
Sifre varchar(50) NOT NULL)

SET IDENTITY_INSERT [dbo].[KullaniciBilgi] ON
INSERT INTO [dbo].[KullaniciBilgi] ([kullaniciID], [kullaniciAdi], [Sifre]) VALUES (1, N'Gulsemin', N'G123')
SET IDENTITY_INSERT [dbo].[KullaniciBilgi] OFF

create table Departmanlar(
DepartmanID int Primary Key,
DepartmanAdi varchar(50) NOT NULL,
DepartmanMuduru varchar(50) NOT NULL)

INSERT INTO [dbo].[Departmanlar] ([DepartmanID], [DepartmanAdi], [DepartrmanMuduru]) VALUES (1, N'Sat�� ve Pazarlama', N'Baran Ate�')
INSERT INTO [dbo].[Departmanlar] ([DepartmanID], [DepartmanAdi], [DepartrmanMuduru]) VALUES (2, N'�nsan Kaynaklar�', N'Beyza Ba�aran')
INSERT INTO [dbo].[Departmanlar] ([DepartmanID], [DepartmanAdi], [DepartrmanMuduru]) VALUES (3, N'Finans ve Muhasebe', N'Kaan Yurt')
INSERT INTO [dbo].[Departmanlar] ([DepartmanID], [DepartmanAdi], [DepartrmanMuduru]) VALUES (4, N'M��teri Hizmetleri', N'Yasemin Kaplan')

create table Personeller(
PersonelID int Primary Key,
PersonelAdi varchar(50) NOT NULL,
PersonelSoyadi varchar(50) NOT NULL,
PersonelPozisyon varchar(50) NOT NULL,
BaslangicTarihi date NOT NULL,
PersonelTelefon varchar(20) NOT NULL,
PersonelEmail varchar(50) NOT NULL,
DepartmanID int Foreign Key references Departmanlar(DepartmanID)
Maas varchar(50) NOT NULL)

INSERT INTO [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyadi], [PersonelPozisyon], [BaslangicTarihi], [PersonelTelefon], [PersonelEmail], [DepartmanID], [Maas]) VALUES (1, N'Ahmet', N'Y�lmaz', N'Sat�� Temsilcisi', N'2020-01-15
', N'555-123-4567	', N'ahmet@gmail.com', 1, N'25000     ')
INSERT INTO [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyadi], [PersonelPozisyon], [BaslangicTarihi], [PersonelTelefon], [PersonelEmail], [DepartmanID], [Maas]) VALUES (2, N'Ay�e', N'Ka�an', N'�K Uzman�', N'2018-05-20
', N'555-234-5678	', N'ayse.kacan@gmail.com', 2, N'28500     ')
INSERT INTO [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyadi], [PersonelPozisyon], [BaslangicTarihi], [PersonelTelefon], [PersonelEmail], [DepartmanID], [Maas]) VALUES (3, N'Emre ', N'Kocaba�', N'M��teri Temsilcisi', N'2018-04-15
', N'555-890-1234	', N'emre.k@gmail.com', 4, N'32000     ')
INSERT INTO [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyadi], [PersonelPozisyon], [BaslangicTarihi], [PersonelTelefon], [PersonelEmail], [DepartmanID], [Maas]) VALUES (4, N'Burak', N'Demir', N'Muhasebeci', N'2019-03-08
', N'555-345-6789	', N'burakdemir@gmail.com', 3, N'33500     ')
INSERT INTO [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyadi], [PersonelPozisyon], [BaslangicTarihi], [PersonelTelefon], [PersonelEmail], [DepartmanID], [Maas]) VALUES (5, N'Zeynep', N'�zt�rk', N'Finans Uzman�', N'2020-06-28
', N'555-789-0123	', N'ozturky@gmail.com', 3, N'35000     ')
INSERT INTO [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyadi], [PersonelPozisyon], [BaslangicTarihi], [PersonelTelefon], [PersonelEmail], [DepartmanID], [Maas]) VALUES (6, N'Deniz', N'Y�lmaz', N'Sat�� Temsilcisi', N'2022-02-10
', N'555-901-2345	', N'denizyilmaz04@gmail.com', 1, N'23500     ')
INSERT INTO [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyadi], [PersonelPozisyon], [BaslangicTarihi], [PersonelTelefon], [PersonelEmail], [DepartmanID], [Maas]) VALUES (7, N'Fatma', N'�ahin', N'Pazarlama Uzman�', N'2021-12-25
', N'555-456-7890	', N'fatmaassahin@gmail.com', 1, N'25000     ')
INSERT INTO [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyadi], [PersonelPozisyon], [BaslangicTarihi], [PersonelTelefon], [PersonelEmail], [DepartmanID], [Maas]) VALUES (8, N'Batuhan', N'Emino�lu', N'M��teri Temsilcisi', N'2022-09-10
', N'555-768-3419', N'batu_eminoglu@gmail.com', 4, N'27500     ')
INSERT INTO [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyadi], [PersonelPozisyon], [BaslangicTarihi], [PersonelTelefon], [PersonelEmail], [DepartmanID], [Maas]) VALUES (9, N'Ceren', N'Parlak', N'M��teri Temsilcisi', N'2023-04-24', N'555-324-6701', N'cerenp@gmail.com', 4, N'18500     ')
INSERT INTO [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyadi], [PersonelPozisyon], [BaslangicTarihi], [PersonelTelefon], [PersonelEmail], [DepartmanID], [Maas]) VALUES (10, N'Baran', N'Ate�', N'Departman M�d�r�', N'2018-02-10', N'555-238-7710', N'baranates@gmail.com', 1, N'50000     ')
INSERT INTO [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyadi], [PersonelPozisyon], [BaslangicTarihi], [PersonelTelefon], [PersonelEmail], [DepartmanID], [Maas]) VALUES (11, N'Beyza', N'Ba�aran', N'Departman M�d�r�', N'2018-03-15', N'555-789-1055', N'basaranb@gmail.com', 2, N'55000     ')
INSERT INTO [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyadi], [PersonelPozisyon], [BaslangicTarihi], [PersonelTelefon], [PersonelEmail], [DepartmanID], [Maas]) VALUES (12, N'Kaan', N'Yurt', N'Departman M�d�r�', N'2018-04-29', N'555-987-2055', N'kaan.yurt02@gmail.com', 3, N'52000     ')
INSERT INTO [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyadi], [PersonelPozisyon], [BaslangicTarihi], [PersonelTelefon], [PersonelEmail], [DepartmanID], [Maas]) VALUES (13, N'Yasemin', N'Kaplan', N'Departman M�d�r�', N'2019-06-18', N'555-239-4154', N'y.kaplan34@gmail.com', 4, N'51500     ')

create table Yazarlar(
YazarID int Primary Key,
YazarAdi varchar(50) NOT NULL,
Ulke varchar(30) NOT NULL,
Cinsiyet varchar(10) NOT NULL,
KitapSayisi int NOT NULL)

INSERT INTO [dbo].[Yazarlar] ([YazarID], [YazarAdi], [Ulke], [Cinsiyet], [KitapSayisi]) VALUES (1, N'Dostoyevski', N'Rusya', N'Erkek', 270)
INSERT INTO [dbo].[Yazarlar] ([YazarID], [YazarAdi], [Ulke], [Cinsiyet], [KitapSayisi]) VALUES (2, N'Stefan Zweig', N'Avusturya', N'Erkek', 752)
INSERT INTO [dbo].[Yazarlar] ([YazarID], [YazarAdi], [Ulke], [Cinsiyet], [KitapSayisi]) VALUES (3, N'Ya�ar Kemal', N'T�rkiye', N'Erkek', 114)
INSERT INTO [dbo].[Yazarlar] ([YazarID], [YazarAdi], [Ulke], [Cinsiyet], [KitapSayisi]) VALUES (4, N'Jane Austen', N'ABD', N'Kad�n', 149)
INSERT INTO [dbo].[Yazarlar] ([YazarID], [YazarAdi], [Ulke], [Cinsiyet], [KitapSayisi]) VALUES (5, N'J.K. Rowling', N'ABD', N'Kad�n', 82)
INSERT INTO [dbo].[Yazarlar] ([YazarID], [YazarAdi], [Ulke], [Cinsiyet], [KitapSayisi]) VALUES (6, N'Barbara Rockefeller', N'ABD', N'Kad�n', 30)
INSERT INTO [dbo].[Yazarlar] ([YazarID], [YazarAdi], [Ulke], [Cinsiyet], [KitapSayisi]) VALUES (7, N'David Foenkinos', N'Fransa', N'Erkek', 18)
INSERT INTO [dbo].[Yazarlar] ([YazarID], [YazarAdi], [Ulke], [Cinsiyet], [KitapSayisi]) VALUES (8, N'�lber Ortayl�', N'T�rkiye', N'Erkek', 45)
INSERT INTO [dbo].[Yazarlar] ([YazarID], [YazarAdi], [Ulke], [Cinsiyet], [KitapSayisi]) VALUES (9, N'George Martin', N'ABD', N'Erkek', 65)
INSERT INTO [dbo].[Yazarlar] ([YazarID], [YazarAdi], [Ulke], [Cinsiyet], [KitapSayisi]) VALUES (10, N'Andrzej Sapkowski', N'Polonya', N'Erkek', 14)
INSERT INTO [dbo].[Yazarlar] ([YazarID], [YazarAdi], [Ulke], [Cinsiyet], [KitapSayisi]) VALUES (11, N'Virginia Woolf', N'Birle�ik Krall�k', N'Kad�n', 187)
INSERT INTO [dbo].[Yazarlar] ([YazarID], [YazarAdi], [Ulke], [Cinsiyet], [KitapSayisi]) VALUES (12, N'Agatha Christie', N'ABD', N'Kad�n', 121)
INSERT INTO [dbo].[Yazarlar] ([YazarID], [YazarAdi], [Ulke], [Cinsiyet], [KitapSayisi]) VALUES (13, N'Lev Tolstoy', N'Rusya', N'Erkek', 377)
INSERT INTO [dbo].[Yazarlar] ([YazarID], [YazarAdi], [Ulke], [Cinsiyet], [KitapSayisi]) VALUES (14, N'George Orwell', N'ABD', N'Erkek', 189)
INSERT INTO [dbo].[Yazarlar] ([YazarID], [YazarAdi], [Ulke], [Cinsiyet], [KitapSayisi]) VALUES (15, N'William Golding', N'ABD', N'Erkek', 32)
INSERT INTO [dbo].[Yazarlar] ([YazarID], [YazarAdi], [Ulke], [Cinsiyet], [KitapSayisi]) VALUES (16, N'Morgan Housel', N'ABD', N'Erkek', 1)
INSERT INTO [dbo].[Yazarlar] ([YazarID], [YazarAdi], [Ulke], [Cinsiyet], [KitapSayisi]) VALUES (17, N'Michelle Cagan', N'ABD', N'Kad�n', 2)
INSERT INTO [dbo].[Yazarlar] ([YazarID], [YazarAdi], [Ulke], [Cinsiyet], [KitapSayisi]) VALUES (18, N'Aziz Nesin', N'T�rkiye', N'Erkek', 273)
INSERT INTO [dbo].[Yazarlar] ([YazarID], [YazarAdi], [Ulke], [Cinsiyet], [KitapSayisi]) VALUES (19, N'Genevieve Gornichec', N'ABD', N'Kad�n', 1)

create table Yay�nevleri(
YayineviID int Primary Key,
YayineviAdi varchar(50) NOT NULL,
KurulusTarihi date NOT NULL,
KitapSayisi int NOT NULL)

INSERT INTO [dbo].[Yay�nevleri] ([YayineviID], [YayineviAdi], [KurulusTarihi], [KitapSayisi]) VALUES (1, N'Bilgi', N'1975-03-15', 1500)
INSERT INTO [dbo].[Yay�nevleri] ([YayineviID], [YayineviAdi], [KurulusTarihi], [KitapSayisi]) VALUES (2, N'Kurt', N'1982-07-20', 2000)
INSERT INTO [dbo].[Yay�nevleri] ([YayineviID], [YayineviAdi], [KurulusTarihi], [KitapSayisi]) VALUES (3, N'�thaki', N'1990-05-10', 2300)
INSERT INTO [dbo].[Yay�nevleri] ([YayineviID], [YayineviAdi], [KurulusTarihi], [KitapSayisi]) VALUES (4, N'�� Bankas�', N'1988-09-05', 3400)
INSERT INTO [dbo].[Yay�nevleri] ([YayineviID], [YayineviAdi], [KurulusTarihi], [KitapSayisi]) VALUES (5, N'Deniz', N'2001-11-28', 2200)
INSERT INTO [dbo].[Yay�nevleri] ([YayineviID], [YayineviAdi], [KurulusTarihi], [KitapSayisi]) VALUES (6, N'Domino', N'1995-04-18', 1900)
INSERT INTO [dbo].[Yay�nevleri] ([YayineviID], [YayineviAdi], [KurulusTarihi], [KitapSayisi]) VALUES (7, N'Epsilon', N'1978-06-30', 2500)
INSERT INTO [dbo].[Yay�nevleri] ([YayineviID], [YayineviAdi], [KurulusTarihi], [KitapSayisi]) VALUES (8, N'Pegasus', N'1967-10-22', 2500)
INSERT INTO [dbo].[Yay�nevleri] ([YayineviID], [YayineviAdi], [KurulusTarihi], [KitapSayisi]) VALUES (9, N'Can', N'2000-05-13', 1600)
INSERT INTO [dbo].[Yay�nevleri] ([YayineviID], [YayineviAdi], [KurulusTarihi], [KitapSayisi]) VALUES (10, N'G�ney', N'1974-11-28', 870)
INSERT INTO [dbo].[Yay�nevleri] ([YayineviID], [YayineviAdi], [KurulusTarihi], [KitapSayisi]) VALUES (11, N'Alt�n', N'2005-08-20', 367)
INSERT INTO [dbo].[Yay�nevleri] ([YayineviID], [YayineviAdi], [KurulusTarihi], [KitapSayisi]) VALUES (14, N'Ma�ara', N'1997-12-11', 8000)
INSERT INTO [dbo].[Yay�nevleri] ([YayineviID], [YayineviAdi], [KurulusTarihi], [KitapSayisi]) VALUES (16, N'Bat�', N'1967-01-13', 4500)
INSERT INTO [dbo].[Yay�nevleri] ([YayineviID], [YayineviAdi], [KurulusTarihi], [KitapSayisi]) VALUES (17, N'Bat�', N'1967-01-13', 4500)

create table M��teriler(
MusteriID int Primary Key,
MusteriAdi varchar(50) NOT NULL,
MusteriSoyadi varchar(50) NOT NULL,
MusteriEmail varchar(40) NOT NULL,
MusteriTelefon varchar(20) NOT NULL,
MusteriAdresi text NOT NULL,
MusteriDogumTarihi date NOT NULL,
IletisimYontemi varchar(40) NOT NULL,
PersonelID int Foreign Key references Personeller(PersonelID))

teriEmail], [M�steriTelefon], [M�steriAdresi], [M�steriDogumTarihi], [IletisimY�ntemi], [PersonelID]) VALUES (1, N'Ahmet', N'Y�lmaz', N'ahmet@gmail.com', N'555-123-4567', N'�stanbul', N'1980-05-15', N'SMS', 3)
INSERT INTO [dbo].[M��teriler] ([MusteriID], [MusteriAdi], [M�steriSoyadi], [M�steriEmail], [M�steriTelefon], [M�steriAdresi], [M�steriDogumTarihi], [IletisimY�ntemi], [PersonelID]) VALUES (2, N'Ay�e', N'Kaya', N'ayse.kaya@gmail.com', N'555-234-5678	', N'Ankara', N'1992-10-20', N'E-Posta', 8)
INSERT INTO [dbo].[M��teriler] ([MusteriID], [MusteriAdi], [M�steriSoyadi], [M�steriEmail], [M�steriTelefon], [M�steriAdresi], [M�steriDogumTarihi], [IletisimY�ntemi], [PersonelID]) VALUES (3, N'Mehmet', N'Demir', N'm_demir@hotmail.com', N'555-345-6789	', N'�zmir', N'1975-03-08', N'SMS', 9)
INSERT INTO [dbo].[M��teriler] ([MusteriID], [MusteriAdi], [M�steriSoyadi], [M�steriEmail], [M�steriTelefon], [M�steriAdresi], [M�steriDogumTarihi], [IletisimY�ntemi], [PersonelID]) VALUES (4, N'Zeynep', N'Y�ld�z', N'zey.yildiz@gmail.com', N'555-456-7890	', N'�stanbul', N'1988-12-25', N'Telefon', 8)
INSERT INTO [dbo].[M��teriler] ([MusteriID], [MusteriAdi], [M�steriSoyadi], [M�steriEmail], [M�steriTelefon], [M�steriAdresi], [M�steriDogumTarihi], [IletisimY�ntemi], [PersonelID]) VALUES (5, N'Emine', N'�elik', N'emine_celik@outlook.com', N'555-567-8901	', N'Afyonkarahisar', N'1987-07-18', N'Telefon', 8)
INSERT INTO [dbo].[M��teriler] ([MusteriID], [MusteriAdi], [M�steriSoyadi], [M�steriEmail], [M�steriTelefon], [M�steriAdresi], [M�steriDogumTarihi], [IletisimY�ntemi], [PersonelID]) VALUES (6, N'Ali', N'Tekin', N'ali_ttekin@gmail.com', N'555-678-9012	', N'Eski�ehir', N'1995-09-30', N'SMS', 3)
INSERT INTO [dbo].[M��teriler] ([MusteriID], [MusteriAdi], [M�steriSoyadi], [M�steriEmail], [M�steriTelefon], [M�steriAdresi], [M�steriDogumTarihi], [IletisimY�ntemi], [PersonelID]) VALUES (7, N'Canan ', N'Ayd�n', N'c.aydin01@gmail.com', N'555-901-2345	', N'Adana', N'1998-08-22', N'E-Posta', 3)
INSERT INTO [dbo].[M��teriler] ([MusteriID], [MusteriAdi], [M�steriSoyadi], [M�steriEmail], [M�steriTelefon], [M�steriAdresi], [M�steriDogumTarihi], [IletisimY�ntemi], [PersonelID]) VALUES (8, N'�rem', N'�zt�rk', N'iremozturko@hotmail.com', N'555-123-4567	', N'Ankara', N'1990-01-17', N'SMS', 3)
INSERT INTO [dbo].[M��teriler] ([MusteriID], [MusteriAdi], [M�steriSoyadi], [M�steriEmail], [M�steriTelefon], [M�steriAdresi], [M�steriDogumTarihi], [IletisimY�ntemi], [PersonelID]) VALUES (9, N'Eren', N'Akta�', N'erenpaktas@gmail.com', N'555-345-6789	', N'�stanbul', N'1978-09-09', N'SMS', 8)
INSERT INTO [dbo].[M��teriler] ([MusteriID], [MusteriAdi], [M�steriSoyadi], [M�steriEmail], [M�steriTelefon], [M�steriAdresi], [M�steriDogumTarihi], [IletisimY�ntemi], [PersonelID]) VALUES (10, N'H�seyin', N'Demirbilek', N'demirbilekh@outlook.com', N'555-456-7890	', N'Sakarya', N'1993-12-31', N'Telefon', 9)
INSERT INTO [dbo].[M��teriler] ([MusteriID], [MusteriAdi], [M�steriSoyadi], [M�steriEmail], [M�steriTelefon], [M�steriAdresi], [M�steriDogumTarihi], [IletisimY�ntemi], [PersonelID]) VALUES (11, N'Deniz', N'G�ne�', N'dg.denizgunes@gmail.com', N'555-567-8901	', N'Bursa', N'1984-05-26', N'SMS', 9)

create table Sipari�ler(
SiparisID int Primary Key,
MusteriID int Foreign Key references M��teriler(MusteriID),
SiparisTarihi date NOT NULL,
ToplamTutar decimal NOT NULL,
Durum varchar(50) NOT NULL,
OdemeYontemi varchar(50) NOT NULL)

INSERT INTO [dbo].[Sipari�ler] ([SiparisID], [MusteriID], [SiparisTarihi], [ToplamTutar], [Durum], [OdemeYontemi]) VALUES (1, 9, N'2024-05-09', CAST(28 AS Decimal(18, 0)), N'Haz�rlan�yor', N'Kredi Kart�')
INSERT INTO [dbo].[Sipari�ler] ([SiparisID], [MusteriID], [SiparisTarihi], [ToplamTutar], [Durum], [OdemeYontemi]) VALUES (2, 7, N'2024-04-20', CAST(137 AS Decimal(18, 0)), N'Kargoya Verildi', N'Kap�da �deme')
INSERT INTO [dbo].[Sipari�ler] ([SiparisID], [MusteriID], [SiparisTarihi], [ToplamTutar], [Durum], [OdemeYontemi]) VALUES (3, 7, N'2024-04-15', CAST(420 AS Decimal(18, 0)), N'Teslim Edildi', N'Kap�da �deme')
INSERT INTO [dbo].[Sipari�ler] ([SiparisID], [MusteriID], [SiparisTarihi], [ToplamTutar], [Durum], [OdemeYontemi]) VALUES (4, 3, N'2024-05-10', CAST(312 AS Decimal(18, 0)), N'Haz�rlan�yor', N'Banka Havalesi')
INSERT INTO [dbo].[Sipari�ler] ([SiparisID], [MusteriID], [SiparisTarihi], [ToplamTutar], [Durum], [OdemeYontemi]) VALUES (5, 1, N'2024-04-27', CAST(45 AS Decimal(18, 0)), N'Kargoya Verildi', N'Kredi Kart�')
INSERT INTO [dbo].[Sipari�ler] ([SiparisID], [MusteriID], [SiparisTarihi], [ToplamTutar], [Durum], [OdemeYontemi]) VALUES (6, 11, N'2024-04-23', CAST(276 AS Decimal(18, 0)), N'Kargoya Verildi', N'Kredi Kart�')
INSERT INTO [dbo].[Sipari�ler] ([SiparisID], [MusteriID], [SiparisTarihi], [ToplamTutar], [Durum], [OdemeYontemi]) VALUES (7, 8, N'2024-04-10', CAST(379 AS Decimal(18, 0)), N'Teslim Edildi', N'Kap�da �deme')
INSERT INTO [dbo].[Sipari�ler] ([SiparisID], [MusteriID], [SiparisTarihi], [ToplamTutar], [Durum], [OdemeYontemi]) VALUES (8, 8, N'2024-04-11', CAST(168 AS Decimal(18, 0)), N'Teslim Edildi', N'Kap�da �deme')
INSERT INTO [dbo].[Sipari�ler] ([SiparisID], [MusteriID], [SiparisTarihi], [ToplamTutar], [Durum], [OdemeYontemi]) VALUES (9, 8, N'2024-04-24', CAST(763 AS Decimal(18, 0)), N'Kargoya Verildi', N'Banka Havalesi')
INSERT INTO [dbo].[Sipari�ler] ([SiparisID], [MusteriID], [SiparisTarihi], [ToplamTutar], [Durum], [OdemeYontemi]) VALUES (10, 2, N'2024-05-08', CAST(567 AS Decimal(18, 0)), N'Haz�rlan�yor', N'Kredi Kart�')
INSERT INTO [dbo].[Sipari�ler] ([SiparisID], [MusteriID], [SiparisTarihi], [ToplamTutar], [Durum], [OdemeYontemi]) VALUES (11, 5, N'2024-05-07', CAST(163 AS Decimal(18, 0)), N'Haz�rlan�yor', N'Banka Havalesi')

create table Sipari� Detaylar�(
SiparisDetayID int Primary Key,
SiparisID int Foreign Key references Sipari�ler(SiparisID),
UrunID int Foreign Key references Kitaplar(UrunID),
Adet int NOT NULL,
KitapFiyati decimal NOT NULL,
VergiMiktari decimal NOT NULL,
�adeDurumu varchar(50) NOT NULL)

INSERT INTO [dbo].[Sipari� Detaylar�] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [KitapFiyati], [VergiMiktari], [�adeDurumu]) VALUES (1, 1, 2, 1, CAST(28 AS Decimal(18, 0)), CAST(6 AS Decimal(18, 0)), N'�ade Edilmedi')
INSERT INTO [dbo].[Sipari� Detaylar�] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [KitapFiyati], [VergiMiktari], [�adeDurumu]) VALUES (2, 2, 9, 1, CAST(137 AS Decimal(18, 0)), CAST(12 AS Decimal(18, 0)), N'�ade Edildi')
INSERT INTO [dbo].[Sipari� Detaylar�] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [KitapFiyati], [VergiMiktari], [�adeDurumu]) VALUES (3, 3, 10, 2, CAST(420 AS Decimal(18, 0)), CAST(35 AS Decimal(18, 0)), N'�ade Edilmedi')
INSERT INTO [dbo].[Sipari� Detaylar�] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [KitapFiyati], [VergiMiktari], [�adeDurumu]) VALUES (4, 6, 11, 3, CAST(276 AS Decimal(18, 0)), CAST(18 AS Decimal(18, 0)), N'�ade Edilmedi')
INSERT INTO [dbo].[Sipari� Detaylar�] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [KitapFiyati], [VergiMiktari], [�adeDurumu]) VALUES (5, 4, 2, 2, CAST(312 AS Decimal(18, 0)), CAST(44 AS Decimal(18, 0)), N'�ade Edilmedi')
INSERT INTO [dbo].[Sipari� Detaylar�] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [KitapFiyati], [VergiMiktari], [�adeDurumu]) VALUES (6, 8, 12, 1, CAST(168 AS Decimal(18, 0)), CAST(23 AS Decimal(18, 0)), N'�ade Edildi')
INSERT INTO [dbo].[Sipari� Detaylar�] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [KitapFiyati], [VergiMiktari], [�adeDurumu]) VALUES (7, 7, 2, 1, CAST(108 AS Decimal(18, 0)), CAST(9 AS Decimal(18, 0)), N'�ade Edilmedi')




