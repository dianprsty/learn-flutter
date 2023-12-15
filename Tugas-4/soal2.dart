// Soal 2 - Generate List from range with step
void main() {
  print(rangeWithStep(1, 10, 2));
  print(rangeWithStep(11, 23, 3));
  print(rangeWithStep(5, 2, 1));
  print(rangeWithStep(7, 7, 4));
}

List<int> rangeWithStep(int startNum, int finishNum, int step) {
  return startNum < finishNum
      ? [for (var i = startNum; i <= finishNum; i += step) i]
      : [for (var i = startNum; i >= finishNum; i -= step) i];
}
