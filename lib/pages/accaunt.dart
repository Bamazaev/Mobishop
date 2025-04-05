import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Accaunt extends StatefulWidget {
  const Accaunt({super.key});

  @override
  State<Accaunt> createState() => _AccauntState();
}

class _AccauntState extends State<Accaunt> {
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(196, 34, 45, 0.2),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
        ),
        title: const Text(
          '  Аккаунт',
          style: TextStyle(
            fontSize: 25,
            color: Color.fromRGBO(196, 34, 45, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icon/accaunt.svg',
              height: 25,
              width: 25,
            ),
            onPressed: () {},
          ),
        ],
      ),
      
    );
  }
}
