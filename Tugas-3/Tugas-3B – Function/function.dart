void main() {
  // Soal 1
  print(teriak());

  // Soal 2
  var num1 = 12;
  var num2 = 4;

  var hasilKali = kalikan(num1, num2);
  print(hasilKali);

  // Soal 3
  var name = "Agus";
  var age = 30;
  var address = "Jln. Malioboro, Yogyakarta";
  var hobby = "Gaming";

  var perkenalan = introduce(name, age, address, hobby);
  print(perkenalan);

  // Soal 4
  print(factorial(2));
}

// Soal 1
String teriak() {
  return "Hello Sanbers!";
}

// Soal 2
int kalikan(int angka1, int angka2) {
  return angka1 * angka2;
}

// Soal 3
String introduce(String name, int age, String address, String hobby) {
  return "Nama saya ${name}, umur saya ${age} tahun, alamat saya di ${address}, dan saya punya hobby yaitu ${hobby}!";
}

// Soal 4
int factorial(int num) {
  if (num <= 1) {
    return 1;
  } else {
    return num * factorial(num - 1);
  }
}
