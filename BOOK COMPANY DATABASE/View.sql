Create View MusteriKitap
AS
Select UrunAdi, Fiyat, MusteriAdi
from Kitaplar inner join M��teriler
On Kitaplar.UrunID = M��teriler.MusteriID

select * from MusteriKitap
where fiyat>20
order by UrunAdi

Use Kitap