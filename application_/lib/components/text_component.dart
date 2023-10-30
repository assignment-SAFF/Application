import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  const TextComponent({
    super.key,required this.data, required this.fontSize, required this.isColorBlack, required this.isbold,
  });
final String data;
final double fontSize;
  final bool isColorBlack;
    final bool isbold;

  @override
  Widget build(BuildContext context) {
    return Text(
     data,
      style: TextStyle(fontWeight: isbold ?
      FontWeight.bold : null, fontSize: fontSize ,
      color: isColorBlack ? Colors.black :
       Colors.grey[600]),
    );
  }
}
