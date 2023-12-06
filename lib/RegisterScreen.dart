// import 'package:activity_3/HomeScreen.dart';
import 'package:activity_3/PinScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'widget/fieldCustom.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _registerState();
}

class _registerState extends State<RegisterScreen> {
  final formkey = GlobalKey<FormState>();

  TextEditingController namaController = TextEditingController();
  TextEditingController nbiController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  TextEditingController akunigController = TextEditingController();
  TextEditingController pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Wrap your Column with SingleChildScrollView
        child: Form(
          key: formkey,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Image.asset(
                    'assets/otakk.png',
                    scale: 3,
                  ),
                ),
                Text(
                  "Welcome To",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                Text(
                  "Praktikum PAB 2023",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                textFieldCustom('Masukkan Nama', namaController),
                textFieldCustom('Masukkan NBI', nbiController),
                textFieldCustom('Masukkan Email', emailController),
                textFieldCustom('Masukkan Alamat', alamatController),
                textFieldCustom('Masukkan Instagram', akunigController),
                textFieldCustom('Masukkan pin', pinController),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                    right: 25,
                    top: 30,
                  ),
                  child: ElevatedButton(
                    onPressed: () async {
                      if (formkey.currentState!.validate()) {
                        final SharedPreferences prefs =
                            await SharedPreferences.getInstance();

                        await prefs.setString('nama', namaController.text);
                        await prefs.setString('nbi', nbiController.text);
                        await prefs.setString('email', emailController.text);
                        await prefs.setString('alamat', namaController.text);
                        await prefs.setString(
                            'akun instagram', akunigController.text);
                        await prefs.setString('pin', pinController.text);

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (Builder) {
                            return PinScreen();
                          }),
                        );
                      }
                    },
                    child: Center(
                      child: Text("Daftar"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
