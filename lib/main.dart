import 'package:flutter/material.dart';
import 'package:vki_hesaplama/card_widget.dart';
import 'package:vki_hesaplama/sabitler.dart';
import 'package:vki_hesaplama/sonuc_sayfasi.dart';

void main() {
  runApp(const MyApp());
}

enum cinsiyet { male, female, notrs }

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter İlk Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color cardColor = rkPasifCardBackColor;
  cinsiyet seciliCinsiyet;
  int height = 180;
  int weight = 60;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: rkZeminArkaPlan,
      appBar: AppBar(
        backgroundColor: rkZeminArkaPlan,
        title: Center(
          child: Text(
            "VKİ Hesaplama",
            style: TextStyle(
              color: rkCardForeColor,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OrtakCard(
                  fonksiyon: () {
                    setState(() {
                      seciliCinsiyet = cinsiyet.male;
                    });
                  },
                  cardChild: Column(
                    children: [
                      Icon(
                        Icons.male,
                        size: 180,
                        color: rkCardForeColor,
                      ),
                      Text(
                        "ERKEK",
                        style: TextStyle(
                          color: rkCardForeColor,
                          fontSize: 24,
                        ),
                      )
                    ],
                  ),
                  cardColor: seciliCinsiyet == cinsiyet.male
                      ? rkAktifCardBackColor
                      : rkPasifCardBackColor,
                ),
                OrtakCard(
                  fonksiyon: () {
                    setState(() {
                      seciliCinsiyet = cinsiyet.female;
                    });
                  },
                  cardChild: Column(
                    children: [
                      Icon(
                        Icons.female,
                        size: 180,
                        color: rkCardForeColor,
                      ),
                      Text(
                        "KADIN",
                        style: TextStyle(
                          color: rkCardForeColor,
                          fontSize: 24,
                        ),
                      )
                    ],
                  ),
                  cardColor: seciliCinsiyet == cinsiyet.female
                      ? rkAktifCardBackColor
                      : rkPasifCardBackColor,
                ),
              ],
            ),
          ),
          OrtakCard(
            fonksiyon: () {
              print("alper");
            },
            cardColor: rkPasifCardBackColor,
            cardChild: Column(
              children: [
                Text(
                  "HEIGHT",
                  style: tsActivCardColor,
                ),
                Row(
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      height.toString(),
                      style: tsHeightStyle,
                    ),
                    Text(
                      "cm",
                      style: tsCmStyle,
                    ),
                  ],
                ),
                SliderTheme(
                  data: stSliderTheme,
                  child: Slider(
                    value: height.toDouble(),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                    min: 120,
                    max: 220,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: OrtakCard(
                      cardColor: rkPasifCardBackColor,
                      cardChild: Column(
                        children: [
                          Text(
                            "WEIGHT",
                            style: tsActivCardColor,
                          ),
                          Text(
                            weight.toString(),
                            style: tsHeightStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Text(
                                  '+',
                                  style: tsElevatedButton,
                                ),
                                style: ElevatedButton.styleFrom(
                                  shadowColor: Colors.yellow,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(24),
                                ),
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: Text(
                                  '-',
                                  style: tsElevatedButton,
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(24),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
                Expanded(
                  child: OrtakCard(
                      cardColor: rkPasifCardBackColor,
                      cardChild: Column(
                        children: [
                          Text(
                            "AGE",
                            style: tsActivCardColor,
                          ),
                          Text(
                            age.toString(),
                            style: tsHeightStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    setState(() {
                                      age++;
                                    });
                                  });
                                },
                                child: Text(
                                  '+',
                                  style: tsElevatedButton,
                                ),
                                style: ElevatedButton.styleFrom(
                                  shadowColor: Colors.yellow,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(24),
                                ),
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: Text(
                                  '-',
                                  style: tsElevatedButton,
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(24),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                double boy = height / 100;
                double vki = weight / (boy * boy);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SonucEkrani(
                              height: height,
                              weight: weight,
                              vki: vki,
                            )));
              },
              child: Text("Hesapla"),
            ),
          ),
        ],
      ),
    );
  }
}
