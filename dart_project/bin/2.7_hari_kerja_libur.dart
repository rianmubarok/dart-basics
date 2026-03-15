import 'dart:io';

void main() {
  print('====== Cek Hari Kerja / Akhir Pekan ======');
  
  stdout.write('Masukkan nama hari dalam seminggu (contoh: Senin): ');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    // Mengubah input hasil trim menjadi huruf kecil semua agar tidak sensitif 
    String hari = input.trim().toLowerCase();

    // Menggunakan switch-case untuk mengelompokkan hari
    switch (hari) {
      // Mengelompokkan case hari kerja ke satu blok eksekusi agar lebih ringkas
      case 'senin':
      case 'selasa':
      case 'rabu':
      case 'kamis':
      case 'jumat':
        print('\n-> Berdasarkan hari yang dimasukkan, "$input" diklasifikasikan sebagai HARI KERJA.');
        break; // Mencegah proses eksekusi terus berjalan jika salah satu case di atas cocok
        
      // Mengelompokkan case akhir pekan ke satu blok eksekusi
      case 'sabtu':
      case 'minggu':
      case 'ahad':
        print('\n-> Yeay! Berdasarkan hari yang dimasukkan, "$input" diklasifikasikan sebagai AKHIR PEKAN (Weekend).');
        break;
        
      default:
        print('\n-> Maaf, "$input" bukan penulisan nama hari yang valid. Harap masukkan hari dalam Bahasa Indonesia dengan benar.');
    }
  } else {
    print('\nInput nama hari tidak boleh kosong.');
  }
}
