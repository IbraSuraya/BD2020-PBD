create database "Material Suroyo";
use "Material Suroyo";
==============================================================================================
						/*Primer*/
==============================================================================================
/*UTAMA - Barang*/
CREATE TABLE Barang ( 
	ID_BRG VARCHAR (10) NOT NULL, 
	Nama_Barang VARCHAR (20) NOT NULL, 
	Satuan VARCHAR (20), 
	Harga_Barang INTEGER,
	Tipe VARCHAR (20),
PRIMARY KEY (ID_BRG));

INSERT INTO Barang values
('PSR'	,'Pasir',		'20 Liter',	20000,'Material'),
('SMN'	,'Semen',		'20 Liter',	40000,'Material'),
('BTMRH','Bata Merah',	'1 Kodi',	30000,'Material'),
('BTPTH','Bata Putih',	'1 Kodi',	20000,'Material'),
('SNG'	,'Seng',		'1 Buah',	20000,'Material'),
('BLK'	,'Balok 4x4',	'1 Buah',	15000,'Material'),
('CLDX'	,'Cat Ludux',	'5 Liter',	30000,'Material'),
('WPF'	,'Waterproof',	'5 Liter',	50000,'Material'),
('PKU'	,'Paku',		'1 Paket',	15000,'Perkakas'),
('PLU'	,'Palu',		'1 Buah',	10000,'Perkakas'),
('BR'	,'Bor',			'1 Buah',	15000,'Perkakas'),
('TNG'	,'Tang',		'1 Buah',	10000,'Perkakas'),
('GGJ'	,'Gergaji',		'1 Buah',	20000,'Perkakas'),
('KNCL'	,'Kunci L',		'1 Buah',	15000,'Perkakas'),
('MTRN'	,'Meteran',		'1 Buah',	20000,'Perkakas'),
('CTR'	,'Cutter',		'1 Buah',	15000,'Perkakas'),
('KNCI'	,'Kunci Inggris','1 Buah',	10000,'Perkakas');

select * from Barang;
select Harga_Barang from Barang;
select distinct Satuan from Barang;
select Nama_Barang from Barang where Harga_Barang=15000;
select Nama_Barang from Barang where not Satuan='1 Buah';

==============================================================================================
/*UTAMA - Pegawai*/
CREATE TABLE Pegawai ( 
	ID_PGWI VARCHAR (5) NOT NULL, 
	Nama_Pegawai VARCHAR (10) NOT NULL, 
	Posisi VARCHAR (10), 
PRIMARY KEY (ID_PGWI));

INSERT INTO Pegawai values
('KS1','Ibra',	'Kasir'),
('KS2','Hasan',	'Kasir'),
('GD1','Suraya','Gudang'),
('GD2','Maul',	'Gudang'),
('PG1','Radit',	'Pengantar'),
('PG2','Teddy',	'Pengantar'),
('PG3','Jarwo',	'Pengantar');

select * from Pegawai;

==============================================================================================
/*UTAMA - Pembeli*/
CREATE TABLE Pembeli ( 
	No_Struk VARCHAR (10) NOT NULL, 
	Nama_Pembeli VARCHAR (15) NOT NULL, 
	Status VARCHAR (10), 
	Alamat VARCHAR (20),
	Tanggal_Beli DATE,
	No_TLP VARCHAR (18),
	Harga_Total INTEGER,
PRIMARY KEY (No_Struk));

INSERT INTO Pembeli values
('ST18AP','Tasya'	,'Take Away',NULL			,'2020-04-18',NULL,			40000),
('ST23MR','Mutia'	,'Take Away',NULL			,'2020-03-23',NULL,			270000),
('ST17AP','Firda'	,'Take Away',NULL			,'2020-04-17',NULL,			265000),
('ST20NV','Jono'	,'Order'	,'Gang.U'		,'2020-11-20','08123456789',4015000),
('ST17AG','Irvan'	,'Order'	,'Jl.Surilang'	,'2020-08-17','08987654321',6340000),
('ST01AP','Zamira'	,'Order'	,'Gang.Dapras'	,'2020-04-01','08234567890',95000),
('ST28FB','Raiqah'	,'Order'	,'Jl.Masjid'	,'2020-02-28','08876543210',95000);

select * from Pembeli;
select Nama_Pembeli from Pembeli where Alamat is NULL;
select Nama_Pembeli from Pembeli where Harga_Total > 1000000;
select Nama_Pembeli from Pembeli where Harga_Total <300000 or Alamat is NULL;
select Nama_Pembeli from Pembeli where Tanggal_Beli between '2020-02-28' and '2020-04-01';
select Nama_Pembeli from Pembeli where No_Struk in ('ST18AP','ST28FB''ST01AP');

==============================================================================================
/*UTAMA - Gudang*/
CREATE TABLE Gudang ( 
	ID_GDG VARCHAR (5) NOT NULL, 
	Nama_Gudang VARCHAR (5) NOT NULL, 
	Lokasi_Gedung VARCHAR (10),
PRIMARY KEY (ID_GDG));

INSERT INTO Gudang values
('GM1','TH1','Utara'),
('GM2','TH2','Selatan'),
('GP1','TH3','Barat'),
('GP2','TH4','Timur');

select * from Gudang;

==============================================================================================
/*UTAMA - Supplier*/
CREATE TABLE Supplier ( 
	ID_SPPL VARCHAR (10) NOT NULL, 
	Perusahaan VARCHAR (15) NOT NULL, 
	Spesialis VARCHAR (10),
	Alamat_SPPL VARCHAR (15),
	TLP VARCHAR (18),
PRIMARY KEY (ID_SPPL));

INSERT INTO Supplier values
('MMAK1','PT Makmur','Material','Jl.Dakar',		'0811112222'),
('MJAY1','PT Jaya'	,'Material','Jl.Dawar',		'0833334444'),
('PKAY1','PT Kaya'	,'Perkakas','Jl.Waru',		'0855556666'),
('PANE1','PT Aneh'	,'Perkakas','Jl.Raya Tengah','0877778888');

select * from Supplier;

==============================================================================================
/*UTAMA - Mobilisasi*/
CREATE TABLE Mobilisasi ( 
	ID_Mobi VARCHAR (5) NOT NULL, 
	Jenis VARCHAR (15), 
	Tahun VARCHAR (6),
	Plat VARCHAR (20),
	Biaya_Kirim INTEGER,
PRIMARY KEY (ID_Mobi));

INSERT INTO Mobilisasi values
('T1','Truck Besar'	,'2015'	,'B 1234 AA',100000),
('P1','Pickup'		,'2016'	,'B 2345 BB',50000),
('P2','Pickup'		,'2016'	,'B 3456 CC',50000),
('P3','Pickup'		,'2017'	,'B 4567 DD',50000),
('G1','Gerobak'		,NULL	,NULL		,15000),
('G2','Gerobak'		,NULL	,NULL		,15000),
('G3','Gerobak'		,NULL	,NULL		,15000);

select * from Mobilisasi ;

==============================================================================================
								/*RELASI*/
==============================================================================================
/*Relasi - Pembelian*/
CREATE TABLE Pembelian (
	No_Struk VARCHAR (10) NOT NULL,
	ID_BRG VARCHAR (10) NOT NULL, 
	Total_Satuan INTEGER,
	Harga_Barang INTEGER,
	ID_PGWI VARCHAR (5) NOT NULL,
	ID_Mobi VARCHAR (5),
	Tanggal_Beli DATE,
FOREIGN KEY (No_Struk) REFERENCES Pembeli(No_Struk),
FOREIGN KEY (ID_BRG) REFERENCES Barang(ID_BRG),
FOREIGN KEY (ID_PGWI) REFERENCES Pegawai(ID_PGWI),
FOREIGN KEY (ID_Mobi) REFERENCES Mobilisasi(ID_Mobi));

INSERT INTO Pembelian values
('ST18AP','PKU',	2,30000,	'KS1',NULL,'2020-04-18'),
('ST18AP','PLU',	1,10000,	'KS1',NULL,'2020-04-18'),
('ST23MR','MTRN',	1,20000,	'KS2',NULL,'2020-03-23'),
('ST23MR','WPF',	5,250000,	'KS2',NULL,'2020-03-23'),
('ST17AP','BLK',	1,15000,	'KS1',NULL,'2020-04-17'),
('ST17AP','WPF',	5,250000,	'KS1',NULL,'2020-04-17'),
('ST20NV','SMN',	100,4000000,'PG1','G2','2020-11-20'),
('ST17AG','SMN',	100,4000000,'PG2','T1','2020-08-17'),
('ST17AG','PSR',	100,2000000,'PG2','T1','2020-08-17'),
('ST17AG','BTPTH',	10,200000,	'PG2','T1','2020-08-17'),
('ST17AG','GGJ',	2,40000,	'PG2','T1','2020-08-17'),
('ST01AP','BR',		1,15000,	'PG3','P2','2020-04-01'),
('ST01AP','TNG',	1,10000,	'PG3','P2','2020-04-01'),
('ST01AP','GGJ',	1,20000,	'PG3','P2','2020-04-01'),
('ST28FB','MTRN',	1,20000,	'PG1','P3','2020-02-28'),
('ST28FB','CTR',	1,15000,	'PG1','P3','2020-02-28'),
('ST28FB','KNCI',	1,10000,	'PG1','P3','2020-02-28');

select * from Pembelian;
select No_Struk from Pembelian;

==============================================================================================
/*Relasi - Penyimpanan*/
CREATE TABLE Penyimpanan (
	ID_BRG VARCHAR (10) NOT NULL, 
	ID_GDG VARCHAR (5) NOT NULL,
	ID_PGWI VARCHAR (5) NOT NULL,
	ID_SPPL VARCHAR (10) NOT NULL, 
	Satuan_Pemesanan VARCHAR (15),
	Tanggal_Beli DATE,
	Modal INTEGER,
FOREIGN KEY (ID_BRG) REFERENCES Barang(ID_BRG),
FOREIGN KEY (ID_GDG) REFERENCES Gudang(ID_GDG),
FOREIGN KEY (ID_PGWI) REFERENCES Pegawai(ID_PGWI),
FOREIGN KEY (ID_SPPL) REFERENCES Supplier(ID_SPPL));

INSERT INTO Penyimpanan values
('PSR',		'GM1','GD1','MMAK1','1000 Liter'	,'2019-12-25',40000000),
('SMN',		'GM1','GD1','MMAK1','1000 Liter'	,'2019-12-25',36000000),
('BTMRH',	'GM1','GD1','MMAK1','100 Kodi'		,'2019-12-25',10000000),
('BTPTH',	'GM1','GD1','MMAK1','100 Kodi'		,'2019-12-25',13500000),
('SNG',		'GM2','GD1','MJAY1','100 Buah'		,'2019-12-28',18200000),
('BLK',		'GM2','GD1','MJAY1','100 Buah'		,'2019-12-28',17100000),
('CLDX',	'GM2','GD1','MJAY1','500 Liter'		,'2019-12-28',15550000),
('WPF',		'GM2','GD1','MJAY1','500 Liter'		,'2019-12-28',13200000),
('PKU',		'GP1','GD2','PKAY1','30 Paket'		,'2020-01-01',7500000),
('PLU',		'GP1','GD2','PKAY1','30 Paket'		,'2020-01-01',8330000),
('BR',		'GP1','GD2','PKAY1','30 Paket'		,'2020-01-01',4950000),
('TNG',		'GP1','GD2','PKAY1','30 Paket'		,'2020-01-01',9000000),
('GGJ',		'GP2','GD2','PANE1','30 Paket'		,'2020-01-05',5122000),
('KNCL',	'GP2','GD2','PANE1','30 Paket'		,'2020-01-05',9850000),
('MTRN',	'GP2','GD2','PANE1','30 Paket'		,'2020-01-05',1300000),
('CTR',		'GP2','GD2','PANE1','30 Paket'		,'2020-01-05',8520000),
('KNCI',	'GP2','GD2','PANE1','30 Paket'		,'2020-01-05',4210000);

select * from Penyimpanan;
