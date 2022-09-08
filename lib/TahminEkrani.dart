// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:sayitahmin_uygulamasi/SonucEkrani.dart';

class TahminEkrani extends StatefulWidget {
  TahminEkrani({Key? key}) : super(key: key);

  @override
  State<TahminEkrani> createState() => _TahminEkraniState();
}

class _TahminEkraniState extends State<TahminEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tahmin Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // ignore: prefer_const_literals_to_create_immutables
          children:[
            const Text("Kalan Hak : 4", style: TextStyle( color: Colors.pink,fontSize: 30),),
            const Text("Yardım : Tahmini Azalt", style: TextStyle( color: Colors.black54,fontSize: 24),),
            const TextField(
               keyboardType: TextInputType.number,
               textAlign: TextAlign.center,
               decoration: InputDecoration(
                labelText: "Tahmin",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                )
               ),
            ),
            SizedBox(
            width: 200,
            height: 50,
            child: RaisedButton(
              child:  Text("TAHMİN ET"),
              color: Colors.pink,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SonucEkrani()));
              },
            ),
          ),
          ],
        ),
      ),
    );
  }
}