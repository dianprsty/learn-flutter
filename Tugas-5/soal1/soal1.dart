void main() {
  double setengah, alas, tinggi;
  setengah = 0.5;
  alas = 20.0;
  tinggi = 30.0;

  var segitiga = new Segitiga(setengah, alas, tinggi);

  print("Luas Segititga = ${segitiga.hitungLuas()}");
}

class Segitiga {
  late double setengah, alas, tinggi;

  Segitiga(setengah, alas, tinggi) {
    this.setengah = setengah;
    this.alas = alas;
    this.tinggi = tinggi;
  }

  double hitungLuas() {
    return setengah * alas * tinggi;
  }
}
