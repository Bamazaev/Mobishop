// ignore_for_file: sort_child_properties_last

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobishop/data/app_data.dart';
import 'package:mobishop/models/base_model.dart';
import 'package:animate_do/animate_do.dart';
import 'package:mobishop/models/categories_modal.dart'; // Import the package for FadeInUp

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _pageController = PageController();
  Timer? _timer;
  int _currentPage = 0;


  @override
  void initState() {
    super.initState();
    // _pageController = PageController(initialPage: 2, viewportFraction: 0.9);
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: 4), (Timer timer) {
      if (_currentPage < mainList.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

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
              //  Слайдер
              MediaQuery.of(context).size.width < 600
                  ? FadeInDown(
                    delay: Duration(milliseconds: 150),
                    animate: true,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      // color: Colors.red,
                      child: PageView.builder(
                        onPageChanged: (index) {
                          setState(() {
                            if (index > _currentPage) {
                              // Агар ба пеш равад (рост), ++currentPage
                              _currentPage++;
                            } else if (index < _currentPage) {
                              // Агар ба қафо равад (чап), --_currentPage
                              _currentPage--;
                            }
                          });
                          // print("Current Page: $_currentPage");
                        },
                        controller: _pageController,
                        physics: BouncingScrollPhysics(),
                        itemCount: mainList.length,
                        itemBuilder: (ctx, index) {
                          return GestureDetector(
                            onTap: () {
                              _pageController.animateToPage(
                                index,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            child: view(
                              index,
                              MediaQuery.of(context).size,
                              Theme.of(context).textTheme,
                            ),
                          );
                        },
                      ),
                    ),
                  )
                  :
                  // Слайдер для больших экранов
                  FadeInDown(
                    delay: Duration(milliseconds: 150),
                    animate: true,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      height: 500,
                      // color: Colors.red,
                      child: PageView.builder(
                        onPageChanged: (index) {
                          setState(() {
                            if (index > _currentPage) {
                              // Агар ба пеш равад (рост), ++currentPage
                              _currentPage++;
                            } else if (index < _currentPage) {
                              // Агар ба қафо равад (чап), --_currentPage
                              _currentPage--;
                            }
                          });
                          // print("Current Page: $_currentPage");
                        },
                        controller: _pageController,
                        physics: BouncingScrollPhysics(),
                        itemCount: mainList.length,
                        itemBuilder: (ctx, index) {
                          return GestureDetector(
                            onTap: () {
                              _pageController.animateToPage(
                                index,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            child: view(
                              index,
                              MediaQuery.of(context).size,
                              Theme.of(context).textTheme,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
              //  Кнопки
              MediaQuery.of(context).size.width < 600
                  ? SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.33,
                    child: Column(
                      children: [
                        FadeInRight(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () => print('Перед заказ'),
                                  child: Container(
                                    child: Container(
                                      alignment: Alignment.bottomCenter,

                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.height *
                                            0.30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(196, 34, 45, 1),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(13),
                                            bottomRight: Radius.circular(13),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Предзаказ',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      decoration: BoxDecoration(),
                                    ),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/button/Перед Заказ.png',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                        color: Color.fromRGBO(196, 34, 45, 1),
                                        width: 2,
                                      ),
                                    ),
                                    width:
                                        MediaQuery.of(context).size.width *
                                        0.30,
                                    height:
                                        MediaQuery.of(context).size.height *
                                        0.13,
                                  ),
                                ),
                                Container(
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.height *
                                          0.30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(196, 34, 45, 1),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(13),
                                          bottomRight: Radius.circular(13),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Смартфоны',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(),
                                  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/button/Смартфоны.png',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: Color.fromRGBO(196, 34, 45, 1),
                                      width: 2,
                                    ),
                                  ),
                                  width:
                                      MediaQuery.of(context).size.width * 0.30,
                                  height:
                                      MediaQuery.of(context).size.height * 0.13,
                                ),
                                Container(
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.height *
                                          0.30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(196, 34, 45, 1),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(13),
                                          bottomRight: Radius.circular(13),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Ноутбуки',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(),
                                  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/button/Ноутбуки.png',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: Color.fromRGBO(196, 34, 45, 1),
                                      width: 2,
                                    ),
                                  ),
                                  width:
                                      MediaQuery.of(context).size.width * 0.30,
                                  height:
                                      MediaQuery.of(context).size.height * 0.13,
                                ),
                              ],
                            ),
                          ),
                        ),
                        FadeInLeft(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.height *
                                          0.30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(196, 34, 45, 1),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(13),
                                          bottomRight: Radius.circular(13),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Акссесуары',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(),
                                  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/button/Акссесуары.png',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: Color.fromRGBO(196, 34, 45, 1),
                                      width: 2,
                                    ),
                                  ),
                                  width:
                                      MediaQuery.of(context).size.width * 0.30,
                                  height:
                                      MediaQuery.of(context).size.height * 0.13,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: Color.fromRGBO(196, 34, 45, 1),
                                      width: 2,
                                    ),
                                    color: Color.fromRGBO(196, 34, 45, 1),
                                  ),
                                  width:
                                      MediaQuery.of(context).size.width * 0.30,
                                  height:
                                      MediaQuery.of(context).size.height * 0.13,
                                  child: Center(
                                    child: Text(
                                      'Акция',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/button/БУ.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: Color.fromRGBO(196, 34, 45, 1),
                                      width: 2,
                                    ),
                                  ),
                                  width:
                                      MediaQuery.of(context).size.width * 0.30,
                                  height:
                                      MediaQuery.of(context).size.height * 0.13,
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.height *
                                          0.30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(196, 34, 45, 1),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(13),
                                          bottomRight: Radius.circular(13),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Б/У',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                  : SizedBox(
                    height: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () => print('Перед заказ'),
                          child: Container(
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: MediaQuery.of(context).size.height,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(196, 34, 45, 1),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(13),
                                    bottomRight: Radius.circular(13),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Предзаказ',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(),
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/button/Перед Заказ.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Color.fromRGBO(196, 34, 45, 1),
                                width: 2,
                              ),
                            ),
                            width: MediaQuery.of(context).size.width * 0.16,
                            height: MediaQuery.of(context).size.height / 2,
                          ),
                        ),
                        InkWell(
                          onTap: () => print('Перед заказ'),
                          child: Container(
                            child: Container(
                              alignment: Alignment.bottomCenter,

                              child: Container(
                                width: MediaQuery.of(context).size.height,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(196, 34, 45, 1),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(13),
                                    bottomRight: Radius.circular(13),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Смартфоны',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(),
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/button/Смартфоны.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Color.fromRGBO(196, 34, 45, 1),
                                width: 2,
                              ),
                            ),
                            width: MediaQuery.of(context).size.width * 0.16,
                            height: MediaQuery.of(context).size.height / 2,
                          ),
                        ),
                        InkWell(
                          onTap: () => print('ноутбуки'),
                          child: Container(
                            child: Container(
                              alignment: Alignment.bottomCenter,

                              child: Container(
                                width: MediaQuery.of(context).size.height,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(196, 34, 45, 1),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(13),
                                    bottomRight: Radius.circular(13),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Ноутбуки',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(),
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/button/Ноутбуки.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Color.fromRGBO(196, 34, 45, 1),
                                width: 2,
                              ),
                            ),
                            width: MediaQuery.of(context).size.width * 0.16,
                            height: MediaQuery.of(context).size.height / 2,
                          ),
                        ),
                        InkWell(
                          onTap: () => print('Акссесуары'),
                          child: Container(
                            child: Container(
                              alignment: Alignment.bottomCenter,

                              child: Container(
                                width: MediaQuery.of(context).size.height,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(196, 34, 45, 1),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(13),
                                    bottomRight: Radius.circular(13),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Акссесуары',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(),
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/button/Акссесуары.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Color.fromRGBO(196, 34, 45, 1),
                                width: 2,
                              ),
                            ),
                            width: MediaQuery.of(context).size.width * 0.16,
                            height: MediaQuery.of(context).size.height / 2,
                          ),
                        ),
                        InkWell(
                          onTap: () => print('Акция'),
                          child: Container(
                            child: Center(
                              child: Text(
                                'Акция',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromRGBO(196, 34, 45, 1),
                            ),
                            width: MediaQuery.of(context).size.width * 0.16,
                            height: MediaQuery.of(context).size.height / 2,
                          ),
                        ),
                        InkWell(
                          onTap: () => print('Б у'),
                          child: Container(
                            child: Container(
                              alignment: Alignment.bottomCenter,

                              child: Container(
                                width: MediaQuery.of(context).size.height,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(196, 34, 45, 1),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(13),
                                    bottomRight: Radius.circular(13),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Б/У',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(),
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/button/БУ.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Color.fromRGBO(196, 34, 45, 1),
                                width: 2,
                              ),
                            ),
                            width: MediaQuery.of(context).size.width * 0.16,
                            height: MediaQuery.of(context).size.height / 2,
                          ),
                        ),
                      ],
                    ),
                  ),
              //  Акция
              SizedBox(
                height: 35,
                child: Text(
                  'Акция',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              // ListView  категории Акция
              FadeInUp(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.33,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: categories.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      CategoriesModal current = categories[index];
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(196, 34, 45, 1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width:
                                      MediaQuery.of(context).size.width * 0.36,
                                  height:
                                      MediaQuery.of(context).size.height * 0.16,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(current.imageUrl),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    categories[index].name,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    categories[index].subtitle,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(196, 34, 45, 1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      width:
                                          MediaQuery.of(context).size.width *
                                          0.11,
                                      height:
                                          MediaQuery.of(context).size.height *
                                          0.05,
                                      child: Center(
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(
                                            'assets/icon/like body.svg',
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          categories[index].price.toString(),
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text("Сомони"),
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      width:
                                          MediaQuery.of(context).size.width *
                                          0.11,
                                      height:
                                          MediaQuery.of(context).size.height *
                                          0.05,
                                      child: Center(
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(
                                            'assets/icon/cart body.svg',
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              //  Новые продукты суб титле
              SizedBox(
                height: 30,
                child: Text(
                  'Новый продукты',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              // Новые продукты
              FadeInUp(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.33,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: categories.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      CategoriesModal current = categories[index];
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(196, 34, 45, 0.1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width:
                                      MediaQuery.of(context).size.width * 0.36,
                                  height:
                                      MediaQuery.of(context).size.height * 0.16,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(current.imageUrl),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    categories[index].name,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    categories[index].subtitle,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      width:
                                          MediaQuery.of(context).size.width *
                                          0.11,
                                      height:
                                          MediaQuery.of(context).size.height *
                                          0.05,
                                      child: Center(
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(
                                            'assets/icon/like body.svg',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          categories[index].price.toString(),
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text("Сомони"),
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      width:
                                          MediaQuery.of(context).size.width *
                                          0.11,
                                      height:
                                          MediaQuery.of(context).size.height *
                                          0.05,
                                      child: Center(
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(
                                            'assets/icon/cart body.svg',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              // Последный продукты суб титле
              SizedBox(
                height: 30,
                child: Text(
                  'Последный продукты',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              // Последный продукты
              FadeInUp(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: categories.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.65,
                      crossAxisCount: 2,
                    ),
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) {
                      CategoriesModal current = categories[index];
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(196, 34, 45, 0.1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width:
                                      MediaQuery.of(context).size.width * 0.34,
                                  height:
                                      MediaQuery.of(context).size.height * 0.14,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(current.imageUrl),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    categories[index].name,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    categories[index].subtitle,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      width:
                                          MediaQuery.of(context).size.width *
                                          0.11,
                                      height:
                                          MediaQuery.of(context).size.height *
                                          0.05,
                                      child: Center(
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(
                                            'assets/icon/like body.svg',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          categories[index].price.toString(),
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text("Сомони"),
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      width:
                                          MediaQuery.of(context).size.width *
                                          0.11,
                                      height:
                                          MediaQuery.of(context).size.height *
                                          0.05,
                                      child: Center(
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(
                                            'assets/icon/cart body.svg',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),

              
            ],
          ),
        ),
      ),
    );
    
  }
   

  Widget view(int index, Size size, TextTheme textTheme) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (ctx, child) {
        double value = 0.0;
        if (_pageController.position.haveDimensions) {
          value = index.toDouble() - (_pageController.page ?? 0);
          value = (value * 0.04).clamp(-1, 1);
        }
        return Transform.rotate(
          angle: 3.14 * value,
          child: _buildCart(context, mainList[index]),
        );
      },
    );
  }

  Padding _buildCart(BuildContext context, BaseModel baseModel) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        children: [
          MediaQuery.of(context).size.width < 600
              ? Container(
                margin: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(baseModel.imageUrl),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      color: Color.fromRGBO(196, 34, 45, 0.1),
                      blurRadius: 8,
                      spreadRadius: 2,
                    ),
                  ],
                ),
              )
              : Container(
                margin: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(baseModel.imageUrl),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      color: Color.fromRGBO(196, 34, 45, 0.1),
                      blurRadius: 8,
                      spreadRadius: 2,
                    ),
                  ],
                ),
              ),

          // Тексти наме главный текст
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text(baseModel.name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          // ),

          // нархнома сомони
          // RichText(text: TextSpan(
          //   children: [
          //     TextSpan(
          //       text: baseModel.price.toString(),
          //       style: TextStyle(color: Colors.black54, fontSize: 16, fontWeight: FontWeight.bold,
          //       ),
          //       children: [
          //         TextSpan(
          //           text: ' Сомони',
          //           style: TextStyle(color: Colors.black54, fontSize: 16, fontWeight: FontWeight.bold,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],

          // ),
          // )
        ],
      ),
    );
  }
}
