import 'package:flutter/material.dart';

import 'main.dart';

class SonucEkrani extends StatelessWidget {
  SonucEkrani({@required this.height, this.weight, this.vki});

  final weight;
  final height;
  final vki;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text("Boyunuz : $height"),
            Text("Kilonuz : $weight"),
            SizedBox(
              height: 200,
            ),
            Card(
              child: Text("Vücut kitle endeksiniz =" + vki.toStringAsFixed(1)),
            ),
            ElevatedButton(
              child: Text("Geri"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
