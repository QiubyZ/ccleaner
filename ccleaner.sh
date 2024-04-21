# Deklarasi cache_dirpath
cache_dirpath="/sdcard/Movies/.thumbnails /sdcard/Music/.thumbnails /sdcard/Pictures/.thumbnails /sdcard/MIUI/Gallery/cloud/.trashBin /sdcard/MIUI/Gallery/cloud/.cache "

#TambahDirectory
$cache_dirpath+="/storage/emulated/0/DCIM/.globalTrash"
#Package Aplikasi
app_package="com.miui.miservice"

echo "[+] Menghapus Direcotry [+]"
for index in $cache_dirpath; do 
	echo "Delete directory $index"
  su -c "rm -R $index"
done

echo "\r\n[+] Membersihkan Aplikasi [+]"
for index in $app_package; do 
  echo "Bersihkan Aplikasi: $index"
  su -c "pm clear $index"
done
