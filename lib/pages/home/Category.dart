import 'package:flutter/material.dart';
import 'package:mobishop/data/app_data.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,

        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(196, 34, 45, 1), width: 2),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(categories[index].imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 3),
              Text(
                categories[index].subtitle,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 20),
      ),
    );
  }
}
