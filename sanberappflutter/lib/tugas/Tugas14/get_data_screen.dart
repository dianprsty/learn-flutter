import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sanberappflutter/tugas/Tugas14/controller/appcontroller.dart';

class GetDataScreenStateManagement extends StatelessWidget {
  const GetDataScreenStateManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AppController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Management GetX"),
      ),
      body: Column(children: [
        Expanded(
          child: Obx(
            () {
              return controller.postloading.value
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      itemCount: controller.getposts.length,
                      itemBuilder: (context, index) {
                        var item = controller.getposts[index];
                        return Card(
                          child: ListTile(
                            title: Text(
                              item.title,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              item.body,
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                            leading: Text(
                              item.id.toString(),
                            ),
                          ),
                        );
                      },
                    );
            },
          ),
        ),
      ]),
    );
  }
}
