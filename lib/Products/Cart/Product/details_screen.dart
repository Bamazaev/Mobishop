import 'package:flutter/material.dart';
import 'package:mobishop/Products/Cart/avalable_size.dart';
import 'package:mobishop/Products/Products.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Details'), centerTitle: true),
      body: Column(
        children: [
          SizedBox(height: 36),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 220,
                height: 220,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(196, 34, 45, 0.5),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(product.image, fit: BoxFit.cover),
              ),
            ],
          ),
          SizedBox(height: 36),
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              color: Color.fromRGBO(196, 34, 45, 0.1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.name.toUpperCase(),
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${product.price} сомони',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(196, 34, 45, 1),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 14),
                Text(
                  product.decoration,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 14),
                Row(
                  children: [
                    Text(
                      'Available Sizes:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 14),
                Row(
                  children: [
                    AvalableSize(size: 'S'),
                    AvalableSize(size: 'M'),
                    AvalableSize(size: 'L'),
                    AvalableSize(size: 'XL'),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      'Available Sizes:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 14),
                Row(
                  children: [
                    CircleAvatar(radius: 16, backgroundColor: Colors.blue),
                    SizedBox(width: 8),
                    CircleAvatar(radius: 16, backgroundColor: Colors.red),
                    SizedBox(width: 8),
                    CircleAvatar(radius: 16, backgroundColor: Colors.green),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.center,
          width: double.infinity,
          height:  MediaQuery.of(context).size.height /10,
          decoration: BoxDecoration(
            color: Color.fromRGBO(196, 34, 45, 1),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${product.price} сомони',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              ElevatedButton.icon(
              onPressed: (){}, 
              icon: Icon(Icons.send),
              label: Text('Add to Cart'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
