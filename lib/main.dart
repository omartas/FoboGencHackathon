import 'package:basitdeneme/MesajEkrani.dart';
import 'package:basitdeneme/sepetim.dart';
import 'package:basitdeneme/urunler.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnaSayfa(),
      debugShowCheckedModeBanner: false,
      title: "projem",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _aktifPageNo = 0;

  @override
  void initState() {
    super.initState();
    //List _icerikler = [Text("içerik 1"), Text("içerik 2")];
  }

  List _icerikler = [Urunler(),Sepetim(), MesajEkrani(datalar: Bilgiler())];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Color(0xFF90CAF9),
        title: Text(
          "GENCO",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue[900]),
        ),
        centerTitle: true,
      ),
      body: _icerikler[_aktifPageNo],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _aktifPageNo,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.local_activity_outlined), label: "Aktiviteler"),
          BottomNavigationBarItem(icon: Icon(Icons.crop_outlined), label: "Eşleşme"),
          BottomNavigationBarItem(icon: Icon(Icons.message_outlined), label: "Mesajlar"),
        ],
        onTap: (int tiklananButonNo) {
          setState(() {
            _aktifPageNo = tiklananButonNo;
          });
        },
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0), //
          children: <Widget>[
            //çekmece başlığı
            UserAccountsDrawerHeader(
              accountName: Text("Tyler Durden"),
              accountEmail: Text("adnansensess@gmail.com"),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/tyler.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              decoration: BoxDecoration(color: Colors.blue[400]),
            ),
            ListTile(title: Text("Etkinliklerim"), onTap: () {}),
            ListTile(title: Text("Mesajlarım"), onTap: () {}),
            ListTile(title: Text("Ayarlar"), onTap: () {}),
            ListTile(
                title: Text("Çıkış Yap"),
                onTap: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
