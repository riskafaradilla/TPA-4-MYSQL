select * from product;
select nama_product as 'NAMA PRODUK', harga as HARGA from product;
select * from product limit 3;
select * from product where nama_product like "l%";
select * from product where harga =9000;
select * from product where stok < 40;
select max(stok) as 'STOK TERBANYAK' from product;
select count(stok + harga) as 'TOTAL' from product where nama_product='aqua';
 
select * from pelanggan;
select nama_pelanggan as 'NAMA PELANGGAN', telepon as 'NO HP', alamat as 'ALAMAT PELANGGAN' from pelanggan;
select * from pelanggan where jenis_kelamin ='perempuan';
select * from pelanggan where nama_pelanggan like "%a%";
select * from pelanggan where telepon like "0821%";

select * from transaksi;

select transaksi.id as 'KODE TRANSAKSI', product.id as 'KODE PRODUK', product.harga as HARGA, pelanggan.telepon as TELEPON, pelanggan.alamat as ALAMAT
from ((transaksi
inner join pelanggan on transaksi.id_pelanggan = pelanggan.id)
inner join product on transaksi.id_product = product.id);

select sum(product.id + product.harga) as 'TOTAL HARGA', pelanggan.nama_pelanggan as 'NAMA PELANGGAN', pelanggan.alamat as ALAMAT
from ((transaksi
inner join pelanggan on transaksi.id_pelanggan = pelanggan.id)
inner join product on transaksi.id_product = product.id)
group by id_pelanggan;

