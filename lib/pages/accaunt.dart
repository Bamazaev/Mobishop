import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobishop/Products/Cart/FavoriteProvider.dart';

class Accaunt extends StatefulWidget {
  const Accaunt({super.key});

  @override
  State<Accaunt> createState() => _AccauntState();
}

class _AccauntState extends State<Accaunt> {
  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    final finalList = provider?.favorites ?? [];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(196, 34, 45, 0.2),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
        ),
        title: const Text(
          '  Аккаунт',
          style: TextStyle(
            fontSize: 25,
            color: Color.fromRGBO(196, 34, 45, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icon/accaunt.svg',
              height: 25,
              width: 25,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 20),
            child: Row(
              children: [
                Text(
                  'Favorites',
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: finalList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: ListTile(
                    title: Text(
                      finalList[index].name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      finalList[index].decoration,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
