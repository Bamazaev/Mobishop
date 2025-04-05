import 'package:flutter/material.dart';
import 'package:mobishop/models/categories_modal.dart';
import 'package:mobishop/pages/Details/details_screen.dart';

class ProductCard extends StatefulWidget {
  final ProductModal products;
  const ProductCard({super.key, required this.products});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, MaterialPageRoute(
          builder: (context) => DetailsScreen(products: widget.products),),);
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(196, 34, 45, 0.1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                Center(
                  child: Image.asset(
                    widget.products.image,
                    width: 130,
                    height: 130,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    widget.products.title,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Text(
                    '${widget.products.price} TJS',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      Row(
                        children: List.generate(
                          widget.products.color.length,
                          (index) => Container(
                            height: 18,
                            width: 18,
                            margin: EdgeInsets.only(right: 4),
                            decoration: BoxDecoration(
                              color: widget.products.color[index],
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
