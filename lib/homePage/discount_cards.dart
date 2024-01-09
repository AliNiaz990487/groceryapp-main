import 'package:flutter/material.dart';
import '../variables.dart';
import 'discount_card.dart';

class DiscountCards extends StatelessWidget {
  const DiscountCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          DiscountCard(
              backgroundColor: const Color.fromARGB(255, 182, 15, 15),
              mainText: Text(
                fruits[0][0],
                style: upperCardText,
              ),
              discriptionText: Text(
                '10% off',
                style: upperCardDescription,
              ),
              image: AssetImage(fruits[0][4])),
          DiscountCard(
              backgroundColor: Colors.orange,
              mainText: Text(
                vegetables[3][0],
                style: upperCardText,
              ),
              discriptionText: Text(
                '20% off',
                style: upperCardDescription,
              ),
              image: AssetImage(vegetables[3][4])),
          DiscountCard(
              backgroundColor: Colors.orange,
              mainText: Text(
                meats[3][0],
                style: upperCardText,
              ),
              discriptionText: Text(
                '15% off',
                style: upperCardDescription,
              ),
              image: AssetImage(meats[3][4])),
          DiscountCard(
              backgroundColor: Colors.orange,
              mainText: Text(
                dairy[2][0],
                style: upperCardText,
              ),
              discriptionText: Text(
                '8% off',
                style: upperCardDescription,
              ),
              image: AssetImage(dairy[2][4])),
        ],
      ),
    );
  }
}
