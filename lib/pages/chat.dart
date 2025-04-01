import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobishop/Products/Cart/Product/details_screen.dart';
import 'package:mobishop/Products/Cart/Product_cart.dart';
import 'package:mobishop/Products/my_products.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(196, 34, 45, 0.2),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
        ),
        title: const Text(
          '  Чать',
          style: TextStyle(
            fontSize: 25,
            color: Color.fromRGBO(196, 34, 45, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icon/chat11.svg',
              height: 25,
              width: 25,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Text(
              'Продукты',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildProductCategory(index: 0, name: 'All Products'),
                  _buildProductCategory(index: 1, name: 'Smartphones'),
                  _buildProductCategory(index: 2, name: 'Laptops'),
                ],
              ),
              
            ),
            const SizedBox(height: 20),
            Expanded(
              child: isSelected == 0
                  ? _buildAllProducts()
                  : isSelected == 1
                  ? _buildSmartphones()
                  : _buildLaptops(),
            ),
          ],
        ),
      ),
    );
  }

  // Laptops
  Widget _buildLaptops() =>  GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (100 / 140),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        scrollDirection: Axis.vertical,
        itemCount: MyProducts.Notebook.length,
        itemBuilder: (context, index) {
          final laptops = MyProducts.Notebook[index];
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(product: laptops),
              ),
            ),
            child: ProductCart(product: laptops));
        },
      );


  // Smartphones
  Widget _buildSmartphones() => GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (100 / 140),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        scrollDirection: Axis.vertical,
        itemCount: MyProducts.Smartphones.length,
        itemBuilder: (context, index) {
          final smartphones = MyProducts.Smartphones[index];
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(product: smartphones),
              ),
            ),
            child: ProductCart(product: smartphones));
        },
      );

       /// AllProducts
  Widget _buildAllProducts() => GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (100 / 140),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        scrollDirection: Axis.vertical,
        itemCount: MyProducts.AllProducts.length,
        itemBuilder: (context, index) {
          final allProducts = MyProducts.AllProducts[index];
          return GestureDetector(
            onTap:() => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(product: allProducts),
              ),
            ),
            child: ProductCart(product: allProducts),
            );
        },
      );

  Widget _buildProductCategory({required int index, required String name}) =>
      GestureDetector(
        onTap: ()=> setState(()=> isSelected = index),
        child: Container(
          width: 100,
          height: 40,
          margin: const EdgeInsets.only(top: 10, left: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isSelected == index
                ? const Color.fromRGBO(196, 34, 45, 1)
                : const Color.fromRGBO(196, 34, 45, 0.6),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            name,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      );
}