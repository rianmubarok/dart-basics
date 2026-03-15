void main() {
  print('====== Cetak Daftar Terbalik (for-in) ======');

  List<String> buahBuahan = ['Apel', 'Jeruk', 'Mangga', 'Pisang', 'Durian'];

  print('--- Daftar Asli ---');
  print(buahBuahan);

  print('\n--- Daftar Terbalik (menggunakan for-in) ---');
  
  // Menggunakan properti .reversed untuk membalik urutan iterable dari daftar,
  // lalu melakukan perulangan for-in untuk mencetak setiap elemennya.
  for (String buah in buahBuahan.reversed) {
    print('- $buah');
  }
}
