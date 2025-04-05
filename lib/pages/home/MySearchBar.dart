import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Mysearchbar extends StatefulWidget {
  const Mysearchbar({super.key});

  @override
  State<Mysearchbar> createState() => _MysearchbarState();
}

class _MysearchbarState extends State<Mysearchbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(30)),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Row(
        children: [
          SvgPicture.asset('assets/icon/search2.svg', height: 30),
          SizedBox(width: 10),
          Flexible(
            flex: 4,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Поиск...',
                border: InputBorder.none,
              ),
            ),
          ),
          Container(height: 25, width: 1.5, color: Colors.grey),
          IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icon/filter.svg', height: 25)),
        ],
      ),
    );
  }
}
