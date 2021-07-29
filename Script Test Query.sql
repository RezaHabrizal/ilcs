create table siswa (
    nik varchar(10) not null,
    nama varchar(50) not null,
    kelas varchar(10) not null,
    kelamin char(1) not null
);

insert into siswa values('N01', 'Herman', 'VI', 'L');
insert into siswa values('N02', 'Abraham', 'VI', 'L');
insert into siswa values('N03', 'Heri', 'VI', 'L');
insert into siswa values('N04', 'Haya', 'VI', 'P');
insert into siswa values('N05', 'Alifa', 'VI', 'P');

create table pelajaran (
    id_pelajaran int not null,
    nama_pelajaran varchar(50) not null
);

insert into pelajaran values(1, 'Matematika');
insert into pelajaran values(2, 'Bahasa Indonesia');
insert into pelajaran values(3, 'Bahasa Inggris');
insert into pelajaran values(4, 'Pendidikan Agama');

create table nilai (
    id_nilai int not null,
    nik	varchar(10) not null,
    kelas varchar(10) not null,
    id_pelajaran int not null,
    semester int null,
    type_nilai varchar(10) not null,
    nilai int not null
);

insert into nilai values('1', 'N01', 'VI', 1, 1, 'UTS', 90);
insert into nilai values('2', 'N02', 'VI', 1, 1, 'UTS', 75);
insert into nilai values('3', 'N04', 'VI', 1, 1, 'UTS', 45);
insert into nilai values('4', 'N03', 'VI', 1, 1, 'UTS', 80);
insert into nilai values('5', 'N05', 'VI', 1, 1, 'UTS', 60);
insert into nilai values('6', 'N01', 'VI', 2, 1, 'UTS', 85);
insert into nilai values('7', 'N02', 'VI', 2, 1, 'UTS', 56);
insert into nilai values('8', 'N04', 'VI', 2, 1, 'UTS', 87);
insert into nilai values('9', 'N03', 'VI', 2, 1, 'UTS', 66);
insert into nilai values('10', 'N05', 'VI', 2, 1, 'UTS', 95);
insert into nilai values('11', 'N01', 'VI', 3, 1, 'UTS', 78);
insert into nilai values('12', 'N02', 'VI', 3, 1, 'UTS', 87);
insert into nilai values('13', 'N04', 'VI', 3, 1, 'UTS', 88);
insert into nilai values('14', 'N03', 'VI', 3, 1, 'UTS', 49);
insert into nilai values('15', 'N05', 'VI', 3, 1, 'UTS', 67);
insert into nilai values('16', 'N01', 'VI', 4, 1, 'UTS', 75);
insert into nilai values('17', 'N02', 'VI', 4, 1, 'UTS', 85);
insert into nilai values('18', 'N04', 'VI', 4, 1, 'UTS', 73);
insert into nilai values('19', 'N03', 'VI', 4, 1, 'UTS', 69);
insert into nilai values('20', 'N05', 'VI', 4, 1, 'UTS', 81);


