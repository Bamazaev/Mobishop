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
      body: Column(
        children: [
          FadeInDown(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.72,
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: categories.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.69,
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
                              width: MediaQuery.of(context).size.width * 0.34,
                              height: MediaQuery.of(context).size.height * 0.14,
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width:
                                      MediaQuery.of(context).size.width * 0.11,
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
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
                                      MediaQuery.of(context).size.width * 0.11,
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
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

          FadeInRight(
            child: Expanded(
              child: Text(
                textAlign: TextAlign.end,
                'Итого: 0 сомони',
                style: TextStyle(
                  color: Color.fromRGBO(196, 34, 45, 1),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
