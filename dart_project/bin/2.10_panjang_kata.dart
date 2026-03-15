void main() {
  print('====== Hitung Panjang Kata (for-in) ======');

  // Inisialisasi daftar (List) dengan beberapa kata aca
  List<String> daftarKata = ['Pemrograman', 'Dart', 'Sangat', 'Menyenangkan', 'Flutter', 'Kreatif'];

  print('Daftar Kata Asli: $daftarKata\n');
  print('--- Hasil Iterasi ---');

  // Menggunakan perulangan for-in untuk mengulangi setiap elemen di dalam List
  for (String kata in daftarKata) {
    // Menggunakan properti .length untuk mendapatkan jumlah karakter (panjang) dari string tersebut
    int panjangKata = kata.length;
    
    // Mencetak kata beserta jumlah panjang karakternya
    print('Kata: "$kata" | Panjang: $panjangKata karakter');
  }
}
