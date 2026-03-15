import 'dart:io';

void main() {
  print('====== Hitung Jumlah Digit ======');
  
  stdout.write('Masukkan sebuah angka bulat: ');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    try {
      int angka = int.parse(input);
      
      // Jika angka negatif, kita ubah jadi positif (absolut) agar penghitungan digit lebih mudah
      int angkaAbsolut = angka.abs();
      int jumlahDigit = 0;
      
      // Khusus untuk angka 0, jumlah digitnya otomatis 1
      if (angkaAbsolut == 0) {
        jumlahDigit = 1;
      } else {
        // Logika menghitung jumlah digit menggunakan perulangan while
        int tempAngka = angkaAbsolut;
        
        while (tempAngka > 0) {
          // Bagi tempAngka dengan 10 (pembagian integer / buang sisa)
          // Contoh: 123 ~/ 10 = 12
          tempAngka = tempAngka ~/ 10; 
          
          jumlahDigit++; // Setiap kali dibagi, tambahkan hitungan digit
        }
      }

      print('\n-> Angka $angka memiliki $jumlahDigit digit.');

    } catch (e) {
      print('\nInput tidak valid. Harap masukkan angka bulat.');
    }
  } else {
    print('\nInput tidak boleh kosong.');
  }
}
