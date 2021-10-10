CREATE DATABASE RumahSakit
USE RumahSakit

create table Dokter(
	Id_dokter		varchar(15),
	FNama	varchar(25),
	LNama varchar (25),
	Jenis_kelamin		varchar(1),
	Spesialisasi varchar(10),
	Gaji int,
	Alamat varchar(50),
	No_telp varchar(13)
	primary key (Id_dokter)
);

create table Pasien (
	Id_pasien		varchar(15),
	FNama			varchar(25),
	LNama			varchar (25),
	Jenis_kelamin	varchar(1),
	Jenis_penyakit	varchar(30),
	Usia			varchar(2),
	Tanggal_datang	Date,
	Alamat			varchar(50),
	No_telp			varchar(13),
	Id_dokter		varchar(15),
	Id_kamar		varchar(12),
	Id_petugas		varchar (49),
	primary key (Id_dokter)
);

create table Apoteker (
	Id_apoteker		varchar(4)
);

create table Wali (
	Nama_wali		varchar(25),
	Jenis_kelamin	varchar(1),
	No_telp			varchar(13),
	Id_pasien		varchar(15),
	foreign key(Id_pasien) references Pasien
);

create table Obat (
	Id_obat		varchar(5),
	Nama_obat	varchar(15),
	Dosis_obat	varchar(6),
	Harga_obat	int,
	Id_pasien	varchar(15),
	Id_apoteker varchar(4),
	foreign key(Id_pasien) references Pasien
	/*foreign key(Id_apoteker) references Apoteker*/
);

/*Memasukkan data Pasien*/
insert into Pasien values ('2111','Siti','Madani','P', 'Tambal Gigi','60', '2018-09-23','Jalan Merdeka no 1',' ','1112','6111 ','5111');
insert into Pasien values ('2112','Joko','Purnomo','L', 'Infeksi Mata','30',' 2018-09-23','Jalan Atas bawah no 8',' ','1112','6111 ','5111');
insert into Pasien values ('2113','Dyah','Ayu','P','Aritmia' ,'18', '2018-09-24','Jalan Maju tak gentar no 2',' ','1117','6111 ','5111');
insert into Pasien values ('2114','Rudi','Hendrawan','L', 'Infeksi Gigi','40', '2018-09-24','Jalan Soekarno no 5',' ','1120','6112 ','5112');
insert into Pasien values ('2115','Siti','Amina','P','Pneumonia' ,'28', '2018-09-24','Jalan Ijen no 18',' ','1111',' 6112','5112');
insert into Pasien values ('2116','Tri','Astuti','P','USG Kehamilan' ,'70','2018-09-24','Jalan Merdeka no 3',' ','1116','6113 ','5113');
insert into Pasien values ('2117','Sri','Mulyani','P','USG Kehamilan' ,'65', '2018-09-25','Jalan Kayu manis no 29',' ','1116',' 6113','5113');
insert into Pasien values ('2118','Agung','Hartanto','L','Demam' ,'20', '2018-09-25','Jalan Runtuh no 13',' ','1124','6114 ','5113');
insert into Pasien values ('2119','Kurniawan','Adi','L','Infeksi Paru-Paru' ,'25', '2018-09-25','Jalan Sumbersari no 29',' ','1124','6114 ','5114');
insert into Pasien values ('2110','Siti','Azizah','P', 'Infeksi Mata','33', '2018-09-26','Jalan manis no 32',' ','1111',' 6114','5114');
insert into Pasien values ('2121','Sukma','Arum','P','Infeksi Jantung' ,'15', '2018-09-25','Jalan Putar bali no 56',' ','1123','6115 ','5114');
insert into Pasien values ('2122','Rizky','Bayu','L','Aritmia' ,'10', '2018-09-23','Jalan Borobudur no 28',' ','1127',' 6115','5114');
insert into Pasien values ('2123','Hafiz','Budi','L','Infeksi Mata' ,'8', '2018-09-23','Jalan Panjaitan no 13',' ','1127',' 6116','5115');
insert into Pasien values ('2124','Raka','Aji','L','Kardiomiopati' ,'56', '2018-09-24','Jalan Panjaitan no 2',' ','1112','6117 ','5116');
insert into Pasien values ('2125','Budi','Aji','L','Labioplasty' ,'3', '2018-09-25','Jalan Ijen no 2',' ','1115',' 6118','5116');
insert into Pasien values ('2126','Rini','Wulandari','P', 'Infeksi Mata','9', '2018-09-26','Jalan Kelici no 9','6119 ','1115',' ','5111');
insert into Pasien values ('2127','Agung','Santoso','P','Infeksi Gigi' ,'67','2018-09-29','Jalan Borobudur no 6','6120 ','1111',' ','5113');
insert into Pasien values ('2128','Riri','Riana','P','Pneumonia' ,'7','2018-09-29','Jalan Soekarnono 98',' ','1124','6121 ','5115');
insert into Pasien values ('2129','Melati','Sukmanisa','P', 'Labioplasty','3','2018-09-29','Jalan Pattimura no 91',' ','1124',' 6121','5116');
insert into Pasien values ('2120','Kurniawan','Panji','L','Pneumonia' ,'62','2018-09-27','Jalan Agus salim no 3',' ','1115',' 6120','5111');

/*Memasukkan data Dokter*/
insert into Dokter values ('1111','Nisrina','Dewi','P','Kandungan',6000000,'Jalan Kayu manis no 28',' ');
insert into Dokter values ('1112','Budi','Angga','L','Jantung',8000000,'Jalan Runtuh no 19',' ');
insert into Dokter values ('1113','Lili','Rahmasari','P','Kandungan',6000000,'Jalan Putar Bali no 8',' ');
insert into Dokter values ('1114','Anita','Eka','P','Anak',5000000,'Jalan Laut no 7',' ');
insert into Dokter values ('1115','Agus','Setiawan','L','Anak',5000000,'Jalan Sumbersari no 2',' ');
insert into Dokter values ('1116','Siti','Nurhaliza','P','Paru',4500000,'Jalan manis no 28',' ');
insert into Dokter values ('1117','Bagus','Wicaksono','L','Gigi',7000000,'Jalan kelinci no 1',' ');
insert into Dokter values ('1118','Firman','Umaira','L','Anak',6500000,'Jalan Borobudur no 9',' ');
insert into Dokter values ('1119','Marissa','Dewi','P','Gigi',7350000,'Jalan Kayu pahit no 28',' ');
insert into Dokter values ('1120','Fatimah','Azzahra','P','Jantung',5570000,'Jalan Pattimura no 5',' ');
insert into Dokter values ('1121','Rudi','Setiawan','L','Bedah',5500000,'Jalan Agus salim no 8',' ');
insert into Dokter values ('1122','Nani','Putri','P','Bedah',7000000,'Jalan Letjen Sutoyo no 88',' ');
insert into Dokter values ('1123','Kurnia','Sari','P','Mata',6000000,'Jalan Panjaitan no 75',' ');
insert into Dokter values ('1124','Joseph','Hartono','L','Mata',9000000,'Jalan Cemara no 32',' ');
insert into Dokter values ('1125','Maria','Angela','P','Kandungan',8500000,'Jalan anggur no 28',' ');
insert into Dokter values ('1126','Ringgo','Rahma','L','Gigi',900000,'Jalan Apel no 24',' ');
insert into Dokter values ('1127','Budi','Doremi','P','Anak',7000000,'Jalan Melon no 57',' ');
insert into Dokter values ('1128','Anita','Rahmawati','P','Jantung',15000000,'Jalan Kayu putih no 28',' ');
insert into Dokter values ('1129','Nisrina','Dewi','P','Kandungan',800000,'Jalan Mangga no 18',' ');
insert into Dokter values ('1130','Nisrina','Dewi','P','Kandungan',9500000,'Jalan Anggrek no 15',' ');

/*Memasukkan data Wali*/
insert into Wali values ('Tuti Rahayu', 'P', '087453213000', '2111');
insert into Wali values ('Nanik Purnaningsih', 'P', '082345789000', '2112');
insert into Wali values ('Agus Rahmat', 'L', '081234567000', '2113');
insert into Wali values ('Joko Dwibowo', 'L', '085675432000', '2114');
insert into Wali values ('Setyo Bagus', 'L', '089087654000', '2115');
insert into Wali values ('Sri Ningsih', 'P', '081124532000', '2116');
insert into Wali values ('Mujiatno', 'L', '089880998000', '2117');
insert into Wali values ('Sartika Dewi', 'P', '081450986000', '2118');
insert into Wali values ('Mulyana Nimas Seranti', 'P', '087652110000', '2119');
insert into Wali values ('Ning Sekar Sari', 'P', '087876993000', '2110');
insert into Wali values ('Guguh Agus Handi', 'L', '083741445000', '2121');
insert into Wali values ('Marga Lukman', 'L', '081567893000', '2122');
insert into Wali values ('Agus Baihaqi', 'L', '089436776000', '2123');
insert into Wali values ('Usriwatun', 'P', '082232641000', '2124');
insert into Wali values ('Sriatun', 'P', '081235407000', '2125');
insert into Wali values ('Arik Handoko', 'L', '085114876000', '2126');
insert into Wali values ('Lukman Putra', 'L', '082199876000', '2127');
insert into Wali values ('Sriajeng Rahayu', 'P', '085498123000', '2128');
insert into Wali values ('Martaningsih Swanti', 'P', '087765412000', '2129');
insert into Wali values ('Budi Dharmawan', 'L', '083200456000', '2120');

/*Memasukkan data Obat*/
insert into Obat values ('80010', 'Atropin', 'Sedang', 20000, '2110');
insert into Obat values ('80011', 'Moxifloxacin', 'Tinggi', 25000, '2111');
insert into Obat values ('80110', 'Acetaminophen', 'Sedang', 15000, '2112');
insert into Obat values ('80210', 'Adenosine', 'Tinggi', 30000, '2113');
insert into Obat values ('80211', 'Digoxin', 'Tinggi', 40000, '2114');
insert into Obat values ('81011', 'Erythromycin', 'Sedang', 20000, '2115');
insert into Obat values ('80310', 'Penicillin VK', 'Sedang', 35000, '2116');
insert into Obat values ('80311', 'Doxycycline', 'Sedang', 24000, '2117');
insert into Obat values ('80410', 'Ibuprofen', 'Sedang', 10000, '2118');
insert into Obat values ('80411', 'Zanamivir', 'Tinggi', 40000, '2119');
insert into Obat values ('80412', 'Amoksisilin', 'Sedang', 37000, '2120');
insert into Obat values ('80510', 'Folavit', 'Rendah', 15000, '2121');
insert into Obat values ('80511', 'Ferofort', 'Rendah', 21000, '2122');
insert into Obat values ('80610', 'Paracetamol', 'Rendah', 14000, '2123');
insert into Obat values ('80710', 'Amboxol', 'Sedang', 28000, '2124');
insert into Obat values ('80711', 'Cefixim', 'Tinggi', 39000, '2125');
insert into Obat values ('80810', 'Aminoglikosida', 'Tinggi', 40000, '2126');
insert into Obat values ('80910', 'Sotalol', 'Sedang', 26000, '2127');
insert into Obat values ('80911', 'Verapamil', 'Tinggi', 32000, '2128');
insert into Obat values ('81010', 'Clarithromycin', 'Sedang', 26000, '2129');