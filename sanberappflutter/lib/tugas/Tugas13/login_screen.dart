import 'package:flutter/material.dart';
import 'package:sanberappflutter/tugas/Tugas13/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  registerSubmit() async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: _emailController.text.toString().trim(),
          password: _passwordController.text);
    } catch (e) {
      print(e);
      SnackBar(
        content: Text(e.toString()),
      );
    }
  }

  loginSubmit() async {
    try {
      _firebaseAuth
          .signInWithEmailAndPassword(
            email: _emailController.text,
            password: _passwordController.text,
          )
          .then(
            (value) => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            ),
          );
    } catch (e) {
      print(e);
      SnackBar(
        content: Text(e.toString()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(top: 40),
              child: const Text(
                "Sanber Flutter",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/img/flutter.png",
                height: 100,
                width: 100,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Forgot Password"),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                  style: raisedButtonStyle,
                  child: const Text(
                    "Register",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    registerSubmit();
                  }),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: raisedButtonStyle,
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  loginSubmit();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  minimumSize: const Size(88, 36),
  backgroundColor: Colors.blue[300],
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(6),
    ),
  ),
);
