import 'package:flutter/material.dart';
import 'package:mobishop/contact.dart';
import 'package:mobishop/models/categories_modal.dart';

class ItemsDetails extends StatelessWidget {
  final ProductModal products;
  const ItemsDetails({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          products.title,
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
        ),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${products.price} Сомони',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Container(
              width: 50,
              height: 23,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: secondaryColor,
              ),
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  Icon(Icons.star, size: 14, color: textColorw),
                  SizedBox(width: 3),
                  Text(
                    products.rate.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: textColorw,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Text(products.review, style: TextStyle(color: Colors.grey[500], fontSize: 10)),
            Spacer(),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: "Компания: ", style: TextStyle(fontSize: 13),),
                  TextSpan(text: products.seller, style: TextStyle(fontSize: 13),),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
