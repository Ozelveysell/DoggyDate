import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF9AEC),
        title: const Text('Kayıt Ol'),
      ),
      backgroundColor: const Color(0xFFFF9AEC), // Arka plan rengi
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/Fur.png',
              fit: BoxFit.contain,
              height: 200, // İstediğiniz yükseklik değeri
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 255, 255, 255),
                labelText: 'E-posta',
                prefixIcon: Image.asset(
                  'assets/account.png', // Account icon dosyasının yolu
                  width: 24, // Genişlik
                  height: 24, // Yükseklik
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 255, 255, 255),
                labelText: 'Telefon Numarası',
                prefixIcon: Image.asset(
                  'assets/telephone.png', // Account icon dosyasının yolu
                  width: 24, // Genişlik
                  height: 24, // Yükseklik
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 255, 255, 255),
                labelText: 'Şifre',
                prefixIcon: Image.asset(
                  'assets/password.png', // Account icon dosyasının yolu
                  width: 24, // Genişlik
                  height: 24, // Yükseklik
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 255, 255, 255),
                labelText: 'Şifre Tekrar',
                prefixIcon: Image.asset(
                  'assets/password.png', // Account icon dosyasının yolu
                  width: 24, // Genişlik
                  height: 24, // Yükseklik
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 25.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: const Text('Kayıt Ol'),
            ),
          ],
        ),
      ),
    );
  }
}
