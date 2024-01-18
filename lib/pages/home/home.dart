import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:crud_database/pages/home/controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: controller.createNote,
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Obx(
              () => controller.isLoading.value
              ? const Center(
            child: CircularProgressIndicator(),
          )
              : ListView.builder(
            shrinkWrap: true,
            itemCount: controller.notes.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(controller.notes[index].title),
                subtitle: Text(controller.notes[index].content),
                trailing: PopupMenuButton(
                    itemBuilder: (BuildContext context) => [
                      const PopupMenuItem(child: Text("Edit")),
                      PopupMenuItem(
                        child: Text("Delete"),
                        onTap: () => controller
                            .deleteNotes(controller.notes[index].id!),
                      )
                    ]),
              );
            },
          ),
        ),
      ),
    );
  }
}