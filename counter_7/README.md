

Nama: Amira Nisrina Nashita | 
NPM: 2106703815 | 
Kelas: F | 


# Tugas 8: Flutter Form

## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
Navigator.push() menumpuk route teratas sebelumnya dengan widget baru, sedangkan Navigator.pushReplacement() menggantikan route teratas sebelumnya dengan widget baru. Penggunaan push pada navigator tidak menghapus widget sebelumnya, melainkan hanya ditumpuk dengan widget baru, sedangkan pushReplacement menggantikan widget sebelumnya dengan widget baru.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
1. Scaffold, sebagai landasan halaman
2. AppBar, biasanya menjadi judul (dari sebuah aplikasi atau halaman
3. Container, berfungsi untuk membungkus suatu widget dan memberikan pading serta pading
4. Column, semua widget yang ada didalam widget ini akan ditampilkan secara vertical
5. Padding, berufngsi untuk memebrikan jarak pada widget
6. Text, menampilkan teks dan memberikan style pada teksgn
7. Row, semua widget yang ada didalam widget ini akan ditampilkan secara horizontal
8. Icon, memberikan ikon pada sebuah widget
9. DropdownButton, material design button untuk menampung list of item
10. showDatePicker, material design untuk menampilkan dialog date picker
11. dll


## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
1. onSaved
2. onChange
3. onPressed
4. onFocusChange
5. onTap
6. onHover
7. onLongPress


## Cara kerja Navigator
Widget Navigator bekerja dengan menampilkan screen teratas pada stack of route dengan memperhatikan method yang digunakan pada object Navigator. Dalam melakukan navigasi ke layar baru, BuildContext yang menyimpan route widget akan diakses oleh Navigator dengan menggunakan method pada class Navigator seperti push(), pop(), pushReplacement(), dan lain-lain.

## Pengimplementasian Checklist
1. Membuat sebuah halaman baru bernama tambah_budget dan data_budget
2. Membuat sebuah custom Drawer widget dengan menerapkan seperation concern by refactoring untuk ditampilkan di tiap halaman
3. Set up navigasi halaman pada Drawer
4. Membuat global List yang terletak pada root widget untuk menyimpan object Budget
5. Implementasi halaman form dengan beberapa widget TextFormField, DatePicker, dan DropdownMenu
6. Menambahkan package external Intl untuk date formating
7. Handling Save button untuk menyimpan transaksi baru ke dalam global List
8. Menampilkan semua object Budget dengan custom Card widget dengan melakukan iterasi 

# Tugas 7: Elemen Dasar Flutter
## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

Stateless Widget adalah widget yang tidak akan pernah berubah. Stateless Widget  merupakan widget yang di-build hanya dengan konfigurasi yang telah diinisiasi sejak awal.

Misalnya kita membuat aplikasi berisi Text dengan kata “Hello World”. Kemudian aplikasi kita tidak punya fungsi untuk merubah kata tersebut. Dalam kasus yang digunakan di sini adalah Stateless Widget.

Statefull Widget merupakan Widget yang dapat berubah-ubah secara dinamis. Pada Tugas 7 ini kita menerapkan Statefull widget dimana ketika button increment di klik, maka text akan berubah.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Scaffold, sebagai landasan halaman
- AppBar(), biasanya menjadi judul (dari sebuah aplikasi atau halaman)
- Center(), semua Widget yang ada didalam Widget ini akan diletakkan di bagian tengah
- Column(), semua widget yang ada didalam widget ini akan ditampilkan secara vertical
- Row(), semua widget yang ada didalam widget ini akan ditampilkan secara horizontal
- Text(), menampilkan teks dan memberikan style pada teks
- FloatingActionButton(), menampilkan button floating
- Icon(), memberikan ikon pada sebuah widget
- dll.

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
fungsi setState() yang akan bertugas untuk memberitahu widget bahwa ada objek yang berubah pada State sehingga aplikasi akan memuat ulang widget tersebut dengan nilai yang sudah diubah. Yang terdampak pada fungsi ini adalah variabel [counter]

## Jelaskan perbedaan antara const dengan final.
Perbedaan utama ada pada inialisasi nilai (pemberian nilai) dari variabelnya, const mengharuskan variabel harus dinialisasi pada saat kompilasi, nilai bersifat konstan dan secara langsung / eksplisit sehingga pada saat kompilasi variabel const sudah memiliki nilai, sedangkan final tidak mengharuskan variabel memiliki nilai secara langsung / eskplisit pada saat kompilasi.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Membuat condition if-else berdasarkan nilai [counter]
- Membuat Text Widget Genap dan Ganjil, dan melakukan styling warna
- Membuat fungsi decrementCounter()
- Membuat Widget FloatingActionButton baru dibagian bawah kiri dan mengimplementasikan fungsi decrementCounter

