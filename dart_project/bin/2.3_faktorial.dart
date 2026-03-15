import 'dart:io';

void main() {
  print('====== Hitung Faktorial ======');
  
  stdout.write('Masukkan sebuah angka bulat positif: ');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    try {
      int angka = int.parse(input);

      if (angka < 0) {
        print('\nFaktorial tidak didefinisikan untuk angka negatif.');
      } else {
        // Logika untuk menghitung faktorial menggunakan perulangan while
        // Faktorial dari n (n!) = n * (n - 1) * (n - 2) * ... * 1
        // Khusus untuk 0! = 1.
        
        int faktorial = 1;
        int i = angka; // i adalah variabel counter (penghitung)

        while (i > 0) {
          faktorial = faktorial * i;
          i--; // decrement i untuk perulangan selanjutnya
        }

        print('\n------ Hasil ------');
        print('Faktorial dari $angka ($angka!) adalah: $faktorial');
      }
    } catch (e) {
      print('\nInput tidak valid. Harap masukkan angka bulat (integer).');
    }
  } else {
    print('\nInput tidak boleh kosong.');
  }
}
