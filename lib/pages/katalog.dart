import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Katalog extends StatefulWidget {
  const Katalog({super.key});

  @override
  State<Katalog> createState() => _KatalogState();
}

class _KatalogState extends State<Katalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Color.fromRGBO(196, 34, 45, 0.2),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
        ),
        title: const Text(
          '  Каталог',
          style: TextStyle(
            fontSize: 25,
            color: Color.fromRGBO(196, 34, 45, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icon/filter.svg',
              height: 25,
              width: 25,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/icon/search2.svg',
              height: 25,
              width: 25,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: MediaQuery.of(context).size.width < 600
      ?GridView.builder(
        itemCount: 8,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, ), 
      itemBuilder: (ctx, index){
        return Column(
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width / 3.3,
              height: MediaQuery.of(context).size.width / 3.3,
              
            decoration: BoxDecoration(
              
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Color.fromRGBO(196, 34, 45, 1), width: 2),
            ),
            )
          ],
        );
      } ):GridView.builder(
        itemCount: 8,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5, ), 
      itemBuilder: (ctx, index){
        return Column(
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 0.18,
              
            decoration: BoxDecoration(
              
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Color.fromRGBO(196, 34, 45, 1), width: 2),
            ),
            )
          ],
        );
      } ),
    );
  }
}
