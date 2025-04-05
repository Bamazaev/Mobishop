import 'package:flutter/material.dart';
import 'package:mobishop/contact.dart';
import 'package:mobishop/models/categories_modal.dart';
import 'package:mobishop/pages/Details/widget/details_app_bar.dart';
import 'package:mobishop/pages/Details/widget/image_slider.dart';
import 'package:mobishop/pages/Details/widget/items_details.dart';

class DetailsScreen extends StatefulWidget {
  final ProductModal products;
  const DetailsScreen({super.key, required this.products});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int currentimage = 0;
  int currentcolor = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(233, 233, 233, 1),
      body: SafeArea(
        child: Column(
          children: [
            DetailsAppBar(),
            MyImageSlider(
              onChanged: (index) {
                setState(() {
                  currentimage = index;
                });
              },
              image: widget.products.image,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: currentimage == index ? 15 : 8,
                  height: 8,
                  margin: const EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:
                        currentimage == index
                            ? const Color.fromRGBO(192, 34, 45, 1)
                            : const Color.fromRGBO(192, 34, 45, 0.5),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: textColorw,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              padding: EdgeInsets.only(
                right: 20,
                left: 20,
                top: 20,
                bottom: 100,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItemsDetails(products: widget.products),
                  SizedBox(height: 20),
                  Text(
                    'Цвет',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      ...List.generate(
                        widget.products.color.length,
                        (index) => GestureDetector(
                          onTap: () {},
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color:
                                  currentcolor == index
                                      ? Colors.white
                                      : widget.products.color[index],
                              border:
                                  currentcolor == index
                                      ? Border.all(
                                        color: widget.products.color[index],
                                      )
                                      : null,
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
        ),
      ),
    );
  }
}
