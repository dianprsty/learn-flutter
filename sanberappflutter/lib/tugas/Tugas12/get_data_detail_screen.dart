import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class GetDataDetailScreen extends StatefulWidget {
  int? value;
  GetDataDetailScreen({Key? key, this.value}) : super(key: key);

  @override
  _GetDataDetailScreenState createState() => _GetDataDetailScreenState(value);
}

class _GetDataDetailScreenState extends State<GetDataDetailScreen> {
  int? value;
  _GetDataDetailScreenState(this.value);
  Map? data;
  String? uri;

  @override
  void initState() {
    var url = "https://reqres.in/api/users/${value.toString()}";
    _getRefreshData(url);

    super.initState();
    print("susu +$value");
  }

  Future<void> _getRefreshData(url) async {
    getJsonData(context, url);
  }

  Future<void> getJsonData(BuildContext context, url) async {
    var response =
        await http.get(Uri.parse(url), headers: {"Accept": "application/json"});
    print(response.body);
    setState(() {
      var convertDataToJson = jsonDecode(response.body);
      data = convertDataToJson['data'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Data Api reqres"),
      ),
      body: Container(
          child: data == null
              ? Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.grey,
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Loading...",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.network(data!["avatar"], height: 200, width: 200),
                      Text(
                        data!["first_name"] + " " + data!["last_name"],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        data!["email"],
                        style: TextStyle(color: Colors.grey[800]),
                      )
                    ],
                  ),
                )
          // ListTile(
          //     leading: Image.network(data!["avatar"]),
          //     title: Text(data!["first_name"] + " " + data!["last_name"]),
          //     subtitle: Text(data!["email"]),
          //   ),
          ),
    );
  }
}
