
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Akun/LoginScreen.dart';
import 'package:myapp/Screen/newsscreen.dart';


void mainscreen() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'InvestYuk',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/', // Halaman awal
      getPages: [
        GetPage(name: '/', page: () => LoginScreen()), // Rute LoginScreen
        GetPage(name: '/news', page: () => NewsScreen()), // Rute NewsScreen
      ],
    );
  }
}

class UMKM {
  String name;
  String location;
  String performance;

  UMKM({
    required this.name,
    required this.location,
    required this.performance,
  });
}
