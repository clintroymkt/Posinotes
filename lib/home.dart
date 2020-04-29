import 'package:flutter/material.dart';
import 'nav_widgets.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _HomeState();
  }
}
class _HomeState extends State<Home> {
  int _currentIndex=1;
  final List<Widget> _children =[
     Display(Colors.pink),
     Display(Colors.red),
     Display(Colors.green)
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
           title: Text('Blogs')
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