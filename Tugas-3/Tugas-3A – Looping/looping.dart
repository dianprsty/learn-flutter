void main() {
  // Soal 1
  var i = 2;
  var isGoUp = true;

  while (i > 0) {
    if (isGoUp) {
      if (i == 2) {
        print("LOOPING PERTAMA");
      }
      print("${i} - I love coding");
      i += 2;
    } else {
      if (i == 20) {
        print("LOOPING KEDUA");
      }
      print("${i} - I will become a mobile developer");
      i -= 2;
    }
    if (i == 20) {
      isGoUp = false;
      print("${i} - I love coding");
    }
  }

  print("\n----------------------\n");

  // Soal 2
  for (var i = 1; i <= 20; i++) {
    if (i % 2 == 0) {
      print("${i} - Berkualitas");
    } else {
      if (i % 3 == 0) {
        print("${i} - I Love Coding");
      } else {
        print("${i} - Santai");
      }
    }
  }

  print("\n----------------------\n");

  // Soal 3
  for (var i = 0; i < 4; i++) {
    var temp = "";
    for (var j = 0; j < 8; j++) {
      temp += "#";
    }
    print(temp);
  }

  print("\n----------------------\n");

  // Soal 4
  for (var i = 0; i < 7; i++) {
    var temp = "";
    for (var j = 0; j <= i; j++) {
      temp += "#";
    }
    print(temp);
  }
}
