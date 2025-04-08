import 'package:flutter/material.dart';
import 'package:mobishop/models/categories_modal.dart';
import 'package:provider/provider.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<ProductModal> _favorites =[

  ];
  List<ProductModal> get favorites => _favorites;
  void toggleFavorite(ProductModal products){
    
    if(_favorites.contains(products)){
      _favorites.remove(products);      
    }else{
      _favorites.add(products);
    }
    notifyListeners();
  }

  bool isExist(ProductModal product){
    final isExist = _favorites.contains(product);
    return isExist;
  }

  static FavoriteProvider of(
    BuildContext context, {
    bool listen = true,
  }){
    return Provider.of<FavoriteProvider> (context, listen: listen);
  }
}