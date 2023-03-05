import 'package:flutter/material.dart';
import 'dart:math' as math;

class Perhitungan extends StatefulWidget {
  const Perhitungan({Key? key}) : super(key: key);

  @override
  _PerhitunganState createState() => _PerhitunganState();
}

class _PerhitunganState extends State<Perhitungan> {
  TextEditingController baseController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  double result = 0;

  void Penjumlahan() {
    double angka1 = double.parse(baseController.text);
    double angka2 = double.parse(heightController.text);
    double hasil = angka1 + angka2;
    setState(() {
      result = hasil;
    });
  } void Pengurangan() {
    double angka1 = double.parse(baseController.text);
    double angka2 = double.parse(heightController.text);
    double hasil = angka1 + angka2;
    setState(() {
      result = hasil;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perhitungan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: baseController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'angka 1',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'angka 2',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: Penjumlahan,
              child: const Text('+'
                ,style: TextStyle(
                    fontSize: 40
                ),),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: Pengurangan,
              child: const Text('-'
              ,style: TextStyle(
                  fontSize: 40
                ),),
            ),
            const SizedBox(height: 20),
            Text(
              'Hasil: ${result.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
