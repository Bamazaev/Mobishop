import 'package:flutter/material.dart';
import 'package:mobishop/contact.dart';

class Descriptions extends StatelessWidget {
  final String decoration;
  const Descriptions({super.key, required this.decoration});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: secondaryColor,
              ),
              alignment: Alignment.center,
              child: Text(
                'Descriptions',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  
                ),
              ),
            ),
            Text(
              'Scriptions',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                
              ),
            ),
            Text(
              'Reviews',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Text(
          textAlign: TextAlign.justify,
          decoration,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.black45,
            
          ),
        ),
      ],
    );
  }
}
