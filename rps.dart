import 'dart:io';
import 'dart:math';

enum Hareket {tas, kagit, makas}

void main() {
  while (true) {
    stdout.write("Taş, Kağıt, Makas Oyununa Hoşgeldiniz! // Taş için(t), Kağıt için(k), Makas için(m), Çıkmak için(q) Giriniz ----------------->");
    final input = stdin.readLineSync();

    //Oyuncu Hareketleri
    var oyuncuHareket;
    var oyuncuHareketisim;

    if (input == 't') {
      oyuncuHareket = Hareket.tas;
      oyuncuHareketisim = "Taş";
    }
    else if (input == 'k') {
      oyuncuHareket = Hareket.kagit;
      oyuncuHareketisim = "Kağıt";
    }
    else if (input == 'm') {
      oyuncuHareket = Hareket.makas;
      oyuncuHareketisim = "Makas";
    }
    else if (input == 'q') {
      break;
    }
    else{
      print("Geçersiz giriş. Tekrar deneyiniz.");
      return main() ;
    }

    //Bilgisayar Hareketleri
    final randomSayi = Random().nextInt(3);
    final pcHareket = Hareket.values[randomSayi];
    var pcHareketisim;

    if (randomSayi == 0) {
      pcHareketisim = "Taş";
    }
    else if (randomSayi == 1) {
      pcHareketisim = "Kağıt";
    }
    else if (randomSayi == 2) {
      pcHareketisim = "Makas";
    }

    //Ekranda Gösterim
    print("Senin Hareketin: $oyuncuHareketisim");
    print("Bilgisayarın Hareketi: $pcHareketisim");

    //Oyun Mantığı
    if (oyuncuHareket == Hareket.tas && pcHareket == Hareket.makas ||
        oyuncuHareket == Hareket.kagit && pcHareket == Hareket.tas ||
        oyuncuHareket == Hareket.makas && pcHareket == Hareket.kagit) {
      print("Sen Kazandın!");
    }
    else if (oyuncuHareket == pcHareket) {
      print("Berabere!");
    }
    else {
      print("Bilgisayar Kazandı!");
    }


    
  }
}
