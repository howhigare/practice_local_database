import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:crud_database/pages/home/controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
        backgroundColor: Colors.deepPurple, // Warna latar belakang App Bar
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.createNote,
        child: const Icon(Icons.add),
        backgroundColor: Colors.deepPurple, // Warna latar belakang FAB
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
              return Card(
                elevation: 3, // Elevasi kartu
                margin: const EdgeInsets.all(8), // Ruang antar kartu
                child: ListTile(
                  title: Text(controller.notes[index].title),
                  subtitle: Text(controller.notes[index].content),
                  trailing: PopupMenuButton(
                    itemBuilder: (BuildContext context) => [
                      PopupMenuItem(child: Text("Edit"),
                        onTap: () => controller.updateNote(index),
                      ),

                      PopupMenuItem(
                        child: Text("Delete"),
                        onTap: () =>
                            controller.deleteNotes(controller.notes[index].id!),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
