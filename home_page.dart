import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  double distanceValue = 50;
  int ageValue = 10;
  String genderValue = 'Tümü';

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF9AEC),
        title: const Text('Doggy Date'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              _showSettingsDialog(context);
            },
          ),
        ],
      ),
      backgroundColor: const Color(0xFFFF9AEC),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: <Widget>[
              Image.asset(
                'assets/cavcav.jpg',
                fit: BoxFit.contain,
                alignment: Alignment.topCenter,
              ),
              Positioned(
                bottom: 20, // Metnin yüksekliği
                left: 0, // Metnin sol kenardan uzaklığı
                right: 0, // Metnin sağ kenardan uzaklığı
                child: Center(
                  child: Text(
                    'Carlos', // Eklemek istediğiniz metin
                    style: TextStyle(
                      color: Colors.white, // Metin rengi
                      fontSize: 36, // Metin boyutu
                      fontWeight: FontWeight.bold, // Metin kalınlığı
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 0), // Görseli sola 20 birim uzaklıkta sabitlemek için boşluk ekleyin
                  InkWell(
                    onTap: () {
                      print("like");
                    },
                    child: Image.asset(
                      'assets/like.png', // Resmin dosya yolunu buraya ekleyin
                      width: 70, // Resmin genişliği
                      height: 70, // Resmin yüksekliği
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 0), // Görseli sola 20 birim uzaklıkta sabitlemek için boşluk ekleyin
                  InkWell(
                    onTap: () {
                      _showDogInfoDialog(context);
                      print("hakkinda");
                    },
                    child: Image.asset(
                      'assets/hakkinda.png', // Resmin dosya yolunu buraya ekleyin
                      width: 70, // Resmin genişliği
                      height: 70, // Resmin yüksekliği
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 0), // Görseli sola 20 birim uzaklıkta sabitlemek için boşluk ekleyin
                  InkWell(
                    onTap: () {
                      print("dislike");
                    },
                    child: Image.asset(
                      'assets/dislike.png', // Resmin dosya yolunu buraya ekleyin
                      width: 70, // Resmin genişliği
                      height: 70, // Resmin yüksekliği
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Anasayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Hesap',
          ),
        ],
        onTap: (int index) {
          if (index == 0) {
            //  Navigator.pushReplacementNamed(context, '/home');
          } else if (index == 1) {
            Navigator.pushReplacementNamed(context, '/account');
          }
        },
      ),
    );
  }

  void _showSettingsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Settings'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Mesafe Tercihi: ${distanceValue.toInt()} km'),
              Slider(
                value: distanceValue,
                min: 1,
                max: 100,
                divisions: 99,
                onChanged: (newValue) {
                  distanceValue = newValue;
                  Navigator.of(context).pop();
                  _showSettingsDialog(context);
                },
              ),
              Text('Yaş Tercihi: $ageValue'),
              Slider(
                value: ageValue.toDouble(),
                min: 1,
                max: 20,
                divisions: 19,
                onChanged: (newValue) {
                  ageValue = newValue.toInt();
                  Navigator.of(context).pop();
                  _showSettingsDialog(context);
                },
              ),
              Text('Cinsiyet Tercihi: $genderValue'),
              DropdownButton<String>(
                value: genderValue,
                onChanged: (newValue) {
                  genderValue = newValue!;
                  Navigator.of(context).pop();
                  _showSettingsDialog(context);
                },
                items: ['Tümü', 'Erkek', 'Dişi']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Kaydet'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Kapat'),
            ),
          ],
          actionsAlignment: MainAxisAlignment.center,
        );
      },
    );
  }

  void _showDogInfoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Köpek Bilgileri'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('İsim: Carlos'),
              Text('Yaş: 3 yaş'),
              Text('Cinsiyet: Erkek'),
              Text('Cins: Chow Chow'),
              Text('Etiler, Istanbul'),
              Text('Sağlık Bilgileri: Aşıları tam, sağlıklı'),
              Text('Sahibi: Veysel Özel'),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Kapat'),
            ),
          ],
        );
      },
    );
  }
}
