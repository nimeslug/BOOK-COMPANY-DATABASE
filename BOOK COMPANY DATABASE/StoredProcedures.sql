create procedure Personel(@pozisyon varchar(50))
as
select * from Personeller where PersonelPozisyon=@pozisyon

exec Personel 'M��teri Temsilcisi'

Use Kitap


