1 # Deklarasi cache_dirpath
   2 cache_dirpath="/sdcard/Movies/.thumbnails /sdcard/Music/.thum     bnails /sdcard/Pictures/.thumbnails /sdcard/MIUI/Gallery/clou     d/.trashBin /sdcard/MIUI/Gallery/cloud/.cache "
   3
   4 #TambahDirectory
   5 $cache_dirpath+="/storage/emulated/0/DCIM/.globalTrash"         6 #Package Aplikasi
   7 app_package="com.miui.miservice"
   8
   9 echo "[+] Menghapus Direcotry [+]"
  10 for index in $cache_dirpath; do
  11 │ echo "Delete directory $index"                               12   su -c "rm -R $index"                                         13 done                                                           14                                                                15 echo "\r\n[+] Membersihkan Aplikasi [+]"                       16 for index in $app_package; do                                  17   echo "Bersihkan Aplikasi: $index"
  18   su -c "pm clear $index"
  19 done
