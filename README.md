
# Masalah Shooter velocity position - REQUIREMENT Editor Godot 4.2

Aku disini kasih pembahasan tentang permasalahan tentang velocity pada godot 4.2

dimana Spawn peluru tidak sesuai dengan posisi instancenya

Game play Button: 
Jalan kanan -> tekan Tombol Arah Kanan
Jalan Kiri -> tekan Tombol Arah Kiri
Lompat -> tekan tombol spasi
Tembak -> Klik Kiri Mouse
### Masalah
pada Video bawah memperlihatkan peluru tidak tepat posisinya di kotak putih kecil

https://github.com/alanzulwas/Spawn-velocity-bullet-shot-Godot-4.2/assets/36232476/430b5cb9-4d1e-4d4f-998c-517b69184d83

### Solution
pada Video bawah memperlihatkan peluru tepat posisinya di kotak putih kecil



https://github.com/alanzulwas/Spawn-velocity-bullet-shot-Godot-4.2/assets/36232476/141a508d-409a-48ad-a01e-173f1c167e55



### Penjelasan
Seharusnya, Posisi instance peluru pada scene harus berada pada posisi node root.

tapi di permasalahannya, posisi node berada di posisi character

dari gambar seperti ini :

#### Problem :

![Screenshot 2024-05-29 101454](https://github.com/alanzulwas/Spawn-velocity-bullet-shot-Godot-4.2/assets/36232476/5be7d5bd-73e6-4444-a088-96c6cae3f8ef)

#### Solution:

![solution](https://github.com/alanzulwas/Spawn-velocity-bullet-shot-Godot-4.2/assets/36232476/4243f20a-d7e4-4df4-b0c7-6d0426e3c56f)

#### KALO MAU LIAT PROBLEM MASALAH CODENYA ADA DI -> Character.gd -> line 25 - 29
