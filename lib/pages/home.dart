// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobishop/data/app_data.dart';
import 'package:mobishop/pages/home/Category.dart';
import 'package:mobishop/pages/home/MySearchBar.dart';
import 'package:mobishop/pages/home/allproduct.dart';
import 'package:mobishop/pages/home/home_icons.dart';
import 'package:mobishop/pages/home/product_cart.dart';
import 'package:mobishop/pages/home/slider.dart';
// Import the package for FadeInUp

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(196, 34, 45, 0.2),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
        ),
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icon/search2.svg',
            height: 25,
            width: 25,
          ),
          onPressed: () {},
        ),
        title: SvgPicture.asset(
          'assets/icon/logoxbagr.svg',
          height: 30,
          width: 25,
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icon/dark.svg',
              height: 25,
              width: 25,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SizedBox(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              //  Поиск
              Mysearchbar(),
              //  Слайдер
              Sliderhome(),
              //  Кнопки
              HomeIcons(),
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                child: Category(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Special for you',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: products.length,
                
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return ProductCard(
                    products: products[index],
                  );
                },
              ),
              //  Все товары
              Allproduct(),
            ],
          ),
        ),
      ),
    );
  }
}
