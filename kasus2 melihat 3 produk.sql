-- Melihat 3 produk yang paling sering dibeli oleh pelanggan.

select nama_product as 'NAMA PRODUK', count(id) as 'JUMLAH' from product
group by id
order by id DESC
limit 3;