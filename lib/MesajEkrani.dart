import 'package:flutter/material.dart';

import 'datalar.dart';

class Deneme extends StatelessWidget {
  String isim = 'Orhan';
  int _sira = 0;
  Map<int, String> kullanici1Mesajlar = Map();
  Map<int, String> kullanici2Mesajlar = Map();
  void mesajEkle({required int hangisi, required String mesaj}) {
    hangisi == 0
        ? kullanici1Mesajlar[_sira++] = mesaj
        : kullanici2Mesajlar[_sira++] = mesaj;
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Bilgiler {
  String isim = 'Orhan';
  int _sira = 0;
  Map<int, String> kullanici1Mesajlar = Map();
  Map<int, String> kullanici2Mesajlar = Map();
  void mesajEkle({required int hangisi, required String mesaj}) {
    hangisi == 0
        ? kullanici1Mesajlar[_sira++] = mesaj
        : kullanici2Mesajlar[_sira++] = mesaj;
  }
}

class MesajEkrani extends StatelessWidget {
  static const String routeName = 'MesajEkrani';
  Bilgiler datalar = Bilgiler();
  MesajEkrani({required this.datalar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Row(children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/tyler.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              datalar.isim,
              style: yaziSekli(renk: Colors.white, boyut: 20),
            ),
          )
        ]),

        /*Text(
          datalar.isim,
          style: yaziSekli(boyut: 20, renk: Colors.white),
        ),*/
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,size: 30,),padding: EdgeInsets.all(5),),
          IconButton(onPressed: (){}, icon: Icon(Icons.phone,size: 30,),padding: EdgeInsets.all(5),),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,size: 30,),padding: EdgeInsets.all(5),),
        ],
      ),
      body: SafeArea(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white30,

          ),
          child: Container(
            child: Column(children: [
              Expanded(
                flex: 5,
                child: ListView(
                  //mainAxisSize: MainAxisSize.max,
                  children: [
                    YaziKutusu(
                      yazi: Text(
                        "Selamlar",
                        textAlign: TextAlign.start,
                        style: yaziSekli(boyut: 15, renk: Colors.white),
                      ),
                      yer: 0,
                    ),
                    YaziKutusu(
                      yazi: Text(
                        "Merhaba",
                        textAlign: TextAlign.end,
                        style: yaziSekli(boyut: 15, renk: Colors.white),
                      ),
                      yer: 1,
                    ),
                    YaziKutusu(
                      yazi: Text(
                        "Pazar günki halısahaya geliyorsun değil mi ?",
                        textAlign: TextAlign.start,
                        style: yaziSekli(boyut: 15, renk: Colors.white),
                      ),
                      yer: 0,
                    ),
                    YaziKutusu(
                      yazi: Text(
                        "Evet geliyorum.",
                        textAlign: TextAlign.end,
                        style: yaziSekli(boyut: 15, renk: Colors.white),
                      ),
                      yer: 1,
                    ),
                    YaziKutusu(
                      yazi: Text(
                        "Harika.. Ayakkabı ve havlu getirmeyi unutma",
                        textAlign: TextAlign.end,
                        style: yaziSekli(boyut: 15, renk: Colors.white),
                      ),
                      yer: 0,
                    ),
                    YaziKutusu(
                      yazi: Text(
                        "Tamamdır.",
                        textAlign: TextAlign.end,
                        style: yaziSekli(boyut: 15, renk: Colors.white),
                      ),
                      yer: 1,
                    ),
                    YaziKutusu(
                      yazi: Text(
                        "Görüşürüz.",
                        textAlign: TextAlign.end,
                        style: yaziSekli(boyut: 15, renk: Colors.white),
                      ),
                      yer: 0,
                    ),
                    YaziKutusu(
                      yazi: Text(
                        "Görüşürüz.. kendine iyi bak ",
                        textAlign: TextAlign.end,
                        style: yaziSekli(boyut: 15, renk: Colors.white),
                      ),
                      yer: 1,
                    ),
                    YaziKutusu(
                      yazi: Text(
                        "Teşekkürler sen de ",
                        textAlign: TextAlign.end,
                        style: yaziSekli(boyut: 15, renk: Colors.white),
                      ),
                      yer: 0,
                    )
                  ],
                ),
              ),
              Expanded(child: YaziYazmaKutusu(), flex: 1),
            ]),
          ),
        ),
      ),
    );
  }
}

class YaziKutusu extends StatelessWidget {
  final Text yazi;
  final int yer;

  YaziKutusu({required this.yazi, required this.yer});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      yer == 0 ? EdgeInsets.only(right: 240) : EdgeInsets.only(left: 200),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: yer == 1 ? Color(0xffb128C7E) : Colors.blue[300],
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(child: yazi),
          ),
        ),
      ),
    );
  }
}

class YaziYazmaKutusu extends StatelessWidget {
  late String girilenDeger;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: SizedBox(
            height: 40,
            child: DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25.0),
                    ),
                    color: Colors.blue[300]),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.insert_emoticon,size: 30,),padding: EdgeInsets.all(5),),
                      ),
                      Expanded(
                        flex: 4,
                        child: TextField(
                          onChanged: (deger) {
                            girilenDeger = deger;
                          },
                          decoration: InputDecoration(
                              labelText: 'Bir Mesaj Yazın',
                              focusColor: Colors.white),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.attach_file,size: 30,),padding: EdgeInsets.all(5),),
                      ),
                      Expanded(
                        flex: 1,

                        child: IconButton(onPressed: (){}, icon: Icon(Icons.camera,size: 30,),padding: EdgeInsets.all(5),),
                      ),
                    ],
                  ),
                )),
          ),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 50,
            width: 50,
            child: CircleAvatar(
              backgroundColor: Color(0xFF90CAF9),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.mic,size: 30,),padding: EdgeInsets.all(5),),
            ),
          ),
        ),
      ],
    );
  }
}

