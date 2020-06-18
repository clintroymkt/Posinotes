import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'quotes.dart';
import 'dart:math';
import 'local_notification_widget.dart';
import 'package:flutter/cupertino.dart';


int min = 0;
int max = quotes.length;
int random = min + (Random().nextInt(max - min));


class ArticlesFull extends StatelessWidget {
  ArticlesFull({Key key}) : super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    var card = ListView(children: <Widget>[
      Container(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        alignment: Alignment.center,
        child: Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 7.0,
          color: Colors.blueAccent[50],
          child: Container(
            padding: EdgeInsets.all(5),
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
      ),
      Container(
        child: Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 7.0,
          color: Colors.blueAccent[50],
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Top Pick",
                  style: GoogleFonts.inika(
                    color: Colors.orange[300],
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(5),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 7.0,
                    color: Colors.blueAccent[50],
                    child: ListTile(
                      title: Center(
                        child: Text(
                          quotes[random].text,
                          style: GoogleFonts.inriaSans(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      subtitle: Center(
                        child: Text(
                          quotes[random].author,
                          style: GoogleFonts.inriaSans(
                              color: Colors.orange,
                              fontSize: 18,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 5, bottom: 5),
        child: Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 7.0,
          color: Colors.blueAccent[50],
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 5),
                padding: EdgeInsets.all(5),
                child: Text("We believe",
                    style: GoogleFonts.luckiestGuy(
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                      fontSize: 29,
                    )),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 7.0,
                    color: Colors.blueAccent[50],
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/images/inspi.jpg"),
                    )),
              ),
              Container(
                  padding: EdgeInsets.all(5),
                  child: Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 7.0,
                      color: Colors.greenAccent[100],
                      child: Column(children: <Widget>[
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
                      ]))),
            ],
          ),
        ),
      ),
      
    ]);
    return Scaffold(body: card,backgroundColor: Colors.blue[50],
  
    );
  }
}
