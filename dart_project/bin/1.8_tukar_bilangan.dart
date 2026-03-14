import 'dart:io';

void main() {
  print('====== Tukar Dua Bilangan ======');
  
  stdout.write('Masukkan bilangan pertama (A): ');
  int? a = int.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Masukkan bilangan kedua (B): ');
  int? b = int.tryParse(stdin.readLineSync() ?? '');

  if (a != null && b != null) {
    print('\n------ Sebelum Ditukar ------');
    print('Bilangan A: $a');
    print('Bilangan B: $b');
    // --- Cara 1: Menggunakan variabel sementara (temp) ---
    // Contoh misal a = 4, b = 8
    int temp = a; // temp = 4
    a = b;        // a = 8
    b = temp;     // b = 4 (diambil dari temp)

    print('\n------ Setelah Ditukar (Cara 1: Variabel Temp) ------');
    print('Bilangan A: $a');
    print('Bilangan B: $b');
    
    // Kembalikan ke nilai awal untuk dicoba dengan cara ke-2
    temp = a;
    a = b;
    b = temp;

    // --- Cara 2: Tanpa variabel tambahan (Penambahan & Pengurangan) ---
    // Contoh misal a = 4, b = 8
    a = a + b; // a = 4 + 8 = 12
    b = a - b; // b = 12 - 8 = 4 (b sekarang berisi nilai a awal)
    a = a - b; // a = 12 - 4 = 8 (a sekarang berisi nilai b awal)
    
    print('\n------ Setelah Ditukar (Cara 2: Matematika) ------');
    print('Bilangan A: $a');
    print('Bilangan B: $b');

    // Kembalikan ke nilai awal untuk dicoba dengan cara ke-3
    a = a + b;
    b = a - b;
    a = a - b;

    // --- Cara 3: Menggunakan operator Bitwise XOR ---
    // Khusus bilangan bulat. Contoh misal a = 4 (0100 dalam biner), b = 8 (1000 dalam biner)
    a = a ^ b; // a = 0100 ^ 1000 = 1100 (12 dalam desimal)
    b = a ^ b; // b = 1100 ^ 1000 = 0100 (4 dalam desimal, nilai a awal)
    a = a ^ b; // a = 1100 ^ 0100 = 1000 (8 dalam desimal, nilai b awal)

    print('\n------ Setelah Ditukar (Cara 3: Bitwise XOR) ------');
    print('Bilangan A: $a');
    print('Bilangan B: $b');
  } else {
    print('\nInput tidak valid. Harap pastikan Anda memasukkan angka.');
  }
}
