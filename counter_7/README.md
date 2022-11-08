# Tugas 7: Elemen Dasar Flutter

Nama: Amira Nisrina Nashita
NPM: 2106703815
Kelas: F

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

