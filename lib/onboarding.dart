import 'dart:ffi';

import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/wvaccine.png',
                width: 150,
                height: 50,
              ),
              Text(
                'Kapan aja dan hehe',
                style: TextStyle(fontSize: 14, color: fntGrey),
              ),
              Text(
                'Dimana aja',
                style: TextStyle(fontSize: 14, color: fntGrey),
              ),
              SizedBox(height: 30),
              Image.asset('assets/pana.png'),
              SizedBox(height: 20),
              Text(
                'AYO VAKSIN !',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                'Tak Kenal Maka Tak Kebal',
                style: TextStyle(fontSize: 14, color: fntGrey),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Daftar'),
                    style: ElevatedButton.styleFrom(
                        primary: btnDaftar,
                        padding:
                            EdgeInsets.symmetric(horizontal: 35, vertical: 17),
                        textStyle: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(width: 17),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text('Masuk'),
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(width: 1, color: btnMasuk),
                        padding:
                            EdgeInsets.symmetric(horizontal: 35, vertical: 17),
                        textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Dengan menggunakan aplikasi WVaccine',
                style: TextStyle(fontSize: 10, color: fntGrey),
              ),
              Text(
                'Kamu menyetujui segala peraturan yang berlaku',
                style: TextStyle(fontSize: 10, color: fntGrey),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

Color btnDaftar = HexColor("#3366FF");
Color btnMasuk = HexColor("#0057FF");
Color fntGrey = HexColor("#888888");
