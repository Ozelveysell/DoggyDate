import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  String name = '';
  String genus = '';
  int age = 1;
  String gender = 'Erkek';
  String imagePath = '';

  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        imagePath = pickedFile.path;
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF9AEC),
        title: const Text('Doggy Date'),
      ),
      backgroundColor: const Color(0xFFFF9AEC),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              imagePath == "" ? 'assets/Fur.png' : imagePath,
              fit: BoxFit.contain,
              height: 225,
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Hayvan Bilgileri',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 255, 255, 255),
                labelText: 'Ad',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
            ),
            const SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Cins',
                filled: true,
                fillColor: const Color.fromARGB(255, 255, 255, 255),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  genus = value;
                });
              },
            ),
            const SizedBox(height: 10.0),
            DropdownButtonFormField<int>(
              value: age,
              decoration: InputDecoration(
                labelText: 'Yaş',
                filled: true,
                fillColor: const Color.fromARGB(255, 255, 255, 255),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              isExpanded: false,
              items: List.generate(20, (index) => index + 1).map((int value) {
                return DropdownMenuItem<int>(
                  value: value,
                  child: Text(
                    value.toString(),
                    style: const TextStyle(fontSize: 14.0),
                  ),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  age = value!;
                });
              },
            ),
            const SizedBox(height: 10.0),
            DropdownButtonFormField<String>(
              value: gender,
              decoration: InputDecoration(
                labelText: 'Cinsiyet',
                filled: true,
                fillColor: const Color.fromARGB(255, 255, 255, 255),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              isExpanded: false,
              items: ['Erkek', 'Dişi'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(fontSize: 14.0),
                  ),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  gender = value!;
                });
              },
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: getImage,
              child: const Text('Fotoğraf Seç'),
            ),
            ElevatedButton(
              onPressed: () {
                // Kaydetme işlemi buraya gelecek
              },
              child: const Text('Kaydet'),
            ),
          ],
        ),
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
            Navigator.pushReplacementNamed(context, '/home');
          }
        },
      ),
    );
  }
}
