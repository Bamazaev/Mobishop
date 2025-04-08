import 'package:flutter/material.dart';
import 'package:mobishop/Provider/favorite_provider.dart' show FavoriteProvider;
import 'package:mobishop/contact.dart';
import 'package:mobishop/data/app_data.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
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
        onPressed: (){
          
        }, icon: Icon(Icons.share_outlined)),
        
        SizedBox(width: 10,),
        IconButton(
        style: IconButton.styleFrom(
          backgroundColor: textColorw,
          padding: EdgeInsets.all(10)
        ),
        onPressed: (){
          provider.toggleFavorite(products.first);
        }, icon: Icon(
          provider.isExist(products.first)?
          Icons.favorite:Icons.favorite_border,color: textColorb, size: 25,))
    ],),);
  }
}