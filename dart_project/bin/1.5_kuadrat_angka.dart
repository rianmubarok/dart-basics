import 'dart:io';

void main() {
  print('====== Menghitung Nilai Kuadrat/Persegi ======');
  stdout.write('Masukkan sebuah angka: ');
  
  // Membaca input dari pengguna
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    try {
      // Mengubah input string menjadi angka (double, agar bisa menerima desimal maupun bilangan bulat)
      double angka = double.parse(input);
      
      // Menghitung nilai kuadrat (persegi dari angka)
      double kuadrat = angka * angka;
      
      print('Kuadrat dari $angka adalah $kuadrat');
    } catch (e) {
      print('Input tidak valid. Harap pastikan Anda memasukkan angka.');
    }
  } else {
    print('Input tidak boleh kosong.');
  }
}
