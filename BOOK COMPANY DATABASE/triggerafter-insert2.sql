create trigger KSayi
on Yay�nevleri
after insert
as
begin
select YayineviAdi, KitapSayisi, YeniKitapS=KitapSayisi+1000 from Yay�nevleri
where KitapSayisi=2500
end

insert into Yay�nevleri values(16,'Bat�', '1967-01-13',4500)