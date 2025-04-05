import 'package:flutter/material.dart';
import 'package:mobishop/contact.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10),
    child: Row(children: [
      IconButton(
        style: IconButton.styleFrom(
          backgroundColor: textColorw,
          padding: EdgeInsets.all(10)
        ),
        onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
        Spacer(),
        IconButton(
        style: IconButton.styleFrom(
          backgroundColor: textColorw,
          padding: EdgeInsets.all(10)
        ),
        onPressed: (){}, icon: Icon(Icons.share_outlined)),
        
        SizedBox(width: 10,),
        IconButton(
        style: IconButton.styleFrom(
          backgroundColor: textColorw,
          padding: EdgeInsets.all(10)
        ),
        onPressed: (){}, icon: Icon(Icons.favorite))
    ],),);
  }
}