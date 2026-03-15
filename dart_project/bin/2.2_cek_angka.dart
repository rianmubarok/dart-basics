import 'dart:io';

void main() {
  print('====== Cek Angka Positif, Negatif, atau Nol ======');
  
  stdout.write('Masukkan sebuah angka: ');
  String? input = stdin.readLineSync();
  
  if (input != null && input.isNotEmpty) {
    try {
      // Mengonversi input menjadi tipe double agar bisa menerima desimal maupun bilangan bulat
      double angka = double.parse(input);
      
      // Menggunakan fitur "Relational Pattern" pada switch-case
      switch (angka) {
        case > 0:
          print('Positif');
        case < 0:
          print('Negatif');
        case 0:
          print('Nol');
      }

    } catch (e) {
      print('\nInput tidak valid. Harap pastikan Anda memasukkan angka.');
    }
  } else {
    print('\nInput tidak boleh kosong.');
  }
}
