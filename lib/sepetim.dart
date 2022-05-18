import 'package:basitdeneme/urunler.dart';
import 'package:flutter/material.dart';

class Sepetim extends StatelessWidget {

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
                    child: Image.asset("assets/duman.jpg",fit: BoxFit.cover,width:MediaQuery.of(context).size.width,)),
                IconButton(
                    onPressed: () {},
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
                "Duman Konseri",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Detaylar",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[400]),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  "Çok eğlenceli bir konser. Birlikte daha eğlenceli olacağını düşünüyoruz..",
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
                  color: Colors.red[400],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    "Başvur",
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
