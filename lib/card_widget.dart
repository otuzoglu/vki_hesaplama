import 'package:flutter/material.dart';
import 'package:vki_hesaplama/sabitler.dart';

class GuzelCard extends StatelessWidget {
  GuzelCard({@required this.simge, this.metin, this.cardColor, this.fonksiyon});

  final IconData simge;
  final String metin;
  final Color cardColor;
  final Function fonksiyon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fonksiyon,
      child: Card(
        elevation: 15.0,
        color: cardColor,
        child: Column(
          children: [
            Icon(
              simge,
              size: 180,
              color: rkCardForeColor,
            ),
            Text(
              metin,
              style: TextStyle(
                color: rkCardForeColor,
                fontSize: 24,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OrtakCard extends StatelessWidget {
  OrtakCard({@required this.child, this.fonksiyon, this.cardColor});

  final Widget child;
  final Function fonksiyon;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
    );
  }
}
