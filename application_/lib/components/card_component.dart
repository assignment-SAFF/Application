import 'package:application_/components/text_component.dart';
import 'package:application_/utils/colors.dart';
import 'package:application_/utils/spacings.dart';
import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  const CardComponent(
      {super.key,
      required this.name,
      required this.email,
      required this.id,
      required this.phone});
  final String name;
  final String email;
  final String id;
  final String phone;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: grey100,
            border: Border.all(color: white),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(color: white),
                      color: bgColor,
                      borderRadius: BorderRadius.circular(25)),
                  child: TextComponent(
                    data: id,
                    fontSize: 12,
                    isColorBlack: true,
                    isbold: false,
                  ),
                ),
                aHSpace16,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextComponent(
                      data: name,
                      fontSize: 15,
                      isColorBlack: true,
                      isbold: true,
                    ),
                    aVSpace4,
                    TextComponent(
                      data: email,
                      fontSize: 12,
                      isColorBlack: false,
                      isbold: false,
                    ),
                  ],
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Container(
                padding: const EdgeInsets.all(5),
                color: green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  const  Icon(Icons.phone , size:18) ,
                  aHSpace4,
                    TextComponent(
                      data: phone,
                      fontSize: 14,
                      isColorBlack: true,
                      isbold: false,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
