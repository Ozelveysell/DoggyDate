import 'package:flutter/material.dart';

class Entrance extends StatelessWidget {
  const Entrance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF9AEC),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                //  color: Color(0xFFFF9AEC), // Arka plan rengi pembe
                child: Image.asset(
                  'assets/Fur.png', // Logo dosyasının yolunu buraya girin
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(40), // Sol üst köşeyi ovalleştir
                  topRight: const Radius.circular(40), // Sağ üst köşeyi ovalleştir
                ),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.only(top: 60), // Yukarıdan 20 birim padding
                        child: const Text(
                          'Evcil hayvanınıza arkadaş mı arıyorsunuz?',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold, // Kalın yazı
                          ),
                          textAlign: TextAlign.center, // Metni ortala
                        ),
                      ),
                      const SizedBox(height: 5),
                      // Buton
                      Container(
                        alignment: Alignment.topCenter, // Alttan ortalamak için
                        padding: const EdgeInsets.only(top: 30), // Alttan 30 birimlik padding ekleyelim
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/login'); // '/giris' ekranına yönlendirme
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white, // Buton rengi
                            ),
                            child: Image.asset(
                              'assets/pati.png', // Pati görüntüsü
                              height: 100, // Yükseklik
                              width: 100, // Genişlik
                            ),
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/yazi.png',
                        height: 175,
                        width: 250,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
