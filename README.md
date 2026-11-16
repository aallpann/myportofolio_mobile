# MyPortfolio Mobile

Aplikasi portofolio pribadi berbasis Flutter yang menampilkan informasi pemilik portofolio dan menu aksi untuk mengakses fitur portofolio.

## Cara Menjalankan

1. Pastikan Flutter SDK sudah terpasang.
2. Clone repository ini.
3. Buka folder proyek di terminal.
4. Jalankan `flutter pub get`.
5. Jalankan aplikasi dengan `flutter run`.

### TUGAS 7

1. Widget tree adalah struktur hierarkis yang menyusun seluruh komponen antarmuka dalam aplikasi Flutter. Setiap widget dapat memiliki widget lain sebagai anaknya. Widget induk mengatur posisi, ukuran, dan tata letak widget anak. Contohnya, MaterialApp menjadi root widget, kemudian memiliki Scaffold sebagai halaman utama. Scaffold memiliki AppBar dan body, sedangkan body dapat berisi Padding, Column, Row, dan Text. Hubungan ini membuat tampilan aplikasi tersusun secara terstruktur.
2. Widget yang digunakan dalam proyek ini antara lain:
- MaterialApp: menyediakan konfigurasi utama aplikasi seperti tema dan halaman awal.
- Scaffold: menyediakan struktur dasar halaman aplikasi.
- AppBar: menampilkan bilah judul aplikasi.
- Text: menampilkan teks seperti judul, identitas, dan nama tombol.
- Padding: memberikan jarak di sekitar widget.
- Column: menyusun widget secara vertikal.
- Row: menyusun widget secara horizontal.
- Center: menempatkan widget di tengah.
- SizedBox: memberikan jarak atau ukuran tertentu.
- GridView.count: menyusun daftar tombol dalam bentuk grid.
- Card: menampilkan informasi dalam bentuk kartu.
- Container: mengatur ukuran dan padding konten.
- Material: menyediakan tampilan material dan warna latar kartu.
- InkWell: memberikan interaksi ketika kartu ditekan.
- Icon: menampilkan ikon pada tombol.
- SnackBar: menampilkan pesan sementara ketika tombol ditekan.
Selain itu, proyek menggunakan widget khusus InfoCard dan ItemCard untuk membuat komponen yang dapat digunakan kembali.
3. MaterialApp merupakan widget utama yang menyediakan konfigurasi aplikasi berbasis Material Design. Widget ini mengatur tema, navigasi, judul, dan halaman awal aplikasi. MaterialApp umumnya digunakan sebagai root widget karena menjadi dasar bagi widget lain untuk mendapatkan konfigurasi dan tampilan yang konsisten.
4. StatelessWidget adalah widget yang tidak menyimpan state yang dapat berubah selama siklus hidupnya. Widget ini cocok digunakan untuk tampilan yang relatif tetap, seperti InfoCard dan ItemCard dalam proyek ini. StatefulWidget adalah widget yang memiliki State sehingga dapat memperbarui tampilan ketika data berubah. Widget ini cocok digunakan untuk komponen interaktif yang membutuhkan perubahan state, misalnya penghitung angka atau formulir yang nilainya berubah. Pemilihan widget bergantung pada kebutuhan aplikasi. Jika tampilan hanya bergantung pada data yang diberikan dan tidak mengelola perubahan state sendiri, StatelessWidget sudah cukup. Jika perlu mengelola perubahan data dan memperbarui tampilan, StatefulWidget lebih tepat.
5. BuildContext merupakan referensi terhadap lokasi sebuah widget di dalam widget tree. BuildContext memungkinkan widget mengakses informasi dari widget induknya, seperti tema dan ukuran layar. Dalam proyek ini, BuildContext digunakan untuk mengambil warna tema melalui Theme.of(context), mendapatkan ukuran layar melalui MediaQuery.of(context), dan menampilkan SnackBar melalui ScaffoldMessenger.of(context).
6. Hot reload adalah fitur Flutter yang memungkinkan perubahan kode diterapkan dengan cepat tanpa mengulang seluruh aplikasi. State aplikasi umumnya tetap dipertahankan sehingga proses pengembangan menjadi lebih efisien. Hot restart memulai ulang aplikasi dari fungsi main sehingga state aplikasi direset. Hot restart diperlukan ketika perubahan kode tidak dapat diterapkan dengan hot reload, misalnya perubahan struktur tertentu atau inisialisasi state. Full restart atau menjalankan ulang aplikasi diperlukan ketika perubahan melibatkan konfigurasi native, plugin, atau perubahan lingkungan yang tidak cukup diperbarui melalui hot reload.

### AI DISCLOSURE ###
Dalam pengerjaan tugas ini, saya menggunakan ChatGPT sebagai alat bantu untuk memahami instruksi tugas, mempelajari konsep Flutter, membantu proses debugging, dan memeriksa implementasi kode. Bantuan AI digunakan pada penyesuaian identitas pemilik portofolio, penambahan atribut warna pada model ItemHomepage, serta penyesuaian warna pada ItemCard. Saya tetap menjalankan dan menguji aplikasi secara langsung, memeriksa hasil tampilan, serta menjalankan flutter analyze untuk memastikan implementasi berjalan sesuai instruksi tugas. Kode akhir diperiksa dan disesuaikan kembali berdasarkan hasil pengujian.