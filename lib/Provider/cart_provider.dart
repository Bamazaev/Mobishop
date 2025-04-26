import 'package:flutter/material.dart';
import 'package:mobishop/models/categories_modal.dart';
import 'package:provider/provider.dart';

class CartProvider extends ChangeNotifier {
  final List<ProductModal> _cart = [];

  List<ProductModal> get cart => _cart;

  // Илова ё зиёд кардани миқдори маҳсулот
  void toggleFavorite(ProductModal product) {
    int index = _cart.indexWhere((element) => element.id == product.id);

    if (index != -1) {
      // Маҳсулот аллакай мавҷуд аст — миқдор зиёд мешавад
      _cart[index].quantity++;
    } else {
      // Маҳсулоти нав — миқдорашро ба 1 мегузорем ва ба сабад меафзоем
      product.quantity = 1;
      _cart.add(product);
    }

    notifyListeners();
  }

  // Зиёд кардани миқдор аз худи сабад (бо кнопка +)
  void incrementQtn(int index) {
    _cart[index].quantity++;
    notifyListeners();
  }

  // Кам кардани миқдор аз худи сабад (бо кнопка -)
  void decrementQtn(int index) {
    if (_cart[index].quantity > 1) {
      _cart[index].quantity--;
    } else {
      // Агар як дона буд, несташ мекунем
      _cart.removeAt(index);
    }

    notifyListeners();
  }

  // Ҳисоб кардани маблағи умумӣ
  double totalPrice() {
    double total = 0.0;
    for (ProductModal element in _cart) {
      total += element.price * element.quantity;
    }
    return total;
  }

  // Тоза кардани сабад
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // Нест кардани як маҳсулоти мушаххас
  void removeFromCart(ProductModal product) {
    _cart.removeWhere((element) => element.id == product.id);
    notifyListeners();
  }

  // Барои дастрасӣ ба provider дар context
  static CartProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<CartProvider>(context, listen: listen);
  }
}
