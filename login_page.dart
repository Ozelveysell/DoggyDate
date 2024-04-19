import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF9AEC),
        title: const Text('Giriş Yap'),
      ),
      backgroundColor: const Color(0xFFFF9AEC),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Görsel ekleniyor
            Image.asset(
              'assets/Fur.png',
              fit: BoxFit.contain,
              height: 300, // Görsel yüksekliği ayarlanabilir
            ),
            const SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'E-posta',
                prefixIcon: Image.asset(
                  'assets/account.png', // Account icon dosyasının yolu
                  width: 24, // Genişlik
                  height: 24, // Yükseklik
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Şifre',
                prefixIcon: Image.asset(
                  'assets/password.png', // Account icon dosyasının yolu
                  width: 24, // Genişlik
                  height: 24, // Yükseklik
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 10), // Biraz boşluk bırakmak için SizedBox ekledik
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    // Şifre mi unuttum butonuna basıldığında yapılacak işlemler
                    // Buraya şifreyi sıfırlama veya yeniden ayarlama işlemlerini ekleyebilirsiniz
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black), // Metin rengini siyah olarak ayarladık
                  ),
                  child: Text('Şifrenizi mi unuttunuz?'),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0), // Buton iç boşluğu ve genişlik
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text(
                'Giriş Yap',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hesabınız yok mu? ',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/register');
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                  child: Text('Kayıt olun'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
