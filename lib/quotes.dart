import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//data its static for now
class Quote {
  final String id;
  final String text;
  final String author;
  final String image;
  const Quote({this.id, this.text, this.author, this.image});
}

List<Quote> quotes = [
  const Quote(
      id: "1",
      text:
          "What mental health needs is more sunlight, more candor, and more unashamed conversation.",
      author: "Glenn Close",
      image: "assets/images/nature.jpg"),
  const Quote(
      id: "2",
      text:
          "Anything that’s human is mentionable, and anything that is mentionable can be more manageable. When we can talk about our feelings, they become less overwhelming, less upsetting, and less scary.",
      author: "Fred Rogers",
      image: "assets/images/inspi.jpg"),
  const Quote(
      id: "3",
      text: "Just because you don’t understand it doesn’t mean it isn’t so.",
      author: "Lemony Snicket",
      image: "assets/images/nature.jpg"),
  const Quote(
      id: "4",
      text:
          "Sometimes the people around you won’t understand your journey. They don’t need to, it’s not for them.",
      author: "Joubert Botha",
      image: "assets/images/inspi.jpg"),
  const Quote(
      id: "5",
      text:
          "One small crack does not mean that you are broken, it means that you were put to the test and you didn’t fall apart.",
      author: "Linda Poindexter",
      image: "assets/images/lightbulb.jpg"),
];
//end of data

class Articles extends StatelessWidget {
  Articles({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var card = new ListView.builder(
      itemCount: quotes.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.all(1),
          //padding: const EdgeInsets.all(10),
          padding: const EdgeInsets.only(top: 5,left: 5,right: 5) ,

          child: Material(
            color: Colors.blueAccent[50],
            elevation: 7.0,
            borderRadius: BorderRadius.circular(10),
            shadowColor: Color(0x802196F3),
            child: ListTile(
              title: Center(
                child: new Text(
                  quotes[index].text,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.lato(
                    textStyle:
                        TextStyle(color: Colors.black, letterSpacing: .20),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              subtitle: Center(
                child: Container(
                  
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[50],
                    boxShadow: [
                      BoxShadow(color: Colors.blueAccent[200], spreadRadius: 1)
                    ],
                  ),
                  child: Text(
                    quotes[index].author,
                    textAlign: TextAlign.right,
                    style: GoogleFonts.mcLaren(
                      textStyle: TextStyle(color: Colors.blueAccent[100]),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
    return new Scaffold(
      body: card,
      //for fetching more quotes
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //will look at getting data from firebase soon
        },
        child: Icon(Icons.lightbulb_outline),
        backgroundColor: Colors.red,
      ),
    );
  }
}
