alter trigger Ulke
on Yazarlar
instead of update
as
begin
select 'Ulke guncellendi!'
end

update Yazarlar set Ulke='ABD' where Ulke='Ýngiltere'

alter trigger Ulke
on Yazarlar
instead of delete
as
begin
select 'Cinsiyet silindi!'
end

delete from Yazarlar where cinsiyet='erkek, kadýn'

use Kitap