import 'package:flutter/material.dart';
class Display extends StatelessWidget{
  final Color color;
  Display(this.color);
  @override
  Widget build(BuildContext context){
    return Container(
      color:color,
    );
  }
}