Create trigger Yayınevi
on Yayınevleri
After insert
as
begin
select 'yeni bir yayınevi kaydı yapıldı!'
end

insert into Yayınevleri values(15,'Kuzey','1997-12-11',3000)
