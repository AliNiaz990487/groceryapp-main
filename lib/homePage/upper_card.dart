import 'package:flutter/material.dart';

import '../variables.dart';

class UpperCard extends StatelessWidget {
  final double width;
  final double height;
  final Color backgroundColor;
  final Text mainText;
  final Text discriptionText;
  final ImageProvider image;
  const UpperCard({
    super.key,
    this.width = 130,
    this.height = 70,
    required this.backgroundColor,
    required this.mainText,
    required this.discriptionText,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: padding),
      child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: backgroundColor, borderRadius: BorderRadius.circular(5)),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: mainText,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                child: Align(
                    alignment: Alignment.centerLeft, child: discriptionText),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Image(width: 50, image: image),
              ),
            ],
          )),
    );
  }
}
