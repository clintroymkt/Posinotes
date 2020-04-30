import 'package:flutter/material.dart';

//data its static for now
 class Quote {
    final String id;
    final String text;
    final String author;
    final String image;
    const Quote({this.id,this.text, this.author, this.image});
  }
  List<Quote> quotes = [
    const Quote(
      id: "1",
      text: "What mental health needs is more sunlight, more candor, and more unashamed conversation.",
      author: "Glenn Close",
      image: "assets/images/nature.jpg"
    ),
    const Quote(
      id: "2",
      text: "Anything that’s human is mentionable, and anything that is mentionable can be more manageable. When we can talk about our feelings, they become less overwhelming, less upsetting, and less scary.",
      author: "Fred Rogers",
      image: "assets/images/inspi.jpg"
    ),
     const Quote(
      id: "3",
      text: "Just because you don’t understand it doesn’t mean it isn’t so.",
      author: "Lemony Snicket",
      image: "assets/images/nature.jpg"
    ),
     const Quote(
      id: "4",
      text: "Sometimes the people around you won’t understand your journey. They don’t need to, it’s not for them.",
      author: "Joubert Botha",
      image: "assets/images/inspi.jpg"
    ),
     const Quote(
      id: "5",
      text: "One small crack does not mean that you are broken, it means that you were put to the test and you didn’t fall apart.",
      author: "Linda Poindexter",
      image: "assets/images/lightbulb.jpg"
    ),
  ];
  //end of data

class Articles extends StatelessWidget{
  
  Articles({Key key}) : super(key: key);
 
  @override
  Widget build(BuildContext context){

    var card = new ListView(
      
        children: <Widget>[
        
          ListTile(
            
            title:Text("What mental health needs is more sunlight, more candor, and more unashamed conversation.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            subtitle: Text("Glenn Close"),
          ),
          Divider(color: Colors.blue,),
           ListTile(
            
            title:Text("Anything that’s human is mentionable, and anything that is mentionable can be more manageable. When we can talk about our feelings, they become less overwhelming, less upsetting, and less scary.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            subtitle: Text("Fred Rogers"),
          ),
          Divider(color: Colors.blue,),
           ListTile(
            
            title:Text("Just because you don’t understand it doesn’t mean it isn’t so.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            subtitle: Text("Lemony Snicket"),
          ),
          Divider(color: Colors.blue,),
          ListTile(
            
            title:Text("Sometimes the people around you won’t understand your journey. They don’t need to, it’s not for them.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            subtitle: Text("Joubert Botha"),
          ),
          Divider(color: Colors.blue,),
          ListTile(
            
            title:Text("One small crack does not mean that you are broken, it means that you were put to the test and you didn’t fall apart.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            subtitle: Text("Linda Poindexter"),
          ),
        ],
      
    );
    return new Scaffold(
        body:card,
    );
  }
}