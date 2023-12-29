import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanberappflutter/tugas/Tugas13/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sanberappflutter/tugas/Tugas14/get_data_screen.dart';
import 'package:sanberappflutter/tugas/Tugas15/pages/page_1.dart';
import 'package:sanberappflutter/tugas/Tugas15/routes/page_routes.dart';
import 'firebase_options.dart';
// import 'package:sanberappflutter/tugas/Tugas10/HomeScreen.dart';
// import 'package:sanberappflutter/tugas/Tugas10/LoginScreen.dart';
// import 'package:sanberappflutter/tugas/tugas9/Telegram.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PageOne(),
      getPages: pageRouteApp.pages,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
