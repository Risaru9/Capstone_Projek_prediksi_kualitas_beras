# Capstone Project: Deteksi Kualitas Beras (RiceTech)

Sebuah aplikasi web untuk menganalisis dan mendeteksi kualitas beras secara otomatis dari gambar menggunakan model *object detection* YOLOv8.

![Tangkapan Layar Aplikasi RiceTech](static/assets/Web.png)

---

## 📖 Deskripsi

**RiceTech** adalah aplikasi web yang dibangun sebagai *capstone project* untuk mengklasifikasikan kualitas beras. Aplikasi ini menggunakan model *Deep Learning* (YOLOv8) yang telah dilatih untuk mengidentifikasi dan menghitung objek beras, seperti beras utuh dan beras patah.

Berdasarkan hasil deteksi, aplikasi akan menghitung rasio, memberikan penilaian kualitas (misalnya "Kualitas: C (Kurang Baik)"), dan memberikan ringkasan yang dapat diunduh oleh pengguna.

## ✨ Fitur Utama

* ⬆️ **Unggah Gambar:** Pengguna dapat mengunggah foto beras untuk dianalisis.
* 🤖 **Deteksi Objek:** Menggunakan model YOLOv8 (`best.pt`) untuk mendeteksi dan menghitung jumlah beras utuh, beras patah, dan objek lainnya.
* 📊 **Visualisasi Hasil:** Menampilkan gambar hasil deteksi dengan *bounding box* dan diagram lingkaran (*pie chart*) untuk distribusi kualitas.
* 📝 **Penilaian & Saran:** Memberikan *grade* kualitas (mis. A, B, C) dan saran berdasarkan hasil deteksi.
* 📄 **Unduh Gambar:** Pengguna dapat mengunduh Gambar yang sudah dideteksi.
* 📄 **Unduh Laporan PDF:** Pengguna dapat mengunduh ringkasan analisis lengkap dalam format PDF (dibuat menggunakan FPDF2).

---

## 🚀 Cara Penggunaan

1.  Buka aplikasi web di browser Anda.
2.  *Scroll* ke bagian **"Unggah Foto Beras"**.
3.  Klik tombol **"Pilih File"** dan pilih gambar beras yang ingin Anda analisis.
4.  Tekan tombol **"Deteksi Sekarang"**. Aplikasi akan memproses gambar.
5.  Lihat hasilnya di bagian **"Hasil Deteksi"**. Anda akan melihat:
    * Gambar asli dengan kotak-kotak deteksi.
    * Diagram lingkaran (*pie chart*) distribusi kualitas.
    * Penilaian akhir (misal: "Kualitas: C").
    * Rincian jumlah objek yang terdeteksi.
6.  Klik tombol **"Download PDF"** untuk menyimpan laporan analisis ke komputer Anda.

---

## 💻 Teknologi yang Digunakan

* **Machine Learning:** Ultralytics (YOLOv8)
* **Backend:** Flask
* **Frontend:** HTML, CSS, JavaScript (dengan Chart.js untuk diagram)
* **Pemrosesan Gambar:** Pillow (PIL)
* **Generasi Laporan:** FPDF2
* **Server WSGI:** Gunicorn
* **Deployment:** Railway

---

## 🚀 Instalasi & Menjalankan Lokal

Ikuti langkah-langkah ini untuk menjalankan proyek di komputer lokal Anda.

**1. Clone Repositori:**
```bash
git clone [https://github.com/Risaru9/Capstone_Projek_prediksi_kualitas_beras.git](https://github.com/Risaru9/Capstone_Projek_prediksi_kualitas_beras.git)
cd Capstone_Projek_prediksi_kualitas_beras


