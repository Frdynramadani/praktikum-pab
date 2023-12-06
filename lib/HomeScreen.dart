import 'package:activity_3/BottomNavigation.dart';
import 'package:activity_3/RegisterScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? nbi;
  String? nama;
  String? kelas;

  void data() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? _nbi = prefs.getString('nbi');
    final String? _nama = prefs.getString('nama');
    final String? _kelas = prefs.getString('kelas');

    setState(() {
      nbi = _nbi;
      nama = _nama;
      kelas = _kelas;
    });
  }

  @override
  void initState() {
    super.initState();
    data();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 70.0),
                child: Text(
                  "Welcome To",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "PRAKTIKUM PAB 2023",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60.0), // Atur padding
              ),
              Text(
                "NBI : $nbi",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30), // Jarak antara teks dan gambar
              Image.asset(
                'assets/homescreen.png',
                height: 200, // ukuran asset images
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "$nama",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Praktikum kelas $kelas",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.0),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              InkWell(
                //aksi yang akan dijalankan saat tombol diklik/ditekan
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavigation()),
                  );
                },
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Masuk',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              InkWell(
                //aksi yang akan dijalankan saat tombol diklik/ditekan
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()),
                  );
                },
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Keluar',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
