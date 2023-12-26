import 'package:flutter/material.dart';
import 'package:sanberappflutter/tugas/Tugas10/LoginScreen.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Account Screen"),
          SizedBox(
            height: 24,
          ),
          ElevatedButton(
              style: raisedButtonStyle,
              onPressed: () {
                Route route =
                    MaterialPageRoute(builder: (context) => LoginScreen());
                Navigator.push(context, route);
              },
              child: Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ))
        ],
      )),
    );
  }
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  minimumSize: Size(88, 36),
  backgroundColor: Colors.blue[300],
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(6),
    ),
  ),
);
