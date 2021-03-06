# LinuxCommand
Pemahaman dan penguasaan perintah dasar Linux akan sangat membantu tugas seorang network administrator.
1. pwd singkatan dari print working directory, yaitu untuk menampilkan directory aktif saat ini.
2. ls [-options] [location], singkatan dari list, yaitu untuk menampilkan seluruh file pada directory aktif atau sesuai dengan location yang dinyatakan. Pemakaian perintah ls dapat juga diikuti dengan options seperti -l untuk menampikan regular file dalam bentuk daftar. (directory/special_permission+permission blocks owner group filesize moditime name). Untuk menampilkan hidden file dapat menambah opsi -a
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
12. () mengelompokan sejumlah karakter dalam kurung sebagai satu kesatuan, contoh (abc|abd) match abc atau abd
13. | mewakili pernyataan atau
14. ^ pencocokan dari awal baris
15. $ pencocokan dari akhir baris
16. ?! negative outlook, contoh (?!abc|abd) match kalau bukan abc atau abd

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
## wildcard ?, *, []
Karakter wildcard adalah sering digunakan untuk operasi terkait dengan file, seperti ls, cp, mv, rm, adapun aturan terkait dengan wildcard adalah:
1. ? mewakili 0 atau 1 karakter
2. \* mewakili 0 atau beberapa karakter
3. [] mewakili range karakter, misalkan [ab] menyatakan karakter a atau b, [^ab] menyatakan bukan karakter a atau b, [0-9] menyatakan karakter 0 sampai 9, [^a-d] menyatakan bukan karakter a-d.
## Permission rwx
Pada setiap file atau directory di Linux memiliki permisi yang terdiri dari tiga segment rwx, yang merupakan segment untuk owner, group, dan others, dimana:
1. r adalah kemampuan membaca (angka 1 pada bit ketiga)
2. w adalah kemampuan menulis (angka 1 pada bit kedua)
3. x adalah kemampuan eksekusi untuk file, atau kemampuan masuk ke direktori (angka 1 pada bit pertama)
Permision rwx adalah direpresentasikan dalam bilangan numerik, misalkan untuk kemampuan baca dan tulis tetapi tidak bisa eksekusi adalah 6 (atau 110 secara biner)
## Special permission
Selain regular permission x (eksekusi), linux juga mengenal spesial permission yang dikenal sebagai SUID dan GUID yang menungkinkan user atau group menjalankan executable tertentu pada Linux dengan menggunakan priviledges root. Berikut ini adalah beberapa perintah Linux yang memiliki SUID:
```
ls -l /bin/su
ls -l /bin/ping
ls -l /bin/mount
ls -l /bin/umount
ls -l /usr/bin/passwd
```
Pengaturan SUID adalah menggunakan perintah:
```
sudo chmod u-s <file>
sudo chmod u+s <file>
```
Sedangkan pengaturan GUID adalah menggunakan perintah:'
```
sudo chmod g-s <file>
sudo chmod g+s <file>
```
Ketika anda memutuskan untuk memberikan permisi SUID ataupun GUID, maka hal tersebut harus dilakukan dengan pertimbangan faktor keamanan, jika tidak maka dapat menimbulkan vulnerabilities pada perangkat lunak yang mungkin dieksploitasi oleh pihak yang tidak bertanggung-jawab.
## Sticky Bit
Selain SUID dan GUID, Linux juga memiliki suatu special permission untuk directory yang hanya memperbolehkan seorang user menghapus file yang dia miliki, mereka tidak dapat menghapus file orang lain tanpa perduli terhadap permission yang tertera pada file dalam directory tersebut. Sticky bit (t) ditempatkan pada bit executable kelompok others. Sticky bit biasanya terdapat pada directory /tmp dan /var/tmp
```
ls -lh -d /tmp
ls -lh -d /var/tmp
```
## Pipeline dan Redirection
Pada sistem operasi Linux, segala hal dinyatakan sebagai hal, sisanya adalah process. Secara umum, suatu command pada Linux memiliki STDIN(0), STDOUT(1), dan STDERR(2) yang memungkinkan redirection output suatu command menjadi file input ke command lain. Beberapa simbol yang dapat digunakan adalah:
1. \> menyimpan output ke file, contoh ls > myoutput.txt, akan menyimpan hasil ls ke file myoutput.txt
2. \>\> menambah output ke file, ls >> myoutput.txt, akan menambah hasil ls ke file myoutput.txt
3. < membaca file sebagai input, wc -l < myinput.txt, akan membaca file myinput sebagai input ke perintah wc -l
4. 2\> redirect pesan error, misalkan tidak ada file myinput.txt, dan perintah ls myinput.txt 2>error.txt akan menyimpan 'no such file or directory' ke file error.txt
5. \| mengirim output suatu command sebagai input bagi command lain, ls | grep '^......rw', akan menampilkan baris file hasil ls yang memiliki hak rw pada user others.
## Process Management
Process management digunakan untuk menampilkan process yang aktif pada Linux.
1. top, menampilkan ringkasan kejadian pada system seperti task aktif, yang running dan sleeping, pemakaian memory dan swap serta daftar process yang berjalan
2. ps [aux], adalah singkatan dari process, misalkan perintah ps aux | grep 'firefox' akan menampilkan baris process terkait dengan aplikasi 'firefox'
3. kill <psid>, menghentikan process id tertentu
## Script
Pembuatan script akan sangat membantu dalam banyak hal, yaitu mengotomatisasi rangkaian perintah yang perlu dilakukan secara berurutan. Adapun beberapa variable yang secara otomatis yang disediakan pada script:
1. $0 nama dari script
2. $1-$9 parameter pertama, kedua dan seterusnya
3. $# jumlah parameter yang dilewatkan ke script
4. $* semua parameter yang dilewatkan ke script
Contoh Bash Script:
```
#!/bin/bash
# Backs up a list of database
if [ $# != 1 ]
then
    echo Usage: Minimal a single argument which is the database to backup
    exit
fi  
date=`date +%F`
# Do we already have a backup folder for todays date?
if [ -d ~/backups/$date.tar.gz ]
then
    echo 'Database already been backed up today, overwrite?'
    read answer
    if [ $answer != 'y' ]
    then
        exit
    fi
fi   
mkdir ~/backups/$date
mysqldump --databases $* > ~/backups/$date/my_databases.sql
tar -czvf ~/backups/$date/my_databases.sql ~/backups/$date
rm -rf ~/backups/$date
rotate = `date +%F --date='-30days'`
#delete 30 days ago backup file
rm ~/backups/$rotate.tar.gz
echo Backup of $1 completed
```
### Pembuatan Function
Pada bash script juga tersedia pembuatan sub untuk memungkinkan pemanggilan berulang terhadap suatu sub-rutin tertentu
```
#!/bin/bash
myfunction(){
   echo "Hello"
   echo "Hendra"
}
#panggil myfunction
myfunction
```
Pada bash script juga dimungkinkan untuk penambahan parameter sebagai input ke sub-rutin
```
#!/bin/bash
myfunction(){
   #tampilkan parameter 1
   echo $1
   #tampilkan parameter 2
   echo $2
}
#panggil myfunction
myfunction "Hello" "Hendra"
```
Pada bash script juga dimungkinkan untuk pengembalian nilai dari sub-rutin
```
#!/bin/bash
tambah(){
   sum=$(($1+$2))
   return $sum
}
read -p "Isikan angka pertama: " int1
read -p "Isikan angka kedua: " int2
tambah $int1 $int2
echo "Hasil tambah kedua angka : " $?
```
Pemakaian while do ... done
```
#!/bin/bash
isvalid=true
count=1
while [ $isvalid ]
do
   echo $count
   if [ $count -eq 5 ];
   then
      break
   fi
   ((count++))
done  
```
Pemakaian for do ... done
```
#!/bin/bash
for (( count=10; count>0; count-- ))
do
   echo -n "$count "
done  
```
Pemakaian if ... elif ... el ... fi
```
#!/bin/bash
echo "Enter a valid number"
read n
if [ $n -eq 101 ];
then
   echo "This is first number"
elif [ $n -eq 510 ];
then
   echo " This is second number "
elif [ $n -eq 999 ];
then
   echo " This is third number "
else
   echo "No numbers over here"
fi  
```
Pemakaian case esac
```
#!/bin/bash
echo " Enter a valid number"
read n
case $n in
101)
   echo " This is the first number " ;;
510)
   echo " This is the second number " ;;
999)
   echo " This is the third number " ;;
*)
   echo " No numbers over here " ;;
esac  
```
