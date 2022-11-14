-- Nominal rata-rata transaksi yang dilakukan oleh pelanggan dalam 1 bulan terakhir

select avg(product.harga) as 'RATA-RATA TRANSAKSI' 
from transaksi
left join product
on product.id = transaksi.id_product
where tanggal_transaksi = date_sub(curdate(), interval 1 month);

