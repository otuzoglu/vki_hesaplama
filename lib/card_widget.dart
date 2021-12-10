import 'package:flutter/material.dart';
import 'package:vki_hesaplama/sabitler.dart';

class OrtakCard extends StatelessWidget {
  OrtakCard({this.fonksiyon, this.cardColor, this.cardChild});

  final cardColor;
  final Widget cardChild;
  final fonksiyon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fonksiyon,
      child: Expanded(
        child: Container(
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: rkPasifCardBackColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              cardChild,
            ],
          ),
        ),
      ),
    );
  }
}
