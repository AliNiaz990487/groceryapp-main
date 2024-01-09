import 'package:flutter/material.dart';

import '../variables.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Text(
              'Shop fresh groceries effortlessly. Personalized recommendations, easy checkout, and convenient delivery.',
              style: descriptionText,
            ),
          ),
          Expanded(flex: 1, child: Container()),
        ],
      ),
    );
  }
}