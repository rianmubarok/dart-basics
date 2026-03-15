import 'dart:io';

void main() {
  print('====== Konversi String ke int ======');
  
  // Meminta input string yang berisi angka dari pengguna
  stdout.write('Masukkan sebuah angka: ');
  String? inputString = stdin.readLineSync();

  if (inputString != null && inputString.isNotEmpty) {
    try {
      // Mengonversi String menjadi int menggunakan int.parse()
      int angka = int.parse(inputString);
      
      print('\n------ Hasil Konversi ------');
      // Nilai dari variabel, bisa dibuktikan dengan melihat tipe datanya lewat .runtimeType
      print('Nilai String asli  : "$inputString" (Tipe: ${inputString.runtimeType})');
      print('Nilai int hasil    : $angka (Tipe: ${angka.runtimeType})');
      
      // Pembuktian dengan operasi matematika (hanya bisa dilakukan jika sudah menjadi int)
      int hasilKali = angka * 2;
      print('\nContoh operasi matematika (hasil * 2): $hasilKali');
      
    } catch (e) {
      print('\nError: Input "$inputString" tidak dapat dikonversi menjadi int.');
      print('Harap pastikan Anda memasukkan angka bulat tanpa huruf atau karakter spesial.');
    }
  } else {
    print('\nInput tidak boleh kosong.');
  }
}
