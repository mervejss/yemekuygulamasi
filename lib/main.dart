import 'dart:math';
import 'package:flutter/material.dart';



void main() 
{
  runApp(BenimUygulamam());
}
class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "BUGÜN NE YESEM ?",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {

  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo=Random().nextInt(5)+1,yemekNo=Random().nextInt(5)+1,tatliNo=Random().nextInt(5)+1;
//int corbaNo, int yemekNo ,int tatliNo,,,,,,, Çorbası
  List<String> corbaAdlari = [
    'Mercimek Çorbası',
    'Tarhana Çorbası',
    'Tavuksuyu Çorbası',
    'Düğün Çorbası',
    'Yoğurt Çorbası'
  ];
  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];
  void degistirBakalim() {
    setState(() {
      corbaNo= Random().nextInt(5)+1;
      yemekNo= Random().nextInt(5)+1;
      tatliNo= Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget> [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              style: TextButton.styleFrom(
                shape: CircleBorder(),
                foregroundColor: Colors.white,
              ),
                onPressed: degistirBakalim,
                child: Image.asset('assets/corba_$corbaNo.jpg')
              ),
            )
          ),

          Text(
            corbaAdlari[corbaNo-1],
          style: TextStyle(fontSize: 20),
          ),
          Container(
            child: Divider(
              height: 5,
              color: Colors.red,
            ),
          ),

          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                style: TextButton.styleFrom(
                  shape: CircleBorder(),
                  foregroundColor: Colors.white,
                ),
                onPressed: degistirBakalim,
                child: Image.asset('assets/yemek_$yemekNo.jpg')
            ),
          )
          ),
          Text(
            yemekAdlari[yemekNo-1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            child: Divider(
              height: 5,
              color: Colors.red,
            ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                style: TextButton.styleFrom(
                  shape: CircleBorder(),
                  foregroundColor: Colors.white,
                ),
                onPressed: degistirBakalim,
                child: Image.asset('assets/tatli_$tatliNo.jpg')
            ),
          )
          ),
          Text(
            tatliAdlari[tatliNo-1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            child: Divider(
              height: 5,
              color: Colors.red,
            ),
          ),

        ],
      ),
    );
  }
}




