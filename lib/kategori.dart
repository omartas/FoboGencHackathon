import 'package:basitdeneme/urun_detay.dart';
import 'package:flutter/material.dart';

class Kategori extends StatefulWidget {
  final String kategori;

  const Kategori({Key? key, required this.kategori}) : super(key: key);

  @override
  State<Kategori> createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  late List<Widget> gosterilecekListe;

  void initState() {
    super.initState();

    if (widget.kategori == "1") {
      gosterilecekListe = [
        urunKarti("Lol Turnuvası","Detaylar","espor1.jpg",uygunluk: true),
        urunKarti("Cs Go Turnuvası","Detaylar","espor2.jpg",uygunluk: true),
        urunKarti("Dota 2 Turnuvası","Detaylar","espor3.jpg",uygunluk: true),
        urunKarti("Metin 2 Dövüş","Detaylar","espor4.jpg",uygunluk: true),


      ];
    }
    if (widget.kategori == "2") {
      gosterilecekListe = [
        urunKarti("Trekking","Detaylar","trekking1.jpg",uygunluk:  true),
        urunKarti("Basketbol Maçı","Detaylar","basket1.jpg",uygunluk:  true),
        urunKarti("Halısaha Maçı","Detaylar","halısaha1.jpg",uygunluk:  true),
        urunKarti("Trekking","Detaylar","trekking4.jpg",uygunluk:  true),
      ];
    }
    if (widget.kategori == "3") {
      gosterilecekListe = [
        urunKarti("Pamukkale Gezisi","Detaylar","basket1.jpg",uygunluk:  true),
        urunKarti("İğneada Kampı","Detaylar","basket2.jpg",uygunluk:  true),
        urunKarti("Bursa Gezisi","Detaylar","basket3.jpg",uygunluk:  true),
        urunKarti("Hasandağ Dağı","Detaylar","basket4.jpg",uygunluk:  true),
      ];
    }
    if (widget.kategori == "4") {
      gosterilecekListe = [

        urunKarti("Duman","Detaylar","duman.jpg",uygunluk:  true),
        urunKarti("Cem Adrian","Detaylar","cem.jpg",uygunluk:  true),
        urunKarti("Metallica","Detaylar","metalica.jpg",uygunluk:  true),
        urunKarti("Teoman","Detaylar","teoman.jpg",uygunluk:  true),
      ];
    }
  }

  Widget urunKarti(String isim, String fiyat, String resimyolu,{bool uygunluk = false}) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>UrunDetay(
          fiyat: fiyat,isim: isim,resimYolu: resimyolu, mevcut: uygunluk,
        )));
      },
      child: Container(
        decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 2,
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Hero(
                tag: resimyolu,
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/$resimyolu"),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    isim,
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    fiyat,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.red[400]),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 1,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      padding: EdgeInsets.all(10),
      childAspectRatio: 3,
      //en boy oranı
      children: gosterilecekListe,
    );
  }
}
