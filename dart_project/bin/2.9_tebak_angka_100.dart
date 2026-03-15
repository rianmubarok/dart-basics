import 'dart:io';
import 'dart:math';

void main() {
  print('====== Permainan Tebak Angka (1-100) ======');
  print('Saya telah memilih sebuah angka antara 1 dan 100.');
  print('Coba tebak!');

  // Menghasilkan angka acak antara 1 dan 100
  Random random = Random();
  int angkaBenar = random.nextInt(100) + 1; // nextInt(100) menghasilkan 0-99, ditambah 1 jadi 1-100
  
  int tebakan = 0;
  int percobaan = 0;

  // Menggunakan do-while: lakukan blok kode setidaknya sekali, lalu cek kondisi
  do {
    stdout.write('\nMasukkan tebakan Anda: ');
    String? input = stdin.readLineSync();
    
    if (input != null && input.isNotEmpty) {
      try {
        tebakan = int.parse(input);
        percobaan++; // Menambah jumlah percobaan setiap kali input valid
        
        if (tebakan < 1 || tebakan > 100) {
          print('Tolong masukkan angka di dalam rentang 1 hingga 100.');
        } else if (tebakan < angkaBenar) {
          print('Tebakan terlalu kecil!');
        } else if (tebakan > angkaBenar) {
          print('Tebakan terlalu besar!');
        }
      } catch (e) {
        print('Input tidak valid. Harap masukkan angka bulat.');
      }
    } else {
      print('Input tidak boleh kosong.');
    }
  } while (tebakan != angkaBenar); // Terus berulang selama tebakan belum sama dengan angka yang benar

  print('\n------ Selamat! ------');
  print('Anda berhasil menebak angka $angkaBenar dengan benar dalam $percobaan percobaan!');
}
