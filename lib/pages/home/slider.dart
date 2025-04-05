import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:mobishop/data/app_data.dart';
import 'package:mobishop/models/base_model.dart';

class Sliderhome extends StatefulWidget {
  const Sliderhome({super.key});

  @override
  State<Sliderhome> createState() => _SliderhomeState();
}

class _SliderhomeState extends State<Sliderhome> {
  final PageController _pageController = PageController();
  Timer? _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      if (_currentPage < sliderlist.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
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
    return Column(
      children: [
        FadeInDown(
          delay: const Duration(milliseconds: 150),
          animate: true,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width < 600 ? 300 : 500,
            child: PageView.builder(
              controller: _pageController,
              physics: const BouncingScrollPhysics(),
              itemCount: sliderlist.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (ctx, index) {
                return GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 500),
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
        FadeInDown(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                sliderlist.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: _currentPage == index ? 20 : 10,
                  height: 8,
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: _currentPage == index
                        ? const Color.fromRGBO(192, 34, 45, 1)
                        : const Color.fromRGBO(192, 34, 45, 0.5),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
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
          child: _buildCart(context, sliderlist[index]),
        );
      },
    );
  }

  Widget _buildCart(BuildContext context, BaseModel baseModel) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width < 600
          ? MediaQuery.of(context).size.height * 0.30
          : MediaQuery.of(context).size.height * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(baseModel.imageUrl),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: const Color.fromRGBO(196, 34, 45, 0.1),
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ],
      ),
    );
  }
}
