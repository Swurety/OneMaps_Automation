README

## Program Purpose
This automation program is designed to facilitate testing of the OneMaps dashboard using Robot Framework. It solves the problem of manual testing by providing efficient automation to retrieve data from a GET API and conduct functional tests on web elements in the OneMaps dashboard.

## Fitur Utama

- Mendapatkan Data dari GET API: Mempermudah proses pengujian dengan mengambil data dari API GET untuk digunakan dalam tes.
- Uji Fungsional Dashboard OneMaps: Memastikan elemen dasar pada dashboard OneMaps berfungsi sebagaimana mestinya.
- Integrasi dengan Alat Lain: Menggunakan Robot Framework bersama dengan pustaka dan ekstensi seperti `robotframework-requests`, `robotframework-seleniumlibrary`, dan `robotframework-jsonlibrary`.

## Prasyarat

1. GET API: Mengakses API untuk data pengujian.
2. Testing Dashboard OneMaps: Memastikan fungsi dasar ditampilkan dengan benar di website.
3. Memastikan Button Dasar: Memastikan elemen tombol dasar tampil di website.
4. Uji Fungsional Web OneMaps: Melakukan pengujian fungsional pada website OneMaps.

## Instalasi
1. Python: Unduh dan instal dari [Python.org](https://www.python.org/downloads/).
2. Anaconda: Unduh dan instal dari [Anaconda.com](https://www.anaconda.com/download).
3. Install Dependencies: Jalankan perintah berikut di Command Prompt setelah Python terinstal:
   ```bash
   pip install collection
   pip install jsons
   pip install os-sys
   pip install robotframework-requests
   pip install requests
   pip install robotframework-seleniumlibrary
   pip install screenshot
   pip install robotframework-excellib
   pip install robotframework-jsonlibrary
   pip install selenium
4. Browser driver
5. Extension VSCode: Install ekstensi Python dan Robot Framework Support dari marketplace VSCode.

## Penggunaan
1. Python: Download dari Python.org.
2. Anaconda: Download dari Anaconda.com.
3. Pip Install: Jalankan perintah pip install di Command Prompt setelah Python terinstal.
4. VSCode Extensions: Install ekstensi Python dan Robot Framework Support langsung melalui VSCode.

## Menjalankan Tes
1. Pastikan semua dependensi dan ekstensi telah terinstal.
2. Jalankan skrip Robot Framework melalui Command Prompt atau terminal di VSCode dengan perintah:
	robot [path script].robot

## Contoh Kasus Penggunaan
Contoh penggunaan melibatkan pembuatan otomatisasi langsung di editor teks dengan Robot Framework, untuk menguji fungsionalitas pada dashboard OneMaps.

## Penanganan Kesalahan
1. Kesalahan Instalasi: Pastikan semua dependensi terinstal dengan benar dan periksa versi yang kompatibel.
2. Masalah Pengujian: Periksa skrip Robot Framework untuk kesalahan sintaks atau konfigurasi yang tidak tepat.
3. API Error: Verifikasi endpoint API dan parameter yang digunakan dalam pengujian.

## Kontribusi
Jika Anda ingin berkontribusi pada proyek ini, silakan fork repositori ini dan kirim pull request dengan perubahan atau perbaikan Anda. Pastikan untuk mengikuti pedoman kontribusi yang ada.

## Dokumentasi Tambahan
Untuk informasi lebih lanjut tentang Robot Framework, kunjungi Robot Framework Documentation. Untuk panduan menggunakan pustaka terkait, referensikan dokumentasi masing-masing pustaka seperti robotframework-requests dan robotframework-seleniumlibrary.

## Lisensi
Program ini dilisensikan di bawah Lisensi MIT. Anda bebas untuk menggunakan, memodifikasi, dan mendistribusikan perangkat lunak ini dengan syarat yang tercantum dalam lisensi.
