import 'dart:io';

void main() {
  print('====== Cek Kelayakan Memilih (Voting) ======');
  
  stdout.write('Masukkan usia Anda: ');
  String? input = stdin.readLineSync();
  
  if (input != null && input.isNotEmpty) {
    try {
      // Mengonversi input string menjadi integer (usia pasti bilangan bulat)
      int usia = int.parse(input);
      
      if (usia < 0) {
        print('\nUsia tidak mungkin bernilai negatif!');
      } else if (usia >= 17) {
        // Logika syarat utama: usia >= 17 tahun
        print('\nSelamat! Anda sudah memenuhi syarat untuk mengikuti pemilu (memilih).');
      } else {
        // Menambahkan sedikit variasi hitungan selisih tahun
        int sisaTahun = 17 - usia;
        print('\nMaaf, Anda belum memenuhi syarat untuk memilih.');
        print('Anda harus menunggu $sisaTahun tahun lagi (minimal usia 17 tahun).');
      }
    } catch (e) {
      print('\nInput tidak valid. Harap pastikan Anda memasukkan angka bulat saja.');
    }
  } else {
    print('\nInput usia tidak boleh kosong.');
  }
}
