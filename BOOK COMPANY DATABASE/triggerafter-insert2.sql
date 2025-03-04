create trigger KSayi
on Yayınevleri
after insert
as
begin
select YayineviAdi, KitapSayisi, YeniKitapS=KitapSayisi+1000 from Yayınevleri
where KitapSayisi=2500
end

insert into Yayınevleri values(16,'Batı', '1967-01-13',4500)