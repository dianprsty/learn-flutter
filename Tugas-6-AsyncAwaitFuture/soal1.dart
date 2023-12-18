void main() async {
  var h = Human();

  print("Luffy");
  print("zoro");
  print("killer");
  await h.getData();
  print(h.name);
}

class Human {
  String name = "nama character one piece";

  Future<void> getData() {
    return Future.delayed(
        Duration(seconds: 2), () => {name = "dian", print("get data [done]")});
  }
}
