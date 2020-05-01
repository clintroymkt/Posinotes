import 'package:flutter/material.dart';
import 'articles.dart';
import 'home_display.dart';

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
     ArticlesFull()
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
       currentIndex: _currentIndex, // this will be set when a new tab is tapped
       items: [
         BottomNavigationBarItem(
           icon: Icon(
                      Icons.home,
                      color: Colors.blue,
                      size: 50,
                      ),
           title: Text('Home'),
         ),
         BottomNavigationBarItem(
           icon:  Icon(
                        Icons.featured_play_list,
                        color: Colors.blue,
                        size: 50,
                        ),
           title: Text('Quotes'),
         ),
         BottomNavigationBarItem(
           icon: Icon(
                      Icons.art_track,
                      color: Colors.blue,
                      size: 50,
                      ),
           title: Text('Articles')
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