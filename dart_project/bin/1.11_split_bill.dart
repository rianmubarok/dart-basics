import 'dart:io';

void main() {
  print('====== Kalkulator Pisah Bill (Split Bill) ======');
  
  // Meminta input total tagihan
  stdout.write('Masukkan total tagihan (Rp): ');
  double? totalTagihan = double.tryParse(stdin.readLineSync() ?? '');

  // Meminta input jumlah orang
  stdout.write('Masukkan jumlah orang: ');
  int? jumlahOrang = int.tryParse(stdin.readLineSync() ?? '');

  // Validasi input
  if (totalTagihan != null && jumlahOrang != null) {
    if (jumlahOrang <= 0) {
      print('\nOops! Jumlah orang harus lebih dari 0.');
    } else if (totalTagihan < 0) {
      print('\nOops! Total tagihan tidak bisa bernilai negatif.');
    } else {
      // Menghitung pembagian tagihan: (total tagihan) / jumlah orang
      double jumlahPerOrang = totalTagihan / jumlahOrang;

      print('\n------ Hasil Pembagian ------');
      print('Total Tagihan   : Rp $totalTagihan');
      print('Jumlah Orang    : $jumlahOrang orang');
      print('-----------------------------');
      // toStringAsFixed(2) digunakan agar hasil desimal lebih rapi (maksimal 2 angka di belakang koma)
      print('Masing-masing harus membayar: Rp ${jumlahPerOrang.toStringAsFixed(2)}');
    }
  } else {
    print('\nInput tidak valid. Harap pastikan Anda memasukkan angka yang benar.');
  }
}
