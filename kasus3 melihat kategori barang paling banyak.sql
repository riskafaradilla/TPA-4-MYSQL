-- Melihat Kategori barang yang paling banyak barangnya

select jenis_product as 'KATEGORI BARANG', sum(stok) as 'STOK' from product;