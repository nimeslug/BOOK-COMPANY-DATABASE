Create View MusteriKitap
AS
Select UrunAdi, Fiyat, MusteriAdi
from Kitaplar inner join Müşteriler
On Kitaplar.UrunID = Müşteriler.MusteriID

select * from MusteriKitap
where fiyat>20
order by UrunAdi

Use Kitap