# MyPortfolio Mobile

Aplikasi portofolio pribadi berbasis Flutter yang menampilkan informasi pemilik portofolio dan menu aksi untuk mengakses fitur portofolio.

## Cara Menjalankan

1. Pastikan Flutter SDK sudah terpasang.
2. Clone repository ini.
3. Buka folder proyek di terminal.
4. Jalankan `flutter pub get`.
5. Jalankan aplikasi dengan `flutter run`.

## Struktur Proyek

```text
lib/
├── main.dart
├── screens/
│   ├── menu.dart
│   ├── project_form.dart
│   └── experience_form.dart
└── widgets/
    ├── left_drawer.dart
    └── project_card.dart
```

- `main.dart`: Entry point aplikasi Flutter.
- `screens/menu.dart`: Halaman utama yang menampilkan informasi pemilik portofolio dan kartu aksi.
- `screens/project_form.dart`: Formulir untuk menambahkan proyek.
- `screens/experience_form.dart`: Formulir untuk menambahkan pengalaman.
- `widgets/left_drawer.dart`: Komponen navigasi Drawer yang digunakan pada halaman aplikasi.
- `widgets/project_card.dart`: Komponen kartu aksi pada halaman Home.

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

### TUGAS 8

1. Navigator.push() digunakan untuk membuka halaman baru di atas halaman sebelumnya sehingga halaman sebelumnya tetap tersimpan dalam navigation stack. Navigator.pushReplacement() digunakan untuk membuka halaman baru sekaligus menggantikan halaman yang sedang ditampilkan. Sementara itu, Navigator.pop() digunakan untuk menutup halaman saat ini dan kembali ke halaman sebelumnya. Pada aplikasi MyPortfolio Mobile, Navigator.push() digunakan ketika pengguna menekan kartu aksi Tambah Pengalaman maupun memilih Add Experience dari Drawer. Keduanya membuka halaman ExperienceFormPage. Sementara itu, opsi Home pada Drawer menggunakan navigasi menuju MyHomePage agar pengguna dapat kembali ke halaman utama.

2. Scaffold menyediakan struktur dasar halaman aplikasi, seperti AppBar, Drawer, dan body. AppBar menampilkan judul halaman, sedangkan Drawer menyediakan navigasi agar pengguna dapat berpindah halaman dengan mudah. Penggunaan struktur tersebut pada halaman Home, Add Project, dan Add Experience membuat tampilan serta navigasi aplikasi tetap konsisten. Contohnya, warna indigo digunakan pada bagian AppBar dan elemen tombol aplikasi. Penggunaan warna yang sama pada beberapa halaman membantu mempertahankan identitas visual MyPortfolio Mobile.

3. Formulir menggunakan Column agar seluruh input ditampilkan secara berurutan dari atas ke bawah. Setiap input dibungkus dengan Padding untuk memberikan jarak sehingga tampilan tidak terlalu rapat dan lebih mudah dibaca. Formulir juga menggunakan SingleChildScrollView agar pengguna tetap dapat mengakses seluruh input ketika tinggi layar terbatas atau ketika keyboard muncul. Dengan susunan tersebut, formulir tetap mudah digunakan pada ukuran layar yang berbeda tanpa membuat bagian input atau tombol Save terpotong.

4. GlobalKey<FormState> digunakan untuk mengidentifikasi dan mengakses state dari Form. validator berfungsi memeriksa apakah nilai yang dimasukkan pengguna memenuhi ketentuan, sedangkan validate() menjalankan seluruh fungsi validasi pada field di dalam Form. Pada aplikasi ini, ketika tombol Save ditekan, _formKey.currentState!.validate() akan memeriksa seluruh input sebelum menampilkan dialog ringkasan pengalaman. Contohnya, input Position yang hanya berisi spasi akan ditolak karena dianggap kosong setelah diperiksa menggunakan trim().isEmpty. Pemilihan jenis input atau papan ketik saja belum cukup karena hal tersebut hanya membantu pengguna memasukkan data dengan format tertentu, tetapi tidak menjamin bahwa data yang dimasukkan benar-benar valid. Oleh karena itu, validator tetap diperlukan untuk memeriksa isi input sebelum data diproses.

## Pengujian

Pengujian aplikasi dilakukan secara manual untuk memeriksa fungsi-fungsi berikut:

- Navigasi menuju halaman Experience melalui kartu aksi Home dan Drawer.
- Validasi formulir ketika input wajib masih kosong.
- Penggunaan Date Picker untuk memilih tanggal mulai dan tanggal selesai.
- Validasi tanggal selesai agar tidak mendahului tanggal mulai.
- Penampilan seluruh data pengalaman dalam AlertDialog setelah formulir berhasil divalidasi.
- Navigasi kembali setelah dialog ditutup.

Pemeriksaan kualitas kode dilakukan menggunakan perintah:

```bash
flutter analyze
```

Hasil pemeriksaan: `No issues found!`.

## Batasan Implementasi

Pada Tugas 8, data pengalaman yang dimasukkan pengguna ditampilkan melalui AlertDialog setelah formulir berhasil divalidasi. Data belum disimpan secara permanen ke database dan belum terhubung dengan API.

### AI DISCLOSURE ###
Dalam pengerjaan Tugas 8, saya menggunakan ChatGPT sebagai alat bantu untuk memahami instruksi tugas, mempelajari implementasi formulir menggunakan Flutter, serta membantu proses debugging. AI digunakan untuk membantu menyusun halaman formulir Experience menggunakan StatefulWidget, Form, dan GlobalKey<FormState>, menerapkan validasi input, menggunakan Date Picker untuk pemilihan tanggal, serta menampilkan ringkasan data melalui AlertDialog. AI juga membantu dalam menghubungkan halaman Experience dengan navigasi melalui kartu aksi di Home dan menu Drawer. Saya memberikan instruksi tugas dan potongan kode yang sedang dikerjakan secara bertahap, kemudian menggunakan saran AI sebagai referensi dalam proses implementasi. Saya tetap memeriksa dan menyesuaikan kode, menjalankan aplikasi, menguji fungsi formulir dan navigasi, serta menjalankan flutter analyze untuk memastikan kode tidak memiliki masalah.