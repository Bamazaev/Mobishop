import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobishop/Products/Cart/FavoriteProvider.dart';
import 'package:mobishop/pages/accaunt.dart';
import 'package:mobishop/pages/cart.dart';
import 'package:mobishop/pages/chat.dart';
import 'package:mobishop/pages/home.dart';
import 'package:mobishop/pages/katalog.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static final title = 'salomon_bottom_bar';

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MultiProvider(
  providers: [
    ChangeNotifierProvider(create: (_)=>FavoriteProvider()),
  ],
  child: MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'OS MOBISHOP',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Color.fromRGBO(196, 34, 45, 1),
      ),
    ),
    home: const MyHomePage(title: 'OS MOBISHOP'),
  ),
  );
}
  

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _currentIndex = 0;
  List pages = [Home(), Katalog(), Chat(), Cart(), Accaunt()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Хедер
      

      // Бади
      body: pages[_currentIndex],
      // Боттом
      bottomNavigationBar:
          MediaQuery.of(context).size.width < 600
              ? Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(196, 34, 45, 0.1),
                ),
                child: SalomonBottomBar(
                  duration: const Duration(milliseconds: 800),
                  currentIndex: _currentIndex,
                  onTap: (value) {
                    setState(() {
                      _currentIndex = value;
                    });
                  },
                  items: [
                    /// Домой
                    SalomonBottomBarItem(
                      icon: SvgPicture.asset(
                        'assets/icon/home1.svg',
                        height: 30,
                      ),
                      title: Text(""),
                      selectedColor: Color.fromRGBO(196, 34, 45, 1),
                    ),

                    /// Каталог
                    SalomonBottomBarItem(
                      icon: SvgPicture.asset(
                        'assets/icon/search.svg',
                        height: 25,
                      ),
                      title: Text("Каталог"),
                      selectedColor: Color.fromRGBO(196, 34, 45, 1),
                    ),

                    /// Чать
                    SalomonBottomBarItem(
                      icon: SvgPicture.asset(
                        'assets/icon/chat.svg',
                        height: 25,
                      ),
                      title: Text("Чать"),
                      selectedColor: Color.fromRGBO(196, 34, 45, 1),
                    ),

                    /// Корзина
                    SalomonBottomBarItem(
                      icon: SvgPicture.asset(
                        'assets/icon/cart.svg',
                        height: 25,
                      ),
                      title: Text("Корзина"),
                      selectedColor: Color.fromRGBO(196, 34, 45, 1),
                    ),

                    /// Аккаунт
                    SalomonBottomBarItem(
                      icon: SvgPicture.asset(
                        'assets/icon/accaunt.svg',
                        height: 25,
                      ),
                      title: Text("Аккаунт"),
                      selectedColor: Color.fromRGBO(196, 34, 45, 1),
                    ),
                  ],
                ),
              )
              : SizedBox.shrink(
              ),
    );
  }
}
