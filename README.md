# Tutorial 2 - Game Development

Nama: Ahmad Fatih Faizi

NPM: 2206819344

## Latihan: Playtest

### 1. Apa saja pesan log yang dicetak pada panel Output?

Pesan log yang dicetak pada panel Output adalah:

```cmd
Godot Engine v4.6.1.stable.steam.14d19694e - https://godotengine.org
Vulkan 1.4.323 - Forward+ - Using Device #0: Intel - Intel(R) Graphics

Platform initialized
Reached objective!
```

Output "Reached objective!" dicetak ketika pesawat overlap dengan ObjectiveArea.

### 2. Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?

Pesan log yang dicetak pada panel Output adalah:

```cmd
Godot Engine v4.6.1.stable.steam.14d19694e - https://godotengine.org
Vulkan 1.4.323 - Forward+ - Using Device #0: Intel - Intel(R) Graphics

Platform initialized
Reached objective!
Reached objective!
```

Output "Reached objective!" dicetak kembali ketika pesawat menyentuh batas atas.

### 3. Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?

Ya. Pesan log "Reached objective!" dicetak ketika pesawat overlap dengan area ObjectiveArea. Lokasi scene ObjectiveArea menentukan di mana pesawat harus berada untuk mencetak pesan log tersebut.

## Latihan: Memanipulasi Node dan Scene

### 1. Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite2D. Apa fungsi dari node bertipe Sprite2D?

Node dengan tipe Sprite2D merupakan node yang digunakan untuk menampilkan gambar/texture static 2D dalam game.

### 2. Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?

- RigidBody2D: Node ini digunakan untuk objek yang dapat dipengaruhi oleh gaya fisika eksternal seperti gravitasi atau velocity. Objek dengan tipe ini dapat bergerak dan berinteraksi dengan objek lain secara dinamis mengikuti aturan fisika.

- StaticBody2D: Node ini digunakan untuk objek yang tidak dapat dipengaruhi oleh gaya eksternal. Walaupun dapat digerakkan secara manual, objek dengan tipe ini tidak akan bereaksi secara dinamis (mengikuti aturan fisika) dengan objek lain.

### 3. Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?

Ketika saya ubah, tidak ada perubahan yang signifikan pada perilaku pesawat. Pesawat tetap dipengaruhi oleh gaya gravitasi tetapi tidak ada perubahan yang terlihat pada kecepatan pesawat jatuh ke platform.

### 4. Ubah nilai atribut Disabled milik node CollisionShape2D pada scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?

Ketika saya ubah nilai atribut Disabled menajdi truue, pesawat jatuh menembus platform. Ini karena pesawat tidak lagi mendeteksi collision dengan platform, sehingga pesawat tidak bertumbukan dengan platform dan jatuh melewatinya.

### 5. Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?

- Postion: Posisi BlueShip (pesawat) berubah sesuai dengan nilai yang dimasukkan.

- Rotation: Rotasi BlueShip berubah sesuai dengan nilai yang dimasukkan.

- Scale: Skala BlueShip berubah sesuai dengan nilai yang dimasukkan. Pesawat terlihat lebih besar atau lebih kecil tergantuk nilai scale yang dimasukkan.

### 6. Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?

Karena nilai position dari node StonePlatform dan StonePlatform2 merupakan posisi lokal relatif terhadap parent node (PlatformBlue). Sedangkan visualisasi posisi pada viewport bersifat global.
