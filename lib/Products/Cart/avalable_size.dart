import 'package:flutter/material.dart';

class AvalableSize extends StatefulWidget {
  final String size;
  const AvalableSize({super.key,required this.size});

  @override
  State<AvalableSize> createState() => _AvalableSizeState();
}

class _AvalableSizeState extends State<AvalableSize> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) =>GestureDetector(
    onTap: () {
      setState(() {
        isSelected = !isSelected;
      });
    },
    child: Container(
      margin: const EdgeInsets.only(right: 16),
      width: 40,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color:isSelected? const Color.fromRGBO(196, 34, 45, 0.5): Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: const Color.fromRGBO(196, 34, 45, 1),
          
        ),
    
      ),
      child: Text(
        widget.size,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      
    ),
  );
}