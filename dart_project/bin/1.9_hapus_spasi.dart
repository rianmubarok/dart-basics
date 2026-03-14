import 'dart:io';

void main() {
  print('====== Hapus Spasi dari String ======');
  
  // Meminta input string dari pengguna
  stdout.write('Masukkan sebuah kalimat atau kata berspasi: ');
  String? kalimat = stdin.readLineSync();

  // Memeriksa apakah input ada dan tidak null
  if (kalimat != null && kalimat.isNotEmpty) {
    print('\n------ Sebelum Dihapus Spasinya ------');
    print('"$kalimat"');

    // Menghapus semua spasi menggunakan method replaceAll
    String kalimatTanpaSpasi = kalimat.replaceAll(' ', '');

    print('\n------ Setelah Dihapus Spasinya ------');
    print('"$kalimatTanpaSpasi"');
  } else {
    print('\nInput tidak boleh kosong.');
  }
}
