create table toiduaine(
    toiduaine_id int primary key AUTO_INCREMENT,
    toiduaine_nimi varchar(100));
    
create table yhik(
    yhik_id int primary key AUTO_INCREMENT,
    yhik_nimi varchar(100));
    
create table koostis(
    koostis_id int primary key AUTO_INCREMENT,
    kogus int,
    retsept_retsept_id int,
    toiduaine_id int,
    yhik_id int,
    FOREIGN key (toiduaine_id) references toiduaine(toiduaine_id),
    foreign key (yhik_id) references yhik(yhik_id)
    );

create table koostis(
    koostis_id int primary key AUTO_INCREMENT,
    kogus int,
    retsept_retsept_id int,
    toiduaine_id int,
    yhik_id int,
    FOREIGN key (toiduaine_id) references toiduaine(toiduaine_id),
    foreign key (yhik_id) references yhik(yhik_id)
    );
    
create table kategooria(
    kategooria_id int primary key AUTO_INCREMENT,
    kategooria_nimi varchar(50));
create table retsept(
    retsept_id int primary key AUTO_INCREMENT,
    retsepti_nimi varchar(100),
    kirjeldus varchar(200),
    juhend text,
    sisestatud_kp date,
    kasutaja_id int,
    kategooria_id int,
    foreign key (kasutaja_id) references kasutaja(kasutaja_id),
    foreign key (retsept_id) references toiduaine(toiduaine_id));

alter table koostis
add foreign key (retsept_retsept_id) references retsept(retsept_id);

create table tehtud(
    tehtud_id int primary key AUTO_INCREMENT,
    tehtud_kp date,
    retsept_id int,
    foreign key (retsept_id) references retsept(retsept_id));


    
