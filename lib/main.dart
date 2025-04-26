import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobishop/Provider/cart_provider.dart';
import 'package:mobishop/Provider/favorite_provider.dart';
import 'package:mobishop/pages/accaunt.dart';
import 'package:mobishop/pages/Cart/cart.dart';
import 'package:mobishop/pages/Like.dart';
import 'package:mobishop/pages/home/home.dart';
import 'package:mobishop/pages/Category/katalog.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const title = 'salomon_bottom_bar';

  @override
  Widget build(BuildContext context) => MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => CartProvider()),
      ChangeNotifierProvider(create: (_) => FavoriteProvider()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OS MOBISHOP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(196, 34, 45, 1),
        ),
      ),
      home: AnimatedSplashScreen(
        splash: SvgPicture.asset('assets/icon/mobi white.svg'),
        duration: 1000,
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: const Color.fromRGBO(196, 34, 46, 1),
        nextScreen: const MyHomePage(title: 'Home Page'),
      ),
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
  int _currentIndex = 0;
  final List<Widget> pages = [Home(), Katalog(), Favorite(), Cart(), Accaunt()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar:
          MediaQuery.of(context).size.width < 600
              ? Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(196, 34, 45, 0.1),
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
                    // Home
                    SalomonBottomBarItem(
                      icon: SvgPicture.asset(
                        'assets/icon/home1.svg',
                        height: 30,
                      ),
                      title: const Text(""),
                      selectedColor: const Color.fromRGBO(196, 34, 45, 1),
                    ),
                    // Catalog
                    SalomonBottomBarItem(
                      icon: SvgPicture.asset(
                        'assets/icon/search.svg',
                        height: 25,
                      ),
                      title: const Text("Каталог"),
                      selectedColor: const Color.fromRGBO(196, 34, 45, 1),
                    ),
                    // Chat
                    SalomonBottomBarItem(
                      icon: SvgPicture.asset(
                        'assets/icon/like body.svg',
                        height: 25,
                      ),
                      title: const Text("Избранный"),
                      selectedColor: const Color.fromRGBO(196, 34, 45, 1),
                    ),
                    // Cart
                    SalomonBottomBarItem(
                      icon: SvgPicture.asset(
                        'assets/icon/cart.svg',
                        height: 25,
                      ),
                      title: const Text("Корзина"),
                      selectedColor: const Color.fromRGBO(196, 34, 45, 1),
                    ),
                    // Account
                    SalomonBottomBarItem(
                      icon: SvgPicture.asset(
                        'assets/icon/accaunt.svg',
                        height: 25,
                      ),
                      title: const Text("Аккаунт"),
                      selectedColor: const Color.fromRGBO(196, 34, 45, 1),
                    ),
                  ],
                ),
              )
              : const SizedBox.shrink(),
    );
  }
}
