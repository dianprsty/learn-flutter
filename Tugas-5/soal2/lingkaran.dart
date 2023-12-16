import 'dart:math';

class Lingkaran {
  final double PI = pi;
  late double _luas;
  late double radius;

  Lingkaran(radius) {
    this.radius = radius;
    this._luas = PI * this.radius * this.radius;
  }

  double get luas => _luas;
}
