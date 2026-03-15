import 'dart:io';

void main() {
  print('====== Cek Tahun Kabisat ======');
  
  stdout.write('Masukkan sebuah tahun (misal: 2024): ');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    try {
      int tahun = int.parse(input);

      // Algoritma penentuan tahun kabisat (Leap Year)
      // 1. Jika tahun bisa dibagi 400, maka itu adalah tahun kabisat.
      // 2. Jika tidak bisa dibagi 400, tetapi bisa dibagi 4 dan TIDAK bisa dibagi 100, maka itu juga tahun kabisat.
      // 3. Selain kondisi di atas, bukan tahun kabisat.
      
      if ((tahun % 400 == 0) || (tahun % 4 == 0 && tahun % 100 != 0)) {
        print('\nYa, $tahun adalah Tahun Kabisat.');
      } else {
        print('\nBukan, $tahun BUKAN bentuk Tahun Kabisat.');
      }
      
    } catch (e) {
      print('\nInput tidak valid. Harap masukkan angka bulat (contoh: 2024).');
    }
  } else {
    print('\nInput tidak boleh kosong.');
  }
}
