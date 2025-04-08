import 'package:flutter/material.dart';
import 'package:mobishop/Provider/cart_provider.dart';
import 'package:mobishop/contact.dart';
import 'package:mobishop/models/categories_modal.dart';

class AddToCart extends StatefulWidget {
  final ProductModal products;
  const AddToCart({super.key, required this.products});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    final provider=CartProvider.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),

      child: Container(
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color.fromRGBO(196, 34, 45, 1),
        ),
        padding: EdgeInsets.symmetric(horizontal: 15),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      if(currentIndex != 1){
                        setState(() {
                          currentIndex --;
                        }
                        );
                      }
                    },
                    iconSize: 20,
                    icon: Icon(Icons.remove, color: Colors.white),
                  ),
                  SizedBox(width: 5),
                  Text(
                    currentIndex.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      
                        setState(() {
                          currentIndex ++;
                        }
                        );
                      
                    },
                    iconSize: 20,
                    icon: Icon(Icons.add, color: Colors.white),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                provider.toggleFavorite(widget.products);
                final snackBar = SnackBar(
                  content: Text(
                    'Товар в корзина',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: textColorw,
                    ),
                  ),
                  duration: Duration(seconds: 1),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: textColorb,
                ),
                alignment: Alignment.center,padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Добавить в корзину',
                  style: TextStyle(
                    color: textColorw,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
