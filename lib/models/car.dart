// Mendefinisikan class Animal sebagai cetak biru data
class Car {
  // Deklarasi variabel menggunakan 'final' karena data tidak akan berubah setelah dibuat
  final int id;
  final String name; // Nama hewan
  final String brand; // Jenis hewan (Mamalia, Reptil, dll)
  final double year; // Berat hewan (pakai double karena ada angka desimal)
  final int price; // Tempat hidup (pakai List karena bisa lebih dari satu)
  final String description;
  final String image; // URL gambar hewan dari internet

  // Konstruktor (Constructor) untuk membuat objek Animal baru
  // Kata kunci 'required' memastikan semua data ini wajib diisi saat objek dibuat
  Car({
    required this.id,
    required this.name,
    required this.brand,
    required this.year,
    required this.price,
    required this.description,
    required this.image,
  });
}
