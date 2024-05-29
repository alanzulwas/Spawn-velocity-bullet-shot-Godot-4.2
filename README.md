
# Masalah Shooter velocity position

Aku disini kasih pembahasan tentang permasalahan tentang velocity pada godot 4.2

dimana Spawn peluru tidak sesuai dengan posisi instancenya

Game play Button: 
Jalan kanan -> tekan Tombol Arah Kanan
Jalan Kiri -> tekan Tombol Arah Kiri
Lompat -> tekan tombol spasi
Tembak -> Klik Kiri Mouse
### Masalah
pada Video bawah memperlihatkan peluru tidak tepat posisinya di kotak putih kecil



### Solution
pada Video bawah memperlihatkan peluru tepat posisinya di kotak putih kecil

### Penjelasan
Seharusnya, Posisi instance peluru pada scene harus berada pada posisi node root.

tapi di permasalahannya, posisi node berada di posisi character

dari gambar seperti ini :
Problem :


Solution:
