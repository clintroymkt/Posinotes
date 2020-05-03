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
              color: Colors.blueAccent[100],
              elevation: 14.0,
              borderRadius: BorderRadius.circular(1),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      constraints: BoxConstraints(maxWidth: 200, minWidth: 150),
                      child: ClipRRect(
                        
                                        
                        borderRadius: new BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/images/lightbulb.jpg",
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
          padding: const EdgeInsets.all(1),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 5.0),
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 205,
                  color: Colors.grey[100],
                  padding: EdgeInsets.all(5),
                  child: ListTile(
                      title: Text(
                        "Did you know you can contact us on",
                        style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(color: Colors.red, letterSpacing: .20),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text("+263 784 845 294"),
                      trailing: Icon(
                        Icons.phone,
                        size: 30,
                      )),
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 200, minWidth: 150),
                  child: ClipRRect(
                    borderRadius: new BorderRadius.circular(2),
                    child: Image.asset(
                      "assets/images/bench.jpeg",
                      height: 100,
                      width: 102,
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  color: Colors.red,
                )
              ],
            ),
          ),
        ),
      ],
    );
    var contact = new Container();
    return Scaffold(
      body: read,
    );
  }
}
