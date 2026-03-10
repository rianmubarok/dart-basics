void main() {
  // P = Principal (Pokok Pinjaman/Tabungan)
  // T = Time (Waktu dalam tahun)
  // R = Rate (Suku Bunga tahunan dalam %)
  
  double p = 1000000; // Contoh Pokok: Rp 1.000.000
  double t = 2;       // Contoh Waktu: 2 tahun
  double r = 5;       // Contoh Suku Bunga: 5% dari pokok

  // Menghitung bunga menggunakan rumus
  double bungaSederhana = (p * t * r) / 100;

  print('====== Kalkulator Bunga Sederhana ======');
  print('Pokok Pinjaman/Tabungan (P) : Rp $p');
  print('Lama Waktu (T)              : $t tahun');
  print('Suku Bunga (R)              : $r%');
  print('------------------------------------');
  print('Total Bunga didapat         : Rp $bungaSederhana');
}
