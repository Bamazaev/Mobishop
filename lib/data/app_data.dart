import 'package:flutter/material.dart';
import 'package:mobishop/models/base_model.dart';
import 'package:mobishop/models/categories_modal.dart';

List<CategoriesModal> categories = [
  CategoriesModal(
    id: 1,
    subtitle: 'Смартфоны',
    imageUrl: 'assets/button/Смартфоны.png',
  ),
  CategoriesModal(
    id: 2,
    subtitle: 'Ноутбуки',
    imageUrl: 'assets/button/Ноутбуки.png',
  ),
  CategoriesModal(
    id: 3,
    subtitle: 'Акссесуары',
    imageUrl: 'assets/button/Акссесуары.png',
  ),
  CategoriesModal(id: 4, subtitle: 'Б/У', imageUrl: 'assets/button/БУ.png'),
  CategoriesModal(
    id: 5,
    subtitle: 'Акция',
    imageUrl: 'assets/button/Акссесуары.png',
  ),
  CategoriesModal(
    id: 6,
    subtitle: 'Предзаказ',
    imageUrl: 'assets/button/Перед Заказ.png',
  ),
];

List<ProductModal> products = [
  ProductModal(
    id: 1,
    title: 'iPhone 15 Pro Max',
    decoration:
        '256 GB (nano-SIM+eSIM), Titanium. Ин смартфон бо экрани 6.7-дюймаи Super Retina XDR, протсессори A17 Pro, ва системаи камераи сегонаи 48+12+12MP меояд. Ҷисмаш аз титан сохта шудааст, ки сабук ва устувор мебошад.',
    review: 'Беҳтарин интихоби премиум!',
    seller: 'Apple Store',
    image: 'assets/product/iphone15promax.png',
    price: 1200.00,
    color: [Colors.black, Colors.blue, Colors.grey],
    Category: 'Smartphones',
    rate: 4.8,
    quantity: 10,
  ),
  ProductModal(
    id: 2,
    title: 'iPhone 16 Pro Max',
    decoration:
        '512 GB (nano-SIM+eSIM), Black. Навтарин флагман аз Apple бо экрани 6.9-дюймаи LTPO OLED, чипи A18 Bionic ва системаи камераи навшуда, ки бо технологияи AI такмил дода шудааст. Батареяи пурқувват то 2 рӯз кор мекунад.',
    review: 'Навтарин флагман аз Apple!',
    seller: 'Apple Store',
    image: 'assets/product/iPhone 16 Pro Max.png',
    price: 1400.00,
    color: [Colors.black, Colors.grey, Colors.white],
    Category: 'Smartphones',
    rate: 4.9,
    quantity: 8,
  ),
  ProductModal(
    id: 3,
    title: 'Samsung Galaxy S24 Ultra',
    decoration:
        '512 GB (nano-SIM+eSIM), Phantom Black. Смарфон бо экрани 6.8-дюймаи Dynamic AMOLED 2X, протсессори Snapdragon 8 Gen 3, ва камераи 200MP бо системаҳои зум ва стабилизатсия. Дастгирии S-Pen ва заряди 65W.',
    review: 'Қудрати Galaxy бо S-Pen!',
    seller: 'Samsung Official',
    image: 'assets/product/Samsung Galaxy S24 Ultra.png',
    price: 1100.00,
    color: [Colors.black, Colors.white, Colors.green],
    Category: 'Smartphones',
    rate: 4.7,
    quantity: 15,
  ),
  ProductModal(
    id: 4,
    title: 'Xiaomi 14 Ultra',
    decoration:
        '512 GB, Leica Camera, White. Ин флагмани Xiaomi бо экрани 6.7-дюймаи AMOLED, протсессори Snapdragon 8 Gen 3 ва камераи 50MP бо технологияи Leica Summilux меояд. Батареяи 5000mAh бо заряддиҳии 120W.',
    review: 'Шаҳкори нави Xiaomi!',
    seller: 'Xiaomi Store',
    image: 'assets/product/Xiaomi 14 Ultra.png',
    price: 950.00,
    color: [Colors.white, Colors.black, Colors.blue],
    Category: 'Smartphones',
    rate: 4.6,
    quantity: 12,
  ),
  ProductModal(
    id: 5,
    title: 'Redmi K70 Pro',
    decoration:
        '256 GB, Snapdragon 8 Gen 3, Black. Смартфони флагманӣ бо нархи дастрас, экрани 6.67-дюймаи OLED, суръати навсозии 144Hz ва камераи 50MP. Батареяи 5000mAh бо заряддиҳии 120W.',
    review: 'Флагмани дастрас!',
    seller: 'Xiaomi Store',
    image: 'assets/product/Redmi K70 Pro.png',
    price: 700.00,
    color: [Colors.black, Colors.red],
    Category: 'Smartphones',
    rate: 4.5,
    quantity: 20,
  ),
  ProductModal(
    id: 6,
    title: 'Redmi Note 13 Pro+',
    decoration:
        '256 GB, Dimensity 7200 Ultra, White. Телефони миёнаҳол бо экрани 6.67-дюймаи AMOLED, камераи 200MP бо OIS ва батареяи 5000mAh. Дастгирии 120W заряддиҳӣ.',
    review: 'Модели мустаҳкам ва дастрас!',
    seller: 'Xiaomi Store',
    image: 'assets/product/Redmi Note 13 Pro+.png',
    price: 500.00,
    color: [Colors.white, Colors.blue],
    Category: 'Smartphones',
    rate: 4.4,
    quantity: 25,
  ),
];

List<BaseModel> sliderlist = [
  BaseModel(
    id: 1, 
    name: 'iPhone 15 Pro Max', 
    imageUrl: 'assets/slider/1.png'),
  BaseModel(
    id: 2, 
    name: 'iPhone 16 Pro Max', 
    imageUrl: 'assets/slider/2.png'),
  BaseModel(
    id: 3,
    name: 'Samsung Galaxy S24 Ultra',
    imageUrl: 'assets/slider/3.png',
  ),
  BaseModel(
    id: 4, 
    name: 'Xiaomi 14 Ultra', 
    imageUrl: 'assets/slider/4.png'),
  BaseModel(
    id: 5,
    name: 'Redmi K70 Pro',
    imageUrl: 'assets/slider/slider 3.jpg',
  ),
  BaseModel(
    id: 6,
    name: 'Redmi Note 13 Pro+',
    imageUrl: 'assets/slider/slider 5.jpg',
  ),
];
