import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:crud_database/models/note.dart';

class CreatePageController extends GetxController {
  var titleController = TextEditingController();
  var contentController = TextEditingController();
  Note? oldNote;

  @override
  void onInit() {
    super.onInit();
    if (oldNote != null) {
      titleController.text = oldNote!.title;
      contentController.text = oldNote!.content;
    }
  }

  void onSubmit() {
    if (titleController.text.trim().isNotEmpty &&
        contentController.text.trim().isNotEmpty) {
      Get.back(
        result: Note(
            title: titleController.text,
            content: contentController.text,
            id: oldNote?.id
        ),
      );
    }
  }
}