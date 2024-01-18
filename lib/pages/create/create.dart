import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:crud_database/pages/create/controller.dart';

class CreatePage extends GetView<CreatePageController> {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: controller.titleController,
            decoration: InputDecoration(
                labelText: "Title", border: OutlineInputBorder()
            ),
          ),
          TextField(
            controller: controller.contentController,
            decoration: InputDecoration(
                labelText: "Content", border: OutlineInputBorder()
            ),
          ),
          Spacer(),
          ElevatedButton(onPressed: controller.onSubmit, child: Text("SUBMIT"))
        ],
      ),
    );
  }
}