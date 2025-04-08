import 'package:flutter/material.dart';
import 'package:mobishop/models/categories_modal.dart';
import 'package:provider/provider.dart';

class CartProvider extends ChangeNotifier {
  final List<ProductModal> _cart =[

  ];
  List<ProductModal> get cart => _cart;
  void toggleFavorite(ProductModal products){
    if(_cart.contains(products)){
      for(ProductModal element in _cart){
        element.quantity++;
      }
      
    }else{
      _cart.add(products);
    }
    notifyListeners();
  }

  incrementQtn(int index){
    _cart[index].quantity++;
    notifyListeners();
  } 
  decrementQtn(int index){
    if(_cart[index].quantity <= 1){
      return;
    }
    _cart[index].quantity--;
    notifyListeners();
  }
  
  totalPrince(){ 
    double total1 =0.0;
  for(ProductModal element in _cart){
    total1+=element.price * element.quantity;
  }
  return total1;
  }

  static CartProvider of(
    BuildContext context, {
    bool listen = true,
  }){
    return Provider.of<CartProvider> (context, listen: listen);
  }
}