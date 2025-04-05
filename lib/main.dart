import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobishop/pages/accaunt.dart';
import 'package:mobishop/pages/cart.dart';
import 'package:mobishop/pages/chat.dart';
import 'package:mobishop/pages/home.dart';
import 'package:mobishop/pages/katalog.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static const title = 'salomon_bottom_bar';

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> pages = [Home(), Katalog(), Chat(), Cart(), Accaunt()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: MediaQuery.of(context).size.width < 600
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
                      'assets/icon/chat.svg',
                      height: 25,
                    ),
                    title: const Text("Чать"),
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
