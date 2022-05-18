import 'package:flutter/material.dart';

class UrunDetay extends StatelessWidget {

  //bu sayfada her ürün için farklı detaylar gösterilecek o yüzden değişkenleri tanımlayalım

  final String isim;
  final String fiyat;
  final String resimYolu;
  final bool mevcut ;
  const UrunDetay({super.key, required this.isim, required this.fiyat, required this.resimYolu, required this.mevcut});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Center(
          child: Stack(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: Hero(tag: resimYolu,child: Image.asset("assets/$resimYolu",fit: BoxFit.cover,width:MediaQuery.of(context).size.width,))),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.red[400],
                    size: 40,
                  ))
            ],
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              isim,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              fiyat,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[400]),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Bu etkinliğimize katılarak kişisel gelişiminize katkı sağlayabilirsiniz",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 50,
              decoration: BoxDecoration(
                color: mevcut ? Colors.red[400] : Colors.black,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  mevcut ? "Başvur":"Başvurular Kapandı",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
    );
  }
}
