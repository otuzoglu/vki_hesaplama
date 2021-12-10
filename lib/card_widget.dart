import 'package:flutter/material.dart';
import 'package:vki_hesaplama/sabitler.dart';

class OrtakCard extends StatelessWidget {
  OrtakCard({@required this.child, this.fonksiyon, this.cardColor});

  final Widget child;
  final Function fonksiyon;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: cardColor,
          ),
          child: child,
        ),
        onTap: fonksiyon,
      ),
    );
  }
}
