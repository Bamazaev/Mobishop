import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobishop/data/app_data.dart';
import 'package:mobishop/models/categories_modal.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(196, 34, 45, 0.2),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
        ),
        title: const Text(
          '  Корзина',
          style: TextStyle(
            fontSize: 25,
            color: Color.fromRGBO(196, 34, 45, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icon/cartout 1.svg',
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
