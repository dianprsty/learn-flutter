void main() async {
  print("Ready. Sing");
  await line();
  await line2();
  await line3();
  await line4();
}

Future<void> line() {
  return Future.delayed(
      Duration(seconds: 5), () => print("pernahkah kau merasa"));
}

line2() {
  return Future.delayed(
      Duration(seconds: 3), () => print("pernahkah kau merasa....."));
}

line3() {
  return Future.delayed(
      Duration(seconds: 2), () => print("pernahkah kau merasa"));
}

line4() {
  return Future.delayed(Duration(seconds: 1),
      () => print("Hatimu hampa, pernahkah kau merasa hatimu kosong...."));
}
