import 'dart:io';

void main() {
  print('====== Hasil Bagi dan Sisa ======');
  
  // Meminta input bilangan pertama
  stdout.write('Masukkan bilangan pertama: ');
  int? bil1 = int.tryParse(stdin.readLineSync() ?? '');

  // Meminta input bilangan kedua
  stdout.write('Masukkan bilangan kedua: ');
  int? bil2 = int.tryParse(stdin.readLineSync() ?? '');

  // Memeriksa apakah input valid (tidak null)
  if (bil1 != null && bil2 != null) {
    if (bil2 == 0) {
      print('\nBilangan kedua tidak boleh nol (0) untuk operasi pembagian.');
    } else {
      // Hasil bagi dalam Dart menggunakan operator pembagian integer: ~/
      int hasilBagi = bil1 ~/ bil2;

      // Sisa bagi dalam Dart menggunakan operator modulus: %
      int sisa = bil1 % bil2;

      print('\n------ Hasil ------');
      print('Bilangan pertama : $bil1');
      print('Bilangan kedua   : $bil2');
      print('Hasil bagi       : $hasilBagi');
      print('Sisa bagi        : $sisa');
    }
  } else {
    print('\nInput tidak valid. Harap pastikan Anda memasukkan bilangan bulat (angka) saja.');
  }
}
