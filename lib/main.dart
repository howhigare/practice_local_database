import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:crud_database/db/db_helper.dart';
import 'package:crud_database/pages/create/bindings.dart';
import 'package:crud_database/pages/create/create.dart';
import 'package:crud_database/pages/home/bindings.dart';
import 'package:crud_database/pages/home/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.initDb();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: [
        GetPage(
            name: "/",
            page: () => const HomePageView(),
            binding: HomePageBinding()),
        GetPage(
            name: "/create",
            page: () => const CreatePage(),
            binding: CreatePageBinding())
      ],
    );
  }
}