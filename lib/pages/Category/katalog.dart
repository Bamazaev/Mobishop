import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobishop/pages/Category/Category1.dart';

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
    body: Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                child: Category1(),
    ),
    );
  }
}
