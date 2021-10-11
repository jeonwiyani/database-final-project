CREATE DATABASE RumahSakit
USE RumahSakit

CREATE TABLE Dokter(
Id_dokter varchar(4) PRIMARY KEY,
FNama varchar(10),
LNama varchar (10),
Jenis_kelamin varchar (1),
Spesialisasi varchar (10),
Gaji int,
Alamat varchar (50),
No_telepon varchar (13)
);

CREATE TABLE Petugas(
Id_petugas varchar (4) PRIMARY KEY,
FNama	varchar(25),
LNama varchar (25),
Jenis_kelamin		varchar(1),
Jam_kerja Time,
Gaji int,
Alamat varchar(50),
No_telp varchar(13)
);

CREATE TABLE Pasien(
Id_pasien varchar(4) PRIMARY KEY,
FNama varchar(10),
LNama varchar (10),
Jenis_kelamin varchar (1),
Nama_penyakit varchar (20),
Usia varchar (2),
Tanggal_datang date,
Alamat varchar (50),
No_telepon varchar (13),
Id_dokter varchar(4),
Id_kamar varchar(4),
Id_petugas varchar(4),
FOREIGN KEY (Id_dokter) REFERENCES Dokter,
FOREIGN KEY (Id_kamar) REFERENCES Kamar,
FOREIGN KEY (Id_petugas) REFERENCES Petugas)
);

CREATE TABLE Apoteker(
Id_apoteker varchar(4) PRIMARY KEY,
FNama varchar(10),
LNama varchar (10),
Jenis_kelamin varchar (1),
Jam_kerja time,
Gaji int,
Alamat varchar (50),
No_telepon varchar (13)
);

CREATE TABLE Perawat(
Id_perawat varchar(4) PRIMARY KEY,
FNama	varchar(25),
LNama varchar (25),
Jenis_kelamin		varchar(1),
Jam_kerja Time,
Gaji int,
Alamat varchar(50),
No_telp varchar(13)
);

CREATE TABLE Wali (
Nama_wali varchar(25),
Jenis_kelamin varchar(1),
No_telp varchar(13),
Id_pasien varchar(4),
FOREIGN KEY (Id_pasien) REFERENCES Pasien 
);

CREATE TABLE Obat (
Id_obat	varchar(5) PRIMARY KEY,
Nama_obat varchar(15),
Dosis_obat	varchar(6),
Harga_obat	int,
Id_pasien	varchar(4),
Id_apoteker varchar(4),
foreign key(Id_pasien) references Pasien,
foreign key(Id_apoteker) references Apoteker
);


CREATE TABLE Kamar(
Id_kamar varchar (4) PRIMARY KEY,
Nama_kamar varchar (10),
Tipe_kamar varchar (10),
Harga_kamar int)
);

CREATE TABLE Penyakit(
Id_penyakit varchar (3) PRIMARY KEY,
Nama_penyakit varchar (20),
Id_pasien varchar (4),
FOREIGN KEY (Id_pasien) REFERENCES Pasien
);

CREATE TABLE Mengobati(
Id_Pasien varchar (4) PRIMARY KEY,
Id_dokter varchar (4),
FOREIGN KEY (Id_pasien) REFERENCES Pasien,
FOREIGN KEY (Id_dokter) REFERENCES Dokter
);

CREATE TABLE Melayani(
Id_pasien varchar (4) PRIMARY KEY,
Id_perawat varchar (4),
FOREIGN KEY (Id_pasien) REFERENCES Pasien,
FOREIGN KEY (Id_perawat) REFERENCES Perawat
);

CREATE TABLE Resep(
Id_resep varchar (3) PRIMARY KEY,
tanggal date
);

CREATE TABLE Prescription(
Id_pasien varchar (4),
Id_dokter varchar (4),
Id_resep varchar (3),
FOREIGN KEY (Id_pasien) REFERENCES Pasien,
FOREIGN KEY (Id_dokter) REFERENCES Dokter,
FOREIGN KEY (Id_resep) REFERENCES Resep
);

CREATE TABLE Dokter_telepon(
ID varchar (4) PRIMARY KEY,
No_telepon varchar (13),
FOREIGN KEY (ID) REFERENCES Dokter
);

CREATE TABLE Pasien_telepon(
ID varchar (4),
No_telepon varchar (13),
FOREIGN KEY (ID) REFERENCES Pasien
);

CREATE TABLE Apoteker_telepon(
ID varchar (4),
No_telepon varchar (13),
FOREIGN KEY (ID) REFERENCES Apoteker
);

CREATE TABLE Perawat_telepon(
ID varchar (4),
No_telepon varchar (13),
FOREIGN KEY (ID) REFERENCES Perawat
);

CREATE TABLE Petugas_telepon(
ID varchar (4),
No_telepon varchar (13),
FOREIGN KEY (ID) REFERENCES Petugas
);

CREATE TABLE Tagihan(
Id_tagihan varchar (4) PRIMARY KEY,
Id_pasien varchar (4),
Harga_total int,
FOREIGN KEY (Id_pasien) REFERENCES Pasien
);

CREATE TABLE DaftarObat(
Id_dafObat varchar (2) PRIMARY KEY,
Id_resep varchar (3),
Id_obat varchar (5),
FOREIGN KEY (Id_resep) REFERENCES Resep,
FOREIGN KEY (Id_obat) REFERENCES Obat
);

CREATE TABLE Payment (
Id_tagihan varchar (4),
Id_pasien varchar (4)
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

insert into Petugas values('5111','Rudi','Agung','L','09:00:00',3500000,'Jalan Merbabu no 19','081201898021');
insert into Petugas values('5112','Rianti','Eva','P','09:00:00',3500000,'Jalan Pattimura no 9','087880977027');
insert into Petugas values('5113','Angga','Agung','L','07:00:00',3500000,'Jalan Merdeka no 7','085757921021');
insert into Petugas values('5114','Rudi','Purnama','L','07:00:00',3500000,'Jalan Kenanga no 8','081201901020');
insert into Petugas values('5115','Sri','Astuti','P','10:00:00',3500000,'Jalan Panjaitan no 29','081211114779');
insert into Petugas values('5116','Nia','Ajeng','P','10:00:00',3500000,'Jalan Sumbersari no 34','081330927390');
insert into Petugas values('5117','Oktavia','Putri','P','10:00:00',3500000,'Jalan Sumbersari no 56','087858566023');
insert into Petugas values('5118','Dewi','Thustha','P','09:00:00',3500000,'Jalan Soekarno no 16','081202001109');
insert into Petugas values('5119','Cantika','Ratih','P','08:00:00',3500000,'Jalan Maju mundur no 19','087881188078');
insert into Petugas values('5120','Rianti','Nurul','P','08:00:00',3500000,'Jalan Putar bali no 16','087811356234');
insert into Petugas values('5121','Ajeng','Permatasari','P','07:00:00',3500000,'Jalan Merbabu no 3','081201900021');
insert into Petugas values('5122','Ambar','Sekarsari','P','10:00:00',3500000,'Jalan Anggrek no 1','087809067027');
insert into Petugas values('5123','Zahrotin','Hapsari','P','09:00:00',3500000,'Jalan Melati no 20','085661188021');
insert into Petugas values('5124','Herpanindra','Fadilah','P','09:00:00',3500000,'Jalan Agus Salim no 19','081227712112');
insert into Petugas values('5125','Ives','Sukmanisa','P','08:00:00',3500000,'Jalan Maju tak gentar no 19','081233112845');
insert into Petugas values('5126','Budi','Perkasa','L','07:00:00',3500000,'Jalan Sumbersari no 17','081138115390');
insert into Petugas values('5127','Ayub','Puji','L','09:00:00',3500000,'Jalan Merbabu no 9','087717271123');
insert into Petugas values('5128','Bagus','Rahmat','L','10:00:00',3500000,'Jalan Panjaitan no 69','082665438709');
insert into Petugas values('5129','Sekar','Arum','P','08:00:00',3500000,'Jalan Melati no 15','082229837890');
insert into Petugas values('5130','Rudi','Agung','L','09:00:00',3500000,'Jalan Borobudur no 34','089999223434');

insert into Kamar values('6111','Anggrek','Kelas 1',650000);
insert into Kamar values('6211','Anggrek','Kelas 2',580000);
insert into Kamar values('6311','Kenanga','VIP ',800000);
insert into Kamar values('6312','Kenanga','VIP ',800000);
insert into Kamar values('6411','Tulip','Executive',1000000);
insert into Kamar values('6511','Anggrek','Suite',1200000)
insert into Kamar values('6117','Melati','Kelas 1',650000);
insert into Kamar values('6218','Melati','Kelas 2',350000);
insert into Kamar values('6319','Kenanga','VIP ',800000);
insert into Kamar values('6120','Melati','Kelas 1',650000);
insert into Kamar values('6421','Tulip','Executive',1000000);
insert into Kamar values('6222','Anggrek','Kelas 2',580000);
insert into Kamar values('6523','Teratai','Suite',1000000);
insert into Kamar values('6124','Melati','Kelas 1',650000);
insert into Kamar values('6225','Anggrek','Kelas 2',650000);
insert into Kamar values('6326','Kenanga','VIP ',800000);
insert into Kamar values('6527','Teratai','Suite',1200000);	
insert into Kamar values('6128','Anggrek','Kelas 1 ',650000);
insert into Kamar values('6129','Anggrek','Kelas 1',650000);
insert into Kamar values('6230','Melati','Kelas 1 ',650000);

insert into Apoteker values ('3111','Sekar','Larasati','P','08:00:00',300000,'Jalan Kamboja no 28','081212221021');
insert into Apoteker values ('3112','Kinanti','Sari','P','08:00:00',400000,'Jalan Kenanga no 18','087868721027');
insert into Apoteker values ('3113','Thustha','Dewi','P','12:00:00',400000,'Jalan Surabaya manis no 30','085606921021');
insert into Apoteker values ('3114','Rangga','Purnama','L','12:00:00',400000,'Jalan Panjaitan no 28','081272801020');
insert into Apoteker values ('3115','Nugraha','Adi','L','12:00:00',350000,'Jalan Sumbersari no 48','081353491779');
insert into Apoteker values ('3116','Eva','Sari','P','08:00:00',380000,'Jalan Merdeka no 1','081332256390');
insert into Apoteker values ('3117','Panji','Putra','L','12:00:00',300000,'Jalan Anggur no 2','087848729023');
insert into Apoteker values ('3118','Wisnu','Agung','L','18:00:00',430000,'Jalan Soekarno no 4','081289986109');
insert into Apoteker values ('3119','Agga','Rida','L','18:00:00',350000,'Jalan Panjaitan no 7','087898087078');
insert into Apoteker values ('3120','Nisrina','Sari','P','18:00:00',450000,'Jalan Merdeka no 9','087772771234');
insert into Apoteker values ('3121','Septi','Putri','P','18:00:00',380000,'Jalan Agus salim no 3','081221181021');
insert into Apoteker values ('3122','Nia','Larasati','P','08:00:00',450000,'Jalan Kayu manis no 1','087808088027');
insert into Apoteker values ('3123','Puji','Astuti','P','12:00:00',390000,'Jalan  manis no 28','085666621021');
insert into Apoteker values ('3124','Ria','Oktaviana','P','12:00:00',400000,'Jalan Maju tak gentar no 217','081277211200');
insert into Apoteker values ('3125','Pandu','Aji','L','18:00:00',400000,'Jalan Atas bawah no 16','081339095845');
insert into Apoteker values ('3126','Nurul','Dewi','P','18:00:00',320000,'Jalan Ijen no 12','081363626390');
insert into Apoteker values ('3127','Ambar','Larasati','P','08:00:00',300000,'Jalan Ijen no 13','087899321123');
insert into Apoteker values ('3128','Veny','Dewi','P','12:00:00',300000,'Jalan Borobudur no 14','081288278709');
insert into Apoteker values ('3129','Herman','Dwi','L','12:00:00',350000,'Jalan Putar Bali no 15','087899837890');
insert into Apoteker values ('3130','Rindu','Aprilia','P','08:00:00',340000,'Jalan Runtuh no 15','085866123434');

insert into Perawat values ('4111','Sekar','Larasati','P','08:00:00',300000,'Jalan Merpati no 28','081300398021');
insert into Perawat values ('4112','Bagus','Wicaksono','L','08:00:00',400000,'Jalan Anggrek no 8','087757677027');
insert into Perawat values ('4113','Syahanita','Maulidia','P','15:00:00',400000,'Jalan Kamboja no 9','086768921021');
insert into Perawat values ('4114','Agus','Setiawan','L','15:00:00',350000,'Jalan Maju tak gentar no 34','081313101020');
insert into Perawat values ('4115','Budi','Angga','L','08:00:00',450000,'Jalan Kayu manis no 25','081255234779');
insert into Perawat values ('4116','Eka','Putri','P','08:00:00',400000,'Jalan Manis no 27','081292827390');
insert into Perawat values ('4117','Firman','Untina','L','15:00:00',300000,'Jalan Agus salim no 3','087711766023');
insert into Perawat values ('4118','Melati','Larasati','P','10:00:00',300000,'Jalan Panjaitan no 1','081361001109');
insert into Perawat values ('4119','Fanny','Novia','P','10:00:00',300000,'Jalan Panjaitan no 2','087789888078');
insert into Perawat values ('4110','Aulia','Anggita','P','08:00:00',350000,'Jalan Soekarno no 28','087868556234');
insert into Perawat values ('4121','Anggun','Mutia','P','15:00:00',400000,'Jalan Kamboja no 18','081313300021');
insert into Perawat values ('4122','Putra','Wahid','L','20:00:00',300000,'Jalan Sumbersari no 17','087577667027');
insert into Perawat values ('4123','Matrino','Stefanus','L','20:00:00',300000,'Jalan Borobudur no 28','085779988021');
insert into Perawat values ('4124','Alif','Santoso','L','08:00:00',350000,'Jalan Anggrek no 28','081331212112');
insert into Perawat values ('4125','Agung','Stefanus','L','20:00:00',350000,'Jalan Putar bali no 56','081262722845');
insert into Perawat values ('4126','Sekar','Indriati','P','08:00:00',350000,'Jalan Maju tak gentar no 13','081234545390');
insert into Perawat values ('4127','Mawar','Melati','P','15:00:00',400000,'Jalan Kenanga no 33','087888821123');
insert into Perawat values ('4128','Anggun','Sasmi','P','08:00:00',350000,'Jalan Merbabu no 12','082122278709');
insert into Perawat values ('4129','Fitri','Larasati','P','20:00:00',400000,'Jalan Pattimura no 43','082199837890');
insert into Perawat values ('4120','Fitri','Kurniawati','P','15:00:00',400000,'Jalan Pattimura no 24','082111223434');

insert into Penyakit values ('100', 'Infeksi Mata', '2112');
insert into Penyakit values ('101', 'Tambal Gigi', '2111');
insert into Penyakit values ('102', 'Infeksi Gigi', '2114');
insert into Penyakit values ('103', 'Aritmia', '2113');
insert into Penyakit values ('104', 'Aritmia', '2122');
insert into Penyakit values ('105', 'Infeksi Jantung', '2121');
insert into Penyakit values ('106', 'Kardiomiopati', '2124');
insert into Penyakit values ('107', 'Infeksi Mata', '2123');
insert into Penyakit values ('108', 'Penumonia', '2115');
insert into Penyakit values ('109', 'Rontgen Kehamilan', '2117');
insert into Penyakit values ('110', 'Rontgen Kehamilan', '2116');
insert into Penyakit values ('111', 'Demam', '2118');
insert into Penyakit values ('112', 'Labioplasty', '2125');
insert into Penyakit values ('113', 'Infeksi Gigi', '2127');
insert into Penyakit values ('114', 'Infeksi Mata', '2126');
insert into Penyakit values ('115', 'Penumonia', '2128');
insert into Penyakit values ('116', 'Infeksi Paru-paru', '2119');
insert into Penyakit values ('117', 'Labioplasty', '2129');
insert into Penyakit values ('118', 'Infeksi Mata', '2110');
insert into Penyakit values ('119', 'Penumonia', '2120');

insert into Mengobati values ('2111','1112');
insert into Mengobati values ('2112','1112');
insert into Mengobati values ('2113','1117');
insert into Mengobati values ('2114','1120');
insert into Mengobati values ('2115','1111');
insert into Mengobati values ('2116','1116');
insert into Mengobati values ('2117','1116');
insert into Mengobati values ('2118','1124');
insert into Mengobati values ('2119','1124');
insert into Mengobati values ('2110','1111');
insert into Mengobati values ('2121','1123');
insert into Mengobati values ('2122','1127');
insert into Mengobati values ('2123','1127');
insert into Mengobati values ('2124','1112');
insert into Mengobati values ('2125','1115');
insert into Mengobati values ('2126','1115');
insert into Mengobati values ('2127','1111');
insert into Mengobati values ('2128','1124');
insert into Mengobati values ('2129','1124');
insert into Mengobati values ('2120','1115');

insert into Melayani values ('2111','4112');
insert into Melayani values ('2112','4112');
insert into Melayani values ('2113','4117');
insert into Melayani values ('2114','4110');
insert into Melayani values ('2115','4111');
insert into Melayani values ('2116','4116');
insert into Melayani values ('2117','4116');
insert into Melayani values ('2118','4124');
insert into Melayani values ('2119','4124');
insert into Melayani values ('2110','4111');
insert into Melayani values ('2121','4123');
insert into Melayani values ('2122','4127');
insert into Melayani values ('2123','4127');
insert into Melayani values ('2124','4112');
insert into Melayani values ('2125','4115');
insert into Melayani values ('2126','4115');
insert into Melayani values ('2127','4111');
insert into Melayani values ('2128','4124');
insert into Melayani values ('2129','4124');
insert into Melayani values ('2120','4115');

insert into Resep values('801','2018-09-23');
insert into Resep values('802','2018-09-23');
insert into Resep values('803','2018-09-23');
insert into Resep values('804','2018-09-23');
insert into Resep values('805','2018-09-24');
insert into Resep values('806','2018-09-24');
insert into Resep values('807','2018-09-24');
insert into Resep values('808','2018-09-24');
insert into Resep values('809','2018-09-24');
insert into Resep values('810','2018-09-25');
insert into Resep values('811','2018-09-25');
insert into Resep values('812','2018-09-25');
insert into Resep values('813','2018-09-25');
insert into Resep values('814','2018-09-25');
insert into Resep values('815','2018-09-26');
insert into Resep values('816','2018-09-26');
insert into Resep values('817','2018-09-27');
insert into Resep values('818','2018-09-29');
insert into Resep values('819','2018-09-29');
insert into Resep values('820','2018-09-29');

insert into Prescription values ('2111','1112', '801');
insert into Prescription values ('2112','1112', '802');
insert into Prescription values ('2113','1117', '803');
insert into Prescription values ('2114','1111', '804');
insert into Prescription values ('2115','1111', '805');
insert into Prescription values ('2116','1116', '806');
insert into Prescription values ('2117','1116', '807');
insert into Prescription values ('2118','1124', '808');
insert into Prescription values ('2119','1124', '809');
insert into Prescription values ('2110','1111', '810');
insert into Prescription values ('2121','1123', '811');
insert into Prescription values ('2122','1127', '812');
insert into Prescription values ('2123','1127', '813');
insert into Prescription values ('2124','1112', '814');
insert into Prescription values ('2125','1115', '815');
insert into Prescription values ('2126','1115', '816');
insert into Prescription values ('2127','1111', '817');
insert into Prescription values ('2128','1124', '818');
insert into Prescription values ('2129','1124', '819');
insert into Prescription values ('2120','1115', '820');

insert into Dokter_telepon values('1111', '081358321021');
insert into Dokter_telepon values('1112', '087758321027');
insert into Dokter_telepon values('1113', '085898321021');
insert into Dokter_telepon values('1114', '081358601020');
insert into Dokter_telepon values('1115', '081210691779');
insert into Dokter_telepon values('1116', '081277456390');
insert into Dokter_telepon values('1117', '087812129023');
insert into Dokter_telepon values('1118', '081378786109');
insert into Dokter_telepon values('1119', '087712129078');
insert into Dokter_telepon values('1110', '087890121234');
insert into Dokter_telepon values('1121', '081323581021');
insert into Dokter_telepon values('1122', '087790991027');
insert into Dokter_telepon values('1123', '085812121021');
insert into Dokter_telepon values('1124', '081358602020');
insert into Dokter_telepon values('1125', '081210695845');
insert into Dokter_telepon values('1126', '081278326390');
insert into Dokter_telepon values('1127', '087899829023');
insert into Dokter_telepon values('1128', '081380809709');
insert into Dokter_telepon values('1129', '087713137890');
insert into Dokter_telepon values('1120', '087890123434');

insert into Pasien_telepon values('2111', '081358321021');
insert into Pasien_telepon values('2112', '087812321027');
insert into Pasien_telepon values('2113', '085613321021');
insert into Pasien_telepon values('2114', '081212601020');
insert into Pasien_telepon values('2115', '081313691779');
insert into Pasien_telepon values('2116', '082345456390');
insert into Pasien_telepon values('2117', '088989129023');
insert into Pasien_telepon values('2118', '081238786109');
insert into Pasien_telepon values('2119', '081112129078');
insert into Pasien_telepon values('2110', '089091121234');
insert into Pasien_telepon values('2121', '081212581021');
insert into Pasien_telepon values('2122', '088810991027');
insert into Pasien_telepon values('2123', '081262121021');
insert into Pasien_telepon values('2124', '081390602020');
insert into Pasien_telepon values('2125', '088910695845');
insert into Pasien_telepon values('2126', '082228326390');
insert into Pasien_telepon values('2127', '087719829023');
insert into Pasien_telepon values('2128', '081270809709');
insert into Pasien_telepon values('2129', '087873137890');
insert into Pasien_telepon values('2120', '087590123434');

insert into Apoteker_telepon values('3111', '081212221021');
insert into Apoteker_telepon values('3112', '087868721027');
insert into Apoteker_telepon values('3113', '085606921021');
insert into Apoteker_telepon values('3114', '081272801020');
insert into Apoteker_telepon values('3115', '081353491779');
insert into Apoteker_telepon values('3116', '081332256390');
insert into Apoteker_telepon values('3117', '087848729023');
insert into Apoteker_telepon values('3118', '081289986109');
insert into Apoteker_telepon values('3119', '087898087078');
insert into Apoteker_telepon values('3120', '087772771234');
insert into Apoteker_telepon values('3121', '081221181021');
insert into Apoteker_telepon values('3122', '087808088027');
insert into Apoteker_telepon values('3123', '085666621021');
insert into Apoteker_telepon values('3124', '081277211200');
insert into Apoteker_telepon values('3125', '081339095845');
insert into Apoteker_telepon values('3126', '081363626390');
insert into Apoteker_telepon values('3127', '087899321123');
insert into Apoteker_telepon values('3128', '081288278709');
insert into Apoteker_telepon values('3129', '087899837890');
insert into Apoteker_telepon values('3130', '085866123434');

insert into Perawat_telepon values('4111', '081300398021');
insert into Perawat_telepon values('4112', '087757677027');
insert into Perawat_telepon values('4113', '086768921021');
insert into Perawat_telepon values('4114', '081313101020');
insert into Perawat_telepon values('4115', '081255234779');
insert into Perawat_telepon values('4116', '081292827390');
insert into Perawat_telepon values('4117', '087711766023');
insert into Perawat_telepon values('4118', '081361001109');
insert into Perawat_telepon values('4119', '087789888078');
insert into Perawat_telepon values('4110', '087868556234');
insert into Perawat_telepon values('4121', '081313300021');
insert into Perawat_telepon values('4122', '087577667027');
insert into Perawat_telepon values('4123', '085779988021');
insert into Perawat_telepon values('4124', '081331212112');
insert into Perawat_telepon values('4125', '081262722845');
insert into Perawat_telepon values('4126', '081234545390');
insert into Perawat_telepon values('4127', '087888821123');
insert into Perawat_telepon values('4128', '082122278709');
insert into Perawat_telepon values('4129', '082199837890');
insert into Perawat_telepon values('4120', '082111223434');

insert into Petugas_telepon values('5111', '081201898021');
insert into Petugas_telepon values('5112', '087880977027');
insert into Petugas_telepon values('5113', '085757921021');
insert into Petugas_telepon values('5114', '081201901020');
insert into Petugas_telepon values('5115', '081211114779');
insert into Petugas_telepon values('5116', '081330927390');
insert into Petugas_telepon values('5117', '087858566023');
insert into Petugas_telepon values('5118', '081202001109');
insert into Petugas_telepon values('5119', '087881188078');
insert into Petugas_telepon values('5130', '087811356234');
insert into Petugas_telepon values('5121', '081201900021');
insert into Petugas_telepon values('5122', '087809067027');
insert into Petugas_telepon values('5123', '085661188021');
insert into Petugas_telepon values('5124', '081227712112');
insert into Petugas_telepon values('5125', '081233112845');
insert into Petugas_telepon values('5126', '081138115390');
insert into Petugas_telepon values('5127', '087717271123');
insert into Petugas_telepon values('5128', '082665438709');
insert into Petugas_telepon values('5129', '082229837890');
insert into Petugas_telepon values('5120', '089999223434');

insert into Tagihan values ('9001','2111',675000);
insert into Tagihan values ('9002','2112',665000);
insert into Tagihan values ('9003','2113',680000);
insert into Tagihan values ('9004','2114',620000);
insert into Tagihan values ('9005','2115',615000);
insert into Tagihan values ('9006','2116',824000);
insert into Tagihan values ('9007','2117',810000);
insert into Tagihan values ('9008','2118',1040000);
insert into Tagihan values ('9009','2119',1037000);
insert into Tagihan values ('9010','2110',1020000);
insert into Tagihan values ('9020','2120',665000);
insert into Tagihan values ('9021','2121',1221000);
insert into Tagihan values ('9022','2122',1214000);
insert into Tagihan values ('9023','2123',678000);
insert into Tagihan values ('9024','2124',689000);
insert into Tagihan values ('9025','2125',390000);
insert into Tagihan values ('9026','2126',826000);
insert into Tagihan values ('9027','2127',682000);
insert into Tagihan values ('9028','2128',1026000);
insert into Tagihan values ('9029','2129',1020000);

insert into Payment values ('9001','2111');
insert into Payment values ('9002','2112');
insert into Payment values ('9003','2113');
insert into Payment values ('9004','2114');
insert into Payment values ('9005','2115');
insert into Payment values ('9006','2116');
insert into Payment values ('9007','2117');
insert into Payment values ('9008','2118');
insert into Payment values ('9009','2119');
insert into Payment values ('9010','2110');
insert into Payment values ('9021','2121');
insert into Payment values ('9022','2122');
insert into Payment values ('9023','2123');
insert into Payment values ('9024','2124');
insert into Payment values ('9025','2125');
insert into Payment values ('9026','2126');
insert into Payment values ('9027','2127');
insert into Payment values ('9028','2128');
insert into Payment values ('9029','2129');
insert into Payment values ('9020','2120');

insert into DaftarObat values ('01','801','80010');
insert into DaftarObat values ('02','801','80510');
insert into DaftarObat values ('03','802','80911');
insert into DaftarObat values ('04','803','80610');
insert into DaftarObat values ('05','803','80710');
insert into DaftarObat values ('06','803','80010');
insert into DaftarObat values ('07','804','80310');
insert into DaftarObat values ('08','804','80311');
insert into DaftarObat values ('09','804','80510');
insert into DaftarObat values ('10','805','80710');
insert into DaftarObat values ('11','805','80311');
insert into DaftarObat values ('12','806','80311');
insert into DaftarObat values ('13','806','80711');
insert into DaftarObat values ('14','806','81010');
insert into DaftarObat values ('15','807','80711');
insert into DaftarObat values ('16','808','80810');
insert into DaftarObat values ('17','808','80711');
insert into DaftarObat values ('18','809','80911');
insert into DaftarObat values ('19','809','80810');
insert into DaftarObat values ('20','810','81010');
