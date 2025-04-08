import 'package:flutter/material.dart';
import 'package:mobishop/Provider/cart_provider.dart';
import 'package:mobishop/contact.dart';

class CheakOutBox extends StatelessWidget {
  const CheakOutBox({super.key});

  @override
  Widget build(BuildContext context) {
    final Provider=CartProvider.of(context);
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        color: textColorw,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        )
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,

              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 15,

              ),
              filled: true,
              fillColor: textColorb,
              hintText: 'Ввсети код',
              hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
              suffixIcon: TextButton(onPressed: (){}, child: Text('Apply',
              style: TextStyle(
                color: textColorb,
                fontSize: 20,
                fontWeight: FontWeight.bold,

              ),))
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Товар', style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
              ),
              Text('${Provider.totalPrince()}  Сомони',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              ),
          ],
          ),
          SizedBox(height: 10,),
          Divider(),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Общый сумма', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: secondaryColor,
              ),
              ),
              Text('${Provider.totalPrince()}  Сомони',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: secondaryColor
              ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              backgroundColor: secondaryColor,
              minimumSize: Size(double.infinity, 55),
            ),
            child: Text('Купить',
            style: TextStyle(
              fontSize: 16,
              color: textColorw,
              fontWeight: FontWeight.bold,
            ),)
            )
        ],
      ),
    );
  }
}