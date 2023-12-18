void main() {
  print("Life");
  neverFlat();
  print("is");
}

Future<void> neverFlat() {
  return Future(() => print("never flat"));
}
