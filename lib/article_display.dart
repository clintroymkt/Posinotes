import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ArticlesFull extends StatelessWidget {
  ArticlesFull({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var card = ListView(children: <Widget>[
      Container(
        padding: EdgeInsets.only(bottom: 10),
        alignment: Alignment.center,
        child: Card(
          child: ListTile(
            title: Text(
              "Welcome To Posinotes",
              style: GoogleFonts.lato(
                color: Colors.red,
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            subtitle: Text(
              "For Your Mental Health",
              textAlign: TextAlign.center,
              style: GoogleFonts.laila(
                color: Colors.blue[300],
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
      Container(
        child: Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 7.0,
          color: Colors.blueAccent[50],
          child: Column(
            children: <Widget>[
              Divider(color: Colors.red),
              Text("We believe",
                  style: GoogleFonts.luckiestGuy(
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  )),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/images/inspi.jpg"),
              ),
              Divider(
                
                color: Colors.red
              ),
              Text(
                "What We Achieve Inwardly Will Change Outer Reality",
                style: GoogleFonts.dekko(
                    color: Colors.blue[400],
                    fontSize: 19,
                    fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
              Text(
                "Plutarch",
                textAlign: TextAlign.end,
                style: GoogleFonts.delius(
                    color: Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.w200),
              )
            ],
          ),
        ),
      ),
    ]);
    return Scaffold(body: card, backgroundColor: Colors.blue[50]);
  }
}
