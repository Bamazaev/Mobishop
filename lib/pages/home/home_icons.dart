import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class HomeIcons extends StatefulWidget {
  const HomeIcons({super.key});

  @override
  State<HomeIcons> createState() => _HomeIconsState();
}

class _HomeIconsState extends State<HomeIcons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                                    child: Container(
                                      alignment: Alignment.bottomCenter,
                                      decoration: BoxDecoration(),

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
                                    ),
                                  ),
                                ),
                                Container(
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
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    decoration: BoxDecoration(),
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
                                  ),
                                ),
                                Container(
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
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    decoration: BoxDecoration(),
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
                                  ),
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
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    decoration: BoxDecoration(),
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
                                  ),
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
                                    decoration: BoxDecoration(),
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
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(),
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
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => print('Перед заказ'),
                          child: Container(
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
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(),

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
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => print('ноутбуки'),
                          child: Container(
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
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(),

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
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => print('Акссесуары'),
                          child: Container(
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
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(),

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
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => print('Акция'),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromRGBO(196, 34, 45, 1),
                            ),
                            width: MediaQuery.of(context).size.width * 0.16,
                            height: MediaQuery.of(context).size.height / 2,
                            child: Center(
                              child: Text(
                                'Акция',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => print('Б у'),
                          child: Container(
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
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(),

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
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
 
      ],
    );
  }
}