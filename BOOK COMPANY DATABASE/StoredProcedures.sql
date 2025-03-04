create procedure Personel(@pozisyon varchar(50))
as
select * from Personeller where PersonelPozisyon=@pozisyon

exec Personel 'Müþteri Temsilcisi'

Use Kitap


