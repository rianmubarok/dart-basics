import 'dart:io';

void main() {
  stdout.write('Masukkan nama Anda: ');
  String? nama = stdin.readLineSync();

  if (nama != null && nama.isNotEmpty) {
    // Mencetak dengan tanda kutip ganda dalam string (menggunakan petik tunggal untuk membungkus string luar)
    print('Hello, saya "$nama"');
    
    // Mencetak dengan tanda kutip tunggal dalam string (menggunakan petik ganda untuk membungkus string luar)
    print("Hello, saya '$nama'");
  } else {
    print('Nama tidak boleh kosong.');
  }
}
