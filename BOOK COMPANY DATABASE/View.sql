Create View MusteriKitap
AS
Select UrunAdi, Fiyat, MusteriAdi
from Kitaplar inner join Müþteriler
On Kitaplar.UrunID = Müþteriler.MusteriID

select * from MusteriKitap
where fiyat>20
order by UrunAdi

Use Kitap