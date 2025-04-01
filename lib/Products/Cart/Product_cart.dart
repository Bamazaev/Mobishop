import 'package:flutter/material.dart';
import 'package:mobishop/Products/Cart/FavoriteProvider.dart';
import '../Products.dart';

class ProductCart extends StatefulWidget {
  final Product product;

  const ProductCart({super.key, required this.product});

  @override
  State<ProductCart> createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
  @override
  Widget build(BuildContext context) {

final Provider = FavoriteProvider.of(context);

    return Container(
      width: MediaQuery.of(context).size.width / 2,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () => Provider.toggleFavorite(widget.product),
                child: Icon(
                  Provider.isExist(widget.product)
                  ?Icons.favorite
                  :Icons.favorite_outline_outlined,
                  
                  color: Color.fromRGBO(196, 34, 45, 1),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
            child: Image.asset(
              widget.product.image,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            widget.product.name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            widget.product.categories,
            style: const TextStyle(
              fontSize: 15,
              color: Color.fromRGBO(196, 34, 45, 0.5),
            ),
          ),
          Text('${widget.product.price}'  '  cомони', style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            
          ),),
        ],
      ),
    );
  }
}
