// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class SonucEkrani extends StatefulWidget {
  SonucEkrani({Key? key}) : super(key: key);

  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuç Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Kazandınız",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 36,
                height: 10,
              ),
            ),
            Image.asset(
              "assets/images/image.png",
              height: 150,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                child: Text("TEKRAR DENE"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
