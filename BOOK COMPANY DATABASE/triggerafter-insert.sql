Create trigger Yay�nevi
on Yay�nevleri
After insert
as
begin
select 'yeni bir yay�nevi kayd� yap�ld�!'
end

insert into Yay�nevleri values(15,'Kuzey','1997-12-11',3000)
