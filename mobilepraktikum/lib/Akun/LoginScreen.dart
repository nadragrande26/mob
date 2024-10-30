import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Akun/RegisterScreen.dart';
import 'package:myapp/Controller/HomeController.dart';
import 'package:myapp/Screen/mainscreen.dart';


class LoginScreen extends StatelessWidget {
  final HomeController homeController =
      Get.put(HomeController()); // Inisialisasi HomeController
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Simulasi login, ganti logika ini sesuai kebutuhan
                homeController.username.value = usernameController.text;
                Get.to(MainScreen()); // Navigasi ke MainScreen setelah login
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text('Login'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Get.to(RegisterScreen()); // Navigasi ke halaman register
              },
              child: const Text('Daftar'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Aksi untuk Pusat Bantuan
                Get.defaultDialog(
                  title: 'Pusat Bantuan',
                  content: const Text(
                      'Jika Anda memiliki pertanyaan, silakan hubungi kami di support@investyuk.com.'),
                );
              },
              child: const Text('Pusat Bantuan'),
            ),
          ],
        ),
      ),
    );
  }
}
