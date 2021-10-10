# Basic Database Final Project with SQL 

This is my 3rd semester final project in database system course. In this work, my team made a simple database for a hospital using basic SQL. Before we build the database, we first made the ERD and ER Schema.

### ERD
![picture alt](http://via.placeholder.com/200x150 "ERD for RumahSakit Database")

### ER Scheme
**Dokter**
Id_dokter | FNama | LNama | Jenis_kelamin | Spesialisasi | Gaji | Alamat | No_telepon
--------- | ----- | ----- | ------------- | ------------ | ---- | ------ | ----------

**Pasien**
Id_pasien | FNama | LNama | Jenis_kelamin | Jenis_penyakit | Usia | Tgl_datang | Alamat | No_telepon | Id_dokter | Id_kamar | Id_petugas
--------- | ----- | ----- | ------------- | -------------- | ---- | ---------- | ------ | ---------- | --------- | -------- | ----------

**Apoteker**
Id_apoteker | FNama | LNama | Jenis_kelamin | Jam_kerja | Gaji | Alamat | No_telepon
----------- | ----- | ----- | ------------- | --------- | ---- | ------ | ----------

**Perawat**
Id_perawat | FNama | LNama | Jenis_kelamin | Jam_kerja | Gaji | Alamat | No_telepon
---------- | ----- | ----- | ------------- | --------- | ---- | ------ | ----------

**Obat**
Id_obat | Nama_obat | Dosis_obat | Harga_obat | Id_pasien | Id_apoteker 
------- | --------- | ---------- | ---------- | --------- | -----------

- - - -

First we make a database called RumahSakit (it means hospital in Indonesian), and then create some tables:
* Dokter, to store the informations about doctors;
* Pasien, to store the informations about patients;
* Apoteker, to s
