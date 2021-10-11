# Basic Database Final Project with DDL 

This is my 3rd semester final project in database system course. In this work, my team made a simple database for a hospital using DDL. Before we build the database, we first define the entities, attribute, made the ERD and ER Schema.

## Entities
* Dokter (doctor)
* Pasien (patient)
* Apoteker (pharmachist)
* Perawat (nurse)
* Obat (medicine)
* Kamar(room)
* Petugas (receptionist)
* Pembayaran (Payment)
* Wali (guardian)
* Penyakit (ilness)

## Attribute
**Dokter**
Id_dokter | Nama | Jenis_kelamin | Spesialisasi | Gaji | Alamat | No_telepon
--------- | ---- | ------------- | ------------ | ---- | ------ | ----------

* Id_dokter     : doctor's identification number
* Nama          : name
* Jenis_kelamin : gender
* Spesialisasi  : doctor's specialization
* Gaji          : salary
* Alamat        : Address
* No_telepon    : phone number

**Pasien**
Id_pasien | Nama | Jenis_kelamin | Jenis_penyakit | Usia | Tgl_datang | Alamat 
--------- | ---- | ------------- | -------------- | ---- | ---------- | ------ 

* Id_pasien     : patient's identification number
* Name          : name
* Jenis_kelamin : gender
* jenis_penyakit: ilness
* Usia          : age
* Tgl_datang    : the date when the patient arrived in hospital
* Alamat        : address
* No_telepon    : phone number

**Apoteker**
Id_apoteker | Nama | Jenis_kelamin | Jam_kerja | Gaji | Alamat | No_telepon
----------- | ---- | ------------- | --------- | ---- | ------ | ----------

* Id_apoteker   : pharmacist's identification number
* Name          : name
* Jenis_kelamin : gender
* Jam_kerja     : start work time
* Gaji          : salary
* Alamat        : address
* No_telepon    : phone number

**Perawat**
Id_perawat | Nama | Jenis_kelamin | Jam_kerja | Gaji | Alamat | No_telepon
---------- | ---- | ------------- | --------- | ---- | ------ | ----------

* Id_perawat    : nurse's identification number
* Name          : name
* Jenis_kelamin : gender
* Jam_kerja     : start work time
* Gaji          : salary
* Alamat        : address
* No_telepon    : phone number

**Obat**
Id_obat | Nama_obat | Dosis_obat | Harga_obat 
------- | --------- | ---------- | ---------- 

* Id_obat   : medicine's identification number
* Nama_obat : medicine's name
* Dosis_obat: medicine's dose
* Harga_obat: medicine's price

**Kamar**
Id_kamar | Nama_kamar | Tipe_kamar | Harga_kamar 
-------- | ---------- | ---------- | -----------

* Id_kamar    : room's identification number
* Nama_kamar  : room's name
* Tipe_kamar  : room's type
* Harga_kamar : room's price

**Petugas**
Id_petugas | Nama | Jenis_kelamin | Jam_kerja | Gaji | Alamat | No_telepon
---------- | ---- | ------------- | --------- | ---- | ------ | ----------

* Id_petugas    : receptionist's identification number
* Name          : name
* Jenis_kelamin : gender
* Jam_kerja     : start work time
* Gaji          : salary
* Alamat        : address
* No_telepon    : phone number

**Pembayaran**
Id_pembayaran | Id_pasien | Jumlah_harga
------------- | --------- | ------------

* Id_pembayaran : payment identification number
* Jumlah_harga  : how much patient should pay

**Wali**
Id_pasien | Nama_wali | Jenis_kelamin | Alamat
--------- | --------- | ------------- | ------

* Nama_wali : guardian's name

**Penyakit**
Id_penyakit | Nama_penyakit
----------- | -------------

* Id_penyakit   : ilness' identification number
* Nama_penyakit : ilness' name

## ERD
![picture alt](ERD.jpg?raw=true "Entity Relational Database for database RumahSakit")

## ER Scheme
**Dokter** (doctor)
Id_dokter | FNama | LNama | Jenis_kelamin | Spesialisasi | Gaji | Alamat | No_telepon
--------- | ----- | ----- | ------------- | ------------ | ---- | ------ | ----------

* FNama         : first name
* LNama         : last name

**Pasien** (patient)
Id_pasien | FNama | LNama | Jenis_kelamin | Jenis_penyakit | Usia | Tgl_datang | Alamat | No_telepon | Id_dokter | Id_kamar | Id_petugas
--------- | ----- | ----- | ------------- | -------------- | ---- | ---------- | ------ | ---------- | --------- | -------- | ----------

**Apoteker** (pharmacist)
Id_apoteker | FNama | LNama | Jenis_kelamin | Jam_kerja | Gaji | Alamat | No_telepon
----------- | ----- | ----- | ------------- | --------- | ---- | ------ | ----------

**Perawat** (nurse)
Id_perawat | FNama | LNama | Jenis_kelamin | Jam_kerja | Gaji | Alamat | No_telepon
---------- | ----- | ----- | ------------- | --------- | ---- | ------ | ----------

**Obat** (medicine)
Id_obat | Nama_obat | Dosis_obat | Harga_obat | Id_pasien | Id_apoteker 
------- | --------- | ---------- | ---------- | --------- | -----------

**Kamar** (room)
Id_obat | Nama_obat | Dosis_obat | Harga_obat | Id_pasien | Id_apoteker 
------- | --------- | ---------- | ---------- | --------- | -----------

**Petugas**
Id_petugas | FNama | LNama | Jenis_kelamin | Jam_kerja | Gaji | Alamat | No_telepon
---------- | ----- | ----- | ------------- | --------- | ---- | ------ | ----------

**Pembayaran**
Id_pembayaran | Id_pasien | Jumlah_harga | Id_petugas
------------- | --------- | ------------ | ----------

**Penyakit**
Id_penyakit | Nama_penyakit | Id_pasien
----------- | ------------- | ---------

**Wali**
Nama_wali | Jenis_kelamin | No_telepon | Id_pasien
--------- | ------------- | ---------- | ---------

**Mengobati** (treat)
Id_pasien | Id_dokter
--------- | ---------

**Melayani** (nurse)
Id_pasien | Id_perawat
--------- | ---------

**Prescribe**
Id_resep | Id_pasien
-------- | ---------

* Id_resep : prescription's identification number

**Payment**
Id_tagihan | Id_pasien
---------- | ---------

* Id_tagihan : biil's identification number

**Dokter_telepon**
Id_dokter | No_telepon
--------- | ----------

**Pasien_telepon**
Id_pasien | No_telepon
--------- | ----------

**Apoteker_telepon**
Id_apoteker | No_telepon
----------- | ----------

**Perawat_telepon**
Id_perawat | No_telepon
---------- | ----------

**Petugas_telepon**
Id_petugas | No_telepon
---------- | ----------

- - - -

After defining the entity, attribute, ERD and ER Scheme, we build the database and then create the tables based on the ER Scheme. After that, we insert the data into each table.
Each table will look like this: 
