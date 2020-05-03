import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OutReach extends StatelessWidget {
  OutReach({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var read = new ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(1),
          child: Container(
            child: Material(
              color: Colors.grey[100],
              elevation: 14.0,
              borderRadius: BorderRadius.circular(1),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      constraints: BoxConstraints(maxWidth: 200, minWidth: 150),
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/bench.jpeg",
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: 150,
                        minWidth: 100,
                      ),
                      child: Text(
                        "WE BELIEVE YOU HAVE ALL THE SOLUTIONS. THERE IS NO ONE WHO KNOWS YOU BETTER THAN YOU",
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 5.0),
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 220,
                  padding: EdgeInsets.all(5),
                  child: Material(
                      elevation: 7.0,
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent[50],
                      child: ListTile(
                          title: Text(
                            "Did you know you can contact us on",
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  color: Colors.red, letterSpacing: .20),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          subtitle: Text("+263 784 845 294"),
                          trailing: Icon(
                            Icons.phone,
                            size: 30,
                          ))),
                ),
                Container(
                  color: Colors.grey[100],
                  constraints: BoxConstraints(maxWidth: 150, minWidth: 100),
                  child: ClipRRect(
                    borderRadius: new BorderRadius.circular(2),
                    child: Image.asset(
                      "assets/images/lightbulb.jpg",
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(1),
            child: Material(
                elevation: 14.0,
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueAccent[50],
                child: Column(
                  children: <Widget>[
                    Divider(color: Colors.black),
                    Text("Anonymous, Confidential, Talk Therapy"),
                    Text("+263 784 845 294"),
                    Divider(color: Colors.red),
                    Text("Free sessions OPEN LINE"),
                    Divider(color: Colors.red),
                    Text("Call or msg for a session and will call you back"),
                    Divider(color: Colors.black)
                  ],
                ))),
        Padding(
          padding: const EdgeInsets.all(1),
          child: Material(
            
            color: Colors.blueAccent[50],
            elevation: 14.0,
            borderRadius: BorderRadius.circular(10),
            child: Column(
              
              children: <Widget>[
                Text(
                  "If you are feeling overwhelmed, sad, angry, depressed, anxious, numb, disconnected, unhead, unseen and lost, or all of that and more that you might not even be able to put into words but you are need of support and someone who will listen",

                   style: GoogleFonts.lato(
                      fontWeight: FontWeight.w500,
                      fontSize: 19
                    ),
                    textAlign: TextAlign.justify,
                ),
                Text(
                    "We know it's not easy to open up, get vulnerable or share feelings with people. We also know that as hard and scary as it may seem, it can be life savingto connect with someone who is non-judgemental, empathic and can guide you through some simple problem solving steps. These ateps will empower you to solve your own problems",
                    
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.w500,
                      fontSize: 19
                    ),
                    textAlign: TextAlign.justify,
                    ),
              ],
            ),
          ),
        )
      ],
    );

    return Scaffold(
      body: read,
    );
  }
}
