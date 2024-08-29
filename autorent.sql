create database autorentGerega
use autorentGerega;

CREATE TABLE auto(
autoID int not null Primary key IDENTITY(1,1),
regNumber char(6) UNIQUE,
markID int,
varv varchar(20),
v_aasta int,
kaigukastID int,
km decimal(6,2)
);

insert into auto (regNumber, markID, varv, v_aasta, kaigukastID, km)
values ('123abc', 1,'punane', 1998, 1, 14474);

select * from auto

CREATE TABLE mark(
markID int not null Primary key IDENTITY(1,1),
autoMark varchar(30) UNIQUE
);

INSERT INTO mark(autoMark)
VALUES ('Ziguli');
INSERT INTO mark(autoMark)
VALUES ('Lambordzini');
INSERT INTO mark(autoMark)
VALUES ('BMW');
SELECT * FROM mark;

CREATE TABLE kaigukast(
kaigukastID int not null Primary key IDENTITY(1,1),
kaigukast varchar(30) UNIQUE
);

INSERT INTO kaigukast(kaigukast)
VALUES ('Automaat');
INSERT INTO kaigukast(kaigukast)
VALUES ('Manual');
SELECT * FROM kaigukast;

ALTER TABLE auto
ADD FOREIGN KEY (markID) REFERENCES mark(markID);
ALTER TABLE auto
ADD FOREIGN KEY (kaigukastID) REFERENCES kaigukast(kaigukastID);

create table klient(
klientID int not null Primary key IDENTITY(1,1),
kliendiNimi varchar(50),
telefon varchar (20),
aadress varchar (50),
soiduKogemus varchar(30)
);

create table amet(
ametiID int not null Primary key IDENTITY(1,1),
ametiNimi varchar (50),
);

create table tootaja(
tootajaID int not null Primary key IDENTITY(1,1),
tootajaNimi varchar (50),
ametiID int,
foreign key (ametiID) references amet(ametiID)
);

create table rendileping(
lepingID int not null Primary key IDENTITY(1,1),
rerndiAlgus date,
rendiLoop date,
klientID int,
regNumber varchar (6),
rendiKestvus int,
hindKokku decimal(5,2),
tootajaID int,
foreign key (klientID) references klient(klientID),
foreign key (tootajaID) references tootaja(tootajaID)
);