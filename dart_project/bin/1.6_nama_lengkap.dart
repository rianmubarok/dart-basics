import 'dart:io';

void main() {
  print('====== Cetak Nama Lengkap ======');
  
  // Meminta input nama depan
  stdout.write('Masukkan nama depan Anda: ');
  String? namaDepan = stdin.readLineSync();

  // Meminta input nama belakang
  stdout.write('Masukkan nama belakang Anda: ');
  String? namaBelakang = stdin.readLineSync();

  // Memeriksa apakah input tidak kosong
  if (namaDepan != null && namaBelakang != null && namaDepan.isNotEmpty && namaBelakang.isNotEmpty) {
    // Menggabungkan nama depan dan nama belakang dengan spasi
    String namaLengkap = '$namaDepan $namaBelakang';
    
    // Mencetak nama lengkap
    print('\nHalo, nama lengkap Anda adalah: $namaLengkap');
  } else {
    print('\nNama depan dan nama belakang tidak boleh kosong!');
  }
}
