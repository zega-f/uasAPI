1. buat database dengan nama bebas. default : ruang kelas .pwd =''.uname =root
2. setting file .env apabila terdapat perubahan nama database
3. change directory ke directory file ini
4. lakukan php artisan migrate untuk memigrasi semua table kedalam database baru 
(tabel user dan tabel untuk laravel passport)
5. import tblclass.sql (table yang digunakan untuk merequest data kelas) 