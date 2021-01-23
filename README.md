# LinuxCommand
Berikut ini adalah beberapa perintah Linux yang perlu dikuasai oleh Network Administrator untuk memudahkan tugas sehari-hari
1. pwd singkatan dari print working directory, yaitu untuk menampilkan directory aktif saat ini.
2. ls [-options] [location], singkatan dari list, yaitu untuk menampilkan seluruh file pada directory aktif atau sesuai dengan location yang dinyatakan. Pemakaian perintah ls dapat juga diikuti dengan options seperti -l untuk menampikan regular file dalam bentuk daftar. (directory+permission blocks owner group filesize moditime name). Untuk menampilkan hidden file dapat menambah opsi -a
3. cd [location], singkatan dari change directory, yaitu digunakan untuk berpindah working directory.
4. man [-options] [command], singkatan dari manual, yaitu menampilkan manual terkait dengan perintah tertentu.
5. touch [-options] [filename], membuat file baru ataupun mengubah atribut dari file sesuai options.
6. cp [-options] <source> <target>, singkatan dari copy, yaitu untuk menduplikasi file atau directory.
7. mv [-options] <source> <target>, singkatan dari move, yaitu untuk memindahkan file atau directory.
8. rm [-options] <target>, singkatan dari remove, yaitu untuk menghapus file atau directory.
9. cat <file>, singkatan dari concatenate, yang dapat digunakan untuk mengabungkan file, tetapi biasanya digunakan untuk menampilkan isi file berukuran kecil.
10. less <file>, untuk menampilkan isi file berukuran besar yang disertai dengan kemampuan nagivasi, tekan q untuk mengakhiri
11. head [-number of lines] <file>, menampilkan n jumlah baris pertama dari suatu file
12. tail [-number of lines] <file>, menampilkan n jumlah baris terakhir dari suatu file
13. sed <expression> <file>, melakukan operasi search and replace pada file. contoh sed 's/banana/orange/g' fruit adalah operasi menganti seluruh kata banana menjadi orange dalam file fruit.
14. egrep [-options] <pattern> <file>, menampilkan baris yang memenuhi pola pencarian berdasarkan ekspresi reqular, contoh egrep 'mellon' fruit akan menampilkan baris yang memiliki kata mellon, seperti mellon, water mellon dan winter mellon. contoh egrep -n 'mellon' fruit akan menambilkan nomor baris dan baris yang memiliki kata mellon. contoh egrep -c 'mellon' fruit akan menampilkan jumlah baris yang mengandung kata mellon.
15. which <command>, menampilkan lokasi binary dari suatu command, misalkan which ls akan menampilkan /bin/ls
  
## Regular Expression
Pengetahuan terkait dengan ekspresi regular dapat membantu pada perintah yang mendukung pencocokan pattern seperti egrep. Adapun aturan pada suatu ekspresi regular adalah:
1. . (titik) mewakili suatu karakter tunggal
2. ? (tanda tanya) mewakili 0 atau 1 karakter didepannya
3. \* (asterik) mewakili 0 atau sejumlah karakter didepannya
4. \+ (plus) mewakili minimal 1 atau sejumlah karakter didepannya
5. {n} mewakili persis n jumlah karakter didepannya
6. {n,m} mewakili n sampai m jumlah karakter didepannya
9. [agd] mewakili salah satu karakter didalam kurung
10. [^agd] mewakili satu karakter yang tidak ada dalam kurung
11. [c-f] mewakili satu karakter c sampai f
12. () mengelompokan sejumlah karakter dalam kurung sebagai satu kesatuan
13. | mewakili pernyataan atau
14. ^ pencocokan dari awal baris
15. $ pencocokan dari akhir baris
### Contoh
1. egrep '[aeiou]{2,}' fruit, akan menampilkan baris memiliki nama buah yang memiliki 2 atau lebih huruf hidup
2. egrep '^a' fruit, menampilkan baris yang diawali dengan huruf a
3. egrep 'a$' fruit, menampilkan baris yang diakhiri dengan huruf a


## vi <file>
Perintah vi adalah command line editor yang digunakan untuk menampilkan file yang disertai dengan kemampuan search, dan edit. Untuk mengaktifkan modus command pada vi adalah menggunakan tombol ESC dan disertai dengan perintah:
1. ZZ untuk save dan selesai
2. :q! untuk membatalkan perubahan dan selesai
3. :w untuk menyimpan saja
4. :wq untuk menyimpan dan selesai
Selain tombol panah, anda dapat menekan ESC disertai dengan kombinasi key berikut untuk melakukan navigasi didalam file:
1. j, k, h, l untuk mengerakan kursor ke bawah, atas, kiri dan kanan
2. ^ untuk mengerakan kursor ke awal baris
3. $ untuk mengerakan kursor ke akhir baris
4. nG untuk mengerakan kursor n baris berikutnya (misalkan 5G untuk 5 baris berikutnya)
5. G untuk mengerakan kursor ke baris terakhir
6. w untuk mengerakan kursor ke awal kata berikutnya
7. nw untuk mengerakan kursor ke awal n kata berikutnya
8. b untuk mengerakan kursor ke awal kata sebelumnya
9. { bergerak satu paragraf sebelumnya
10. } bergerak satu paragraf berikutnya
# wildcard ?, *, []
Karakter wildcard adalah sering digunakan untuk operasi terkait dengan file, seperti ls, cp, mv, rm, adapun aturan terkait dengan wildcard adalah:
1. ? mewakili 0 atau 1 karakter
2. \* mewakili 0 atau beberapa karakter
3. [] mewakili range karakter, misalkan [ab] menyatakan karakter a atau b, [^ab] menyatakan bukan karakter a atau b, [0-9] menyatakan karakter 0 sampai 9, [^a-d] menyatakan bukan karakter a-d.
# Permission rwx
Pada setiap file atau directory di Linux memiliki permisi yang terdiri dari tiga segment rwx, yang merupakan segment untuk owner, group, dan others, dimana:
1. r adalah kemampuan membaca (angka 1 pada bit ketiga)
2. w adalah kemampuan menulis (angka 1 pada bit kedua)
3. x adalah kemampuan eksekusi untuk file, atau kemampuan masuk ke direktori (angka 1 pada bit pertama)
Permision rwx adalah direpresentasikan dalam bilangan numerik, misalkan untuk kemampuan baca dan tulis tetapi tidak bisa eksekusi adalah 6 (atau 110 secara biner)
# Pipeline dan Redirection
Secara umum, suatu command pada Linux memiliki STDIN(0), STDOUT(1), dan STDERR(2) yang memungkinkan redirection output suatu command menjadi input ke command lain. Beberapa simbol yang dapat digunakan adalah:
1. \> menyimpan output ke file, contoh ls > myoutput.txt, akan menyimpan hasil ls ke file myoutput.txt
2. \>\> menambah output ke file, ls >> myoutput.txt, akan menambah hasil ls ke file myoutput.txt
3. < membaca file sebagai input, wc -l < myinput.txt, akan membaca file myinput sebagai input ke perintah wc -l
4. 2\> redirect pesan error, misalkan tidak ada file myinput.txt, dan perintah ls myinput.txt 2>error.txt akan menyimpan 'no such file or directory' ke file error.txt
5. \| mengirim output suatu command sebagai input bagi command lain, ls | grep '^......rw', akan menampilkan baris file hasil ls yang memiliki hak rw pada user others.
# Process Management
Process management digunakan untuk menampilkan process yang aktif pada Linux.
1. top, menampilkan ringkasa kejadian pada system seperti task aktif, yang running dan sleeping, pemakaian memory dan swap serta daftar process yang berjalan
2. ps [aux], adalah singkatan dari process, misalkan perintah ps aux | grep 'firefox' akan menampilkan baris process terkait dengan aplikasi 'firefox'
3. kill <psid>, menghentikan process id tertentu
  
