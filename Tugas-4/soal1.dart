// Soal 1 - Generate List from range
void main() {
  print(range(1, 10));
  print(range(11, 18));
  print(range(20, 5));
  print(range(7, 7));
}

List<int> range(int startNum, int finishNum) {
  return startNum < finishNum
      ? [for (var i = startNum; i <= finishNum; i++) i]
      : [for (var i = startNum; i >= finishNum; i--) i];
}
