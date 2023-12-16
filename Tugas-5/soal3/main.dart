import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main() {
  var reiner = new ArmorTitan();
  var eren = new AttackTitan();
  var zeke = new BeastTitan();
  var levi = new Human();

  reiner.powerPoint = 2;
  eren.powerPoint = 7;
  zeke.powerPoint = 8;
  levi.powerPoint = 10;

  print("Armor Titan Power : ${reiner.powerPoint}");
  print(reiner.terjang());
  print("");

  print("Attack Titan Power : ${eren.powerPoint}");
  print(eren.punch());
  print("");

  print("Beast Titan Power : ${zeke.powerPoint}");
  print(zeke.lempar());
  print("");

  print("Human Power : ${levi.powerPoint}");
  print(levi.killAlltitan());
  print("");
}
