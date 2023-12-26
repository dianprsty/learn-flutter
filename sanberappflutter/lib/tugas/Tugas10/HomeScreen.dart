import 'package:flutter/material.dart';
import 'package:sanberappflutter/tugas/Tugas11/AccountScreen.dart';
import 'package:sanberappflutter/tugas/Tugas11/SearchScreen.dart';
import 'package:sanberappflutter/tugas/tugas9/DrawerScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        actions: <Widget>[
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: null, icon: Icon(Icons.notifications)),
                IconButton(onPressed: null, icon: Icon(Icons.extension))
              ],
            ),
          )
        ],
        backgroundColor: const Color(0xFF65a9e0),
      ),
      drawer: const DrawerScreen(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: "Welcome \n",
                      style: TextStyle(color: Colors.blue[300])),
                  TextSpan(
                      text: "Dian, \n",
                      style: TextStyle(color: Colors.blue[900]))
                ],
              ),
              style: TextStyle(fontSize: 50),
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  size: 18,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Search",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Recomended Place",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(
              height: 250,
              child: GridView.count(
                padding: EdgeInsets.all(5),
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  for (var country in countries)
                    Image.asset("assets/img/$country.png")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final countries = ["Tokyo", "Berlin", "Roma", "Monas"];
