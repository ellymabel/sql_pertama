create database kampus3

create table Mahasiswa
(
	Nama varchar (30) not null,
	NIM char (10) not null,
	jurusan varchar (20) not null,
	semester numeric (1) not null,
	primary key (NIM)
)

create table perpustakan
(
	judul_buku varchar (30) not null, 
	penulis varchar (30)not null,
	Tgl_pinjam date not null,
	Tgl_kembali date not null,
	NIM char (10) not null,
	primary key (Judul_buku),
	foreign key (NIM) references mahasiswa (NIM) on update cascade on delete cascade
)

insert into Mahasiswa values
('dodi', '0123456789','ekonomi','7')
insert into Mahasiswa values
('fatma','1234567890','bisnis','5')


insert into perpustakan values
('cinta segitiga', 'riko', '2024-09-03', '2024-09-15','0123456789')
insert into perpustakan values
('perhatian', 'rina', '2024-09-01', '2024-09-20','1234567890')



select * from Mahasiswa

select * from perpustakan

select*from Mahasiswa
where jurusan = 'bisnis'
