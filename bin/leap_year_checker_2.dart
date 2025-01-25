import 'dart:io'; // Mengimpor Pustaka Untuk Input Dan Output Dari Pengguna

void main() {
  // Meminta Input Tahun Dari Pengguna
  print('Masukkan Tahun:');
  int tahun = int.parse(stdin.readLineSync()!); // Mengonversi Input Menjadi Integer

  // Memeriksa Apakah Tahun Kabisat Atau Bukan
  if (isLeapYear(tahun)) {
    print('Tahun Kabisat');
  } else {
    print('Bukan Tahun Kabisat');
  }
}

// Fungsi Untuk Memeriksa Apakah Tahun Kabisat
bool isLeapYear(int year) {
  // Tahun Kabisat Harus Memenuhi Dua Kondisi:
  // 1. Tahun Dapat Dibagi 4, Tetapi Tidak Dibagi 100, Kecuali Tahun Itu Juga Dapat Dibagi 400
  return (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
}
