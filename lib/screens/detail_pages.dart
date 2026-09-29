import 'package:flutter/material.dart';

import '../models/car.dart';

class DetailPage extends StatelessWidget {
  // Variabel penampung data hewan yang dikirim dari HomePage
  final Car car;

  // Konstruktor untuk mewajibkan HomePage mengirim data 'animal' saat pindah ke halaman ini
  DetailPage({required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          car.name,
        ), // Judul AppBar akan dinamis berubah mengikuti nama hewan yang diklik
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      // SingleChildScrollView agar halamannya bisa discroll ke bawah jika isinya kepanjangan
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Semua konten rata kiri
          children: [
            // Menampilkan gambar besar di paling atas
            Image.network(
              car.image,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),

            // Bungkus konten teks dengan Padding agar tidak menempel di pinggir layar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Car Details:',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 12),
                  // Menampilkan variabel angka langsung menggunakan tanda dolar (${variabel})
                  Text(
                    'Height: ${car.description} ',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Car Description:',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 12),

                  // Bagian ini membongkar (extract) List activities menjadi barisan Widget UI
                  // map() merubah setiap 1 string aktivitas menjadi 1 widget Row
                  // Simbol titik tiga (...) (Spread Operator) digunakan untuk memasukkan list Widget ini ke dalam Column induknya
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
