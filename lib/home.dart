import 'package:flutter/material.dart';
import 'quotes.dart';
import 'article_display.dart';
import 'articles_list.dart';
import 'outreach.dart';
class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _HomeState();
  }
}
class _HomeState extends State<Home> {
  
  int _currentIndex=0;
  List<Widget> _children =[
     ArticlesFull(),
     Articles(),
     ArticleList(),
     OutReach()
   ];
 @override
 Widget build(BuildContext context) {
    
   return Scaffold(
     appBar: AppBar(
       
       centerTitle: true,
       title: Text('Posinotes'),
     ),
     body: _children[_currentIndex],
     bottomNavigationBar: BottomNavigationBar(
       onTap: onTabTapped,
       fixedColor: Colors.blueAccent[100],
       
       currentIndex: _currentIndex, // this will be set when a new tab is tapped
       items: [
         BottomNavigationBarItem(
           icon: Icon(
                      Icons.home,
                      color: Colors.orange[300],
                      size: 20,
                      ),
           title: Text('Home'),
         ),
         BottomNavigationBarItem(
           icon:  Icon(
                        Icons.featured_play_list,
                        color: Colors.orange[300],
                        size: 20,
                        ),
           title: Text('Quotes'),
         ),
         BottomNavigationBarItem(
           icon: Icon(
                      Icons.art_track,
                      color: Colors.orange[300],
                      size: 20,
                      ),
           title: Text('Articles')
         ),
          BottomNavigationBarItem(
           icon: Icon(
                      Icons.help_outline,
                      color: Colors.orange[300],
                      size: 20,
                      ),
           title: Text('Reach out')
         )
       ],
     ),
   );
 }
 void onTabTapped(int index){
   setState(() {
     _currentIndex=index;
   });
 }
}