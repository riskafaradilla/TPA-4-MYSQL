create table product(
id int primary key not null auto_increment,
kode_product varchar(3),
jenis_product varchar(50),
nama_product varchar(50),
harga int,
stok int
);

create table pelanggan(
id int primary key not null auto_increment,
nama_pelanggan varchar(50),
jenis_kelamin enum('laki-laki','perempuan'),
telepon varchar(12),
alamat varchar(100)
);

create table transaksi(
id int primary key not null auto_increment,
tanggal_transaksi date,
id_pelanggan int,
foreign key (id_pelanggan) references pelanggan(id),
id_product int,
foreign key (id_product) references product(id)
);