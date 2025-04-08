import 'package:flutter/material.dart';
import 'package:mobishop/data/app_data.dart';
import 'package:mobishop/pages/home/allproduct.dart';
import 'package:mobishop/pages/home/product_cart.dart';

class Category1 extends StatelessWidget {
  const Category1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300, // Adjust height as needed
      child: GridView.builder(
        itemCount: categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // 3 columns
          crossAxisSpacing: 5, // Spacing between columns
          mainAxisSpacing: 5, // Spacing between rows
          childAspectRatio: 1, // Adjust aspect ratio if needed
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigate to another page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SomeOtherPage(
                    category: categories[index],
                  ),
                ),
              );
            },
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                        color: const Color.fromRGBO(196, 34, 45, 1),
                        width: 2,
                      ),
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage(categories[index].imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  categories[index].subtitle,
                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class SomeOtherPage extends StatelessWidget {
  final dynamic category; // Replace `dynamic` with the actual type of your category object

  const SomeOtherPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.subtitle), // Example usage
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: products.length,
                  
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    return ProductCard(
                      products: products[index],
                    );
                  },
                ),
      ),
    );
  }
}
