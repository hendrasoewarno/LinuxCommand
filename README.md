# LinuxCommand
Berikut ini adalah beberapa perintah Linux yang perlu dikuasai oleh Network Administrator untuk memudahkan tugas sehari-hari
1. pwd singkatan dari print working directory, yaitu untuk menampilkan directory aktif saat ini.
2. ls [options] [location], singkatan dari list, yaitu untuk menampilkan seluruh file pada directory aktif atau sesuai dengan location yang dinyatakan. Pemakaian perintah ls dapat juga diikuti dengan options seperti -l untuk menampikan regular file dalam bentuk daftar. (directory+permission blocks owner group filesize moditime name). Untuk menampilkan hidden file dapat menambah opsi -a
3. cd [location], singkatan dari change directory, yaitu digunakan untuk berpindah working directory.
4. man [options] [command], singkatan dari manual, yaitu menampilkan manual terkait dengan perintah tertentu.
5. touch [options] [filename], membuat file baru ataupun mengubah atribut dari file sesuai options.
6. cp [options] <source> <target>, singkatan dari copy, yaitu untuk menduplikasi file atau directory.
7. mv [options] <source> <target>, singkatan dari move, yaitu untuk memindahkan file atau directory.
8. rm [options] <target>, singkatan dari remove, yaitu untuk menghapus file atau directory.
9. cat <file>, singkatan dari concatenate, yang dapat digunakan untuk mengabungkan file, tetapi biasanya digunakan untuk menampilkan isi file berukuran kecil.
10. less <file>, untuk menampilkan isi file berukuran besar yang disertai dengan kemampuan nagivasi, tekan q untuk mengakhiri

## vi <file>
Perintah vi adalah command line editor yang digunakan untuk menampilkan file yang disertai dengan kemampuan search, dan edit. Untuk mengaktifkan modus command pada vi adalah menggunakan tombol ESC dan disertai dengan perintah:
1. ZZ untuk save dan selesai
2. :q! untuk membatalkan perubahan dan selesai
3. :w untuk menyimpan saja
4. :wq untuk menyimpan dan selesai
