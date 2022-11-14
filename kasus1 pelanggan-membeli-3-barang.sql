-- 1 pelanggan membeli 3 barang yang berbeda.

insert into transaksi (tanggal_transaksi,id_pelanggan, id_product) values
('2021-06-20',1,4),
('2021-07-23',1,6),
('2022-04-19',2,4),
('2021-03-23',2,7),
('2022-08-01',3,15),
('2022-04-23',3,21),
('2022-03-27',4,12),
('2021-05-23',4,30),
('2022-10-23',5,14),
('2022-10-27',5,4),
('2022-10-28',6,11),
('2021-10-23',6,24),
('2022-04-09',7,21),
('2022-10-11',7,2),
('2021-04-07',8,10),
('2022-06-21',8,28),
('2021-08-23',9,12),
('2022-11-01',9,22),
('2021-04-23',10,4),
('2022-11-10',10,8),
('2021-12-27',11,30),
('2019-07-19',11,27),
('2022-09-19',11,18),
('2022-10-12',12,21),
('2021-10-11',12,24),
('2022-10-12',12,27),
('2022-08-17',13,30),
('2022-02-01',13,12),
('2022-04-30',13,01); 

select pelanggan.nama_pelanggan as 'NAMA PELANGGAN', product.nama_product as 'NAMA PRODUK'
from ((transaksi
inner join pelanggan on transaksi.id_pelanggan = pelanggan.id)
inner join product on transaksi.id_product = product.id);

-- coba
insert into transaksi (tanggal_transaksi,id_pelanggan, id_product) values
('2022-10-13',3,2),
('2022-10-12',5,3),
('2022-10-11',7,8)

