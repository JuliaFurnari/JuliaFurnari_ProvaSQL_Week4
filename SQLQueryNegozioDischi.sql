--Questionario

--1) -> b
--2) Con una tabella aggiuntiva che contiene le chiavi primarie delle 2 tabelle come FK
--3) -> b
--4) -> b
--5) -> b. Di solito l'ID è una PK quindi NOT NULL.

--Creazione DataBase

--create database NegozioDischi

--create table Band(   
--    Id_Band int primary key identity (1,1),  
--    Nome nvarchar(50) not null, 
--    NumeroComponenti int not null,
--);

--create table Brano(   
--    Id_Brano int primary key identity (1,1),  
--    Titolo nvarchar(50) not null, 
--    Durata int not null,
--	Id_Band int foreign key references Band(Id_Band),
--);

--create table Album(   
--    Id_Album int primary key identity (1,1),  
--    Titolo nvarchar(50) not null, 
--    AnnoDiUscita int not null,
--	CasaDiscografica nvarchar(50) not null,
--	Genere nvarchar(10) check(Genere='Pop' or Genere='Rock' or Genere='Metal'or Genere='Classico' or Genere='Jazz'),
--	Supporto nvarchar(10) check(Supporto='CD' or Supporto='Vinile' or Supporto='Streaming'),
--	unique(Titolo, AnnoDiUscita, CasaDiscografica, Genere,Supporto),
--	Id_Band int foreign key references Band(Id_Band),
--);

--create table Album_Brano(   
  
--  Id_Brano int foreign key references Brano(Id_Brano),  
--	Id_Album int foreign key references Album(Id_Album),
--);

--ALTER TABLE Band ADD CHECK (NumeroComponenti>=2);

--*******************Inserimento Band*****************

--insert into Band values('883', 2); --Id=1
--insert into Band values('Maneskin', 4);--2
--insert into Band values('Kings of Leon', 4);--3
--insert into Band values('Paola e Chiara', 2);
--insert into Band values('Beatles', 4);--4
--insert into Band values('The Giornalisti', 3);--5

--*******************Inserimento Album****************

--insert into Album values('Hanno ucciso l uomo ragno', 1992, 'Fri Records', 'Pop', 'CD', 1);--1
--insert into Album values('Hanno ucciso l uomo ragno', 1992, 'Fri Records', 'Pop', 'Vinile', 1);--3
--insert into Album values('Nord sud ovest est', 1993, 'Fri Records', 'Pop', 'CD', 1);--4
--insert into Album values('Nord sud ovest est', 1993, 'Fri Records', 'Pop', 'Vinile', 1);--5
--insert into Album values('La dura legge del gol!', 1997, 'Fri Records', 'Pop', 'CD', 1);--6
--insert into Album values('Grazie mille', 1999, 'S4', 'Pop', 'CD', 1);--7
--insert into Album values('Collection 883', 2013, 'Warner Music Italy', 'Pop', 'CD', 1);--8
--insert into Album values('Collection 883', 2013, 'Warner Music Italy', 'Pop', 'Streaming', 1);--9
--insert into Album values('Teatro d ira', 2020, 'Sony Music', 'Rock', 'Streaming', 2);--10
--insert into Album values('When You See Yourself', 2020, 'Sony Music', 'Rock', 'CD', 3);--11
--insert into Album values('When You See Yourself', 2020, 'Sony Music', 'Rock', 'Streaming', 3);--12
--insert into Album values('Il ballo della vita', 2018, 'Sony Music', 'Rock', 'Streaming', 2);--13
--insert into Album values('This is Maneskin', 2016, 'Sony Music', 'Rock', 'Vinile', 2);--14
--insert into Album values('Imagine', 1971, 'Apple Records', 'Pop', 'Vinile', 4);--15
--insert into Album values('Best of Beatles', 2000, 'Apple Records', 'Pop', 'CD', 4);--16

--*******************Inserimento Brani****************
select * from Brano;
--insert into Brano values('New Song', 210, 2);--1
--insert into Brano values('Torna a casa', 230, 2);--2
--insert into Brano values('Morirò da re', 160, 2);--3
--insert into Brano values('Are you Ready', 150, 2);--4
--insert into Brano values('Niente da dire', 156, 2);--5
--insert into Brano values('This is Maneskin', 126, 2);--6
--insert into Brano values('Fear for nobody', 156, 2);--7
--insert into Brano values('Riccione', 184, 5);--9
--insert into Brano values('Completamente', 160, 5);--10
--insert into Brano values('Felicità puttana', 170, 5);--11
--insert into Brano values('New York', 200, 5);--12
--insert into Brano values('Siamo tutti marziani', 190, 5);--13
--insert into Brano values('Hanno ucciso l uomo ragno', 184, 1);
--insert into Brano values('Con un deca', 160, 1);
--insert into Brano values('Sei un mito', 170, 1);
--insert into Brano values('Rotta x casa di dio', 200, 1);
--insert into Brano values('La regina del celebrità', 190, 1);
--insert into Brano values('Nord Sud Ovest Est', 190, 1);
--insert into Brano values('La dura legge del gol', 180, 1);
--insert into Brano values('Imagine', 184, 4);--8

--*******************Inserimento Album-Brani****************

--insert into Album_Brano values (1,13);--1
--insert into Album_Brano values (2,13);--2
--insert into Album_Brano values (3,13);--3
--insert into Album_Brano values (4,13);--4
--insert into Album_Brano values (5,13);--5
--insert into Album_Brano values (6,14);--6
--insert into Album_Brano values (7,14);--7
--insert into Album_Brano values(8,15);
--insert into Album_Brano values(8,16);
--insert into Album_Brano values(15,1);
--insert into Album_Brano values(14,1);
--insert into Album_Brano values(15,3);
--insert into Album_Brano values(14,3);
--insert into Album_Brano values(20,4);
--insert into Album_Brano values(16,4);
--insert into Album_Brano values(20,5);
--insert into Album_Brano values(16,5);
--insert into Album_Brano values(17,6);
--insert into Album_Brano values(21,6);
--insert into Album_Brano values(19,7);
--insert into Album_Brano values(18,7);
--insert into Album_Brano values(15,8);
--insert into Album_Brano values(14,8);
--insert into Album_Brano values(16,8);
--insert into Album_Brano values(20,8);
--insert into Album_Brano values(17,8);
--insert into Album_Brano values(18,8);
--insert into Album_Brano values(21,8);
--insert into Album_Brano values(15,9);
--insert into Album_Brano values(14,9);
--insert into Album_Brano values(16,9);
--insert into Album_Brano values(20,9);
--insert into Album_Brano values(17,9);
--insert into Album_Brano values(18,9);
--insert into Album_Brano values(21,9);



--***********************************************************************

--Query

--1) Scrivere una query che restituisca i titoli degli album degli "883" in ordine alfabetico

select a.Titolo as 'Album', a.Supporto
from Band b join Album a on b.Id_Band=a.Id_Band
            and b.Id_Band=1
order by a.Titolo;

--2) Selezionare tutti gli album della casa discografica "Sony Music" relativi all'anno 2020

select *
from Album
where CasaDiscografica='Sony Music' and AnnoDiUscita=2020;

--Scrivere una query che restituisca tutti i titoli delle canzoni dei "Maneskin" appartenenti ad 
--album pubblicati prima del 2019

select b.Titolo as 'Brano', Band.Nome as 'Band', a.Titolo as 'Album', a.AnnoDiUscita as 'Anno pubblicazione'
from Brano b join Album_Brano ab on b.Id_Brano=ab.Id_Brano
             join Album a on a.Id_Album=ab.Id_Album
			 join Band on Band.Id_Band=a.Id_Band
			 and Band.Nome='Maneskin' and a.AnnoDiUscita<2019

--4) Individuare tutti gli album in cui è contenuta la canzone "Imagine"
			 
select b.Titolo as 'Brano', a.Titolo as 'Album'
from Brano b join Album_Brano ab on b.Id_Brano=ab.Id_Brano
             join Album a on a.Id_Album=ab.Id_Album
			 and b.Titolo='Imagine'

--5)Restituire il numero totale di canzoni eseguite dalla band the Giornalisti

select band.Nome as 'Band', count(Id_Brano) as 'Numero brani' 
from Band join Brano b on Band.Id_Band=b.Id_Band 
where Band.Nome='The Giornalisti'
group by band.Nome

--6) Contare per ogni album, la "durata totale" cioè la somma dei secondi dei suoi brani

select a.Titolo as 'Album', sum(b.Durata) as 'Durata totale'
from Brano b join Album_Brano ab on b.Id_Brano=ab.Id_Brano
             join Album a on a.Id_Album=ab.Id_Album			  
group by a.Titolo

--7) Mostrare i brani distinti degli 883 che durano più di 180 s

select distinct band.Nome as 'Band', b.Titolo as 'Brano', b.Durata as 'Durata' 
from Band join Brano b on Band.Id_Band=b.Id_Band 
       and b.Durata>180 and Band.Id_Band=1


--8) Mostrare tutte le band il cui nome inizia per "M" e finisce per "N"

select *
from Band
where Band.Nome like 'M%' and Band.Nome like '%n' 

--9)Mostrare il titolo dell'album e di fianco un'etichetta che stabilisce che si tratta di un album:
--Anno di uscita < 1980 : 'Very Old'; --Anno di uscita = 2021 : 'New Entry';
--2010 < Anno di uscita < 2020 : 'Recente'; --Altrimenti : 'Old'.

SELECT a.Titolo as 'Album', 
CASE
    WHEN a.AnnoDiUscita < 1980 THEN 'Very Old'
    WHEN a.AnnoDiUscita = 2021 THEN 'New Entry'
	when a.AnnoDiUscita between 2010 and 2020 then 'Recente'
    ELSE 'Old'
END AS 'Etichetta'
FROM Album a;

--10) Mostrare i brani non contenuti in nessun album

select *
from Brano b
where b.Titolo not in (select b.Titolo 
from Brano b join Album_Brano ab on b.Id_Brano=ab.Id_Brano
             join Album a on a.Id_Album=ab.Id_Album)








