import 'dart:io';

void main() {
  // Soal 1
  print("apakah anda ingin mengistall aplikasi dart (y/t)");
  String? answer = stdin.readLineSync()!;

  print(answer.toLowerCase() == "y"
      ? "anda akan menginstall aplikasi dart"
      : "aborted");

  // Soal 2
  print("masukan nama : ");
  String? nama = stdin.readLineSync();
  print("masukan peran : ");
  String? peran = stdin.readLineSync();

  if (nama!.isEmpty) {
    print("Nama harus diisi!");
  } else {
    if (peran!.toLowerCase() == "penyihir") {
      print("Selamat datang di Dunia Werewolf, ${nama}");
      print(
          "Halo Penyihir ${nama}, kamu dapat melihat siapa yang menjadi werewolf!");
    } else if (peran.toLowerCase() == "guard") {
      print("Selamat datang di Dunia Werewolf, ${nama}");
      print(
          "Halo Guard ${nama}, kamu akan membantu melindungi temanmu dari serangan werewolf.");
    } else if (peran.toLowerCase() == "werewolf") {
      print("Selamat datang di Dunia Werewolf, ${nama}");
      print("Halo Werewolf ${nama}, Kamu akan memakan mangsa setiap malam!");
    } else {
      print("Halo ${nama}, Pilih peranmu untuk memulai game!");
    }
  }

  // Soal 3
  print("Masukan hari :");
  String? hari = stdin.readLineSync()!;

  switch (hari.toLowerCase()) {
    case "senin":
      {
        print(
            "Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.");
        break;
      }
    case "selasa":
      {
        print(
            "Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.");
        break;
      }
    case "rabu":
      {
        print(
            "Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.");
        break;
      }
    case "kamis":
      {
        print(
            "Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.");
        break;
      }
    case "jumat":
      {
        print("Hidup tak selamanya tentang pacar.");
        break;
      }
    case "sabtu":
      {
        print("Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.");
        break;
      }
    case "minggu":
      {
        print(
            "Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.");
        break;
      }
    default:
      {
        print("hari yang anda masukan salah");
      }
  }

  // Soal 4

  var tanggal = 21;
  var bulan = 1;
  var tahun = 1945;

  var bulanString = "";

  switch (bulan) {
    case 1:
      {
        bulanString = "Januari";
        break;
      }
    case 2:
      {
        bulanString = "Februari";
        break;
      }
    case 3:
      {
        bulanString = "Maret";
        break;
      }
    case 4:
      {
        bulanString = "April";
        break;
      }
    case 5:
      {
        bulanString = "Mei";
        break;
      }
    case 6:
      {
        bulanString = "Juni";
        break;
      }
    case 7:
      {
        bulanString = "Juli";
        break;
      }
    case 8:
      {
        bulanString = "Agustus";
        break;
      }
    case 9:
      {
        bulanString = "September";
        break;
      }
    case 10:
      {
        bulanString = "Oktober";
        break;
      }
    case 11:
      {
        bulanString = "November";
        break;
      }
    case 12:
      {
        bulanString = "Desember";
        break;
      }
    default:
      {
        print("Pilih 1 - 12 untuk memilih bulan");
      }
  }

  print("${tanggal} ${bulanString} ${tahun}");
}
