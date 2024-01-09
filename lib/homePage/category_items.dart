import 'package:flutter/material.dart';
import '../productCards/dairy.dart';
import '../productCards/fruits.dart';
import '../productCards/meats.dart';
import '../productCards/vegetables.dart';
import 'category_item.dart';
import 'home_page.dart';
  List<Color> highlighted = [
    Colors.blue,
    Colors.black,
    Colors.black,
    Colors.black,
  ];

class CategoryItems extends StatefulWidget {
  final HomePage homePage;
  const CategoryItems({super.key, required this.homePage});
  @override
  State<CategoryItems> createState() => CategoryItemsState();
}

class CategoryItemsState extends State<CategoryItems> {
  void unSelectAll() {
    for (int i = 0; i < highlighted.length; i++) {
      highlighted[i] = Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CategoryCard(
            image:
                const Image(width: 25, image: AssetImage('assets/images/category/fruits.png')),
            text: const Text(
              'Fruits',
              style: TextStyle(fontSize: 8),
            ),
            highlight: highlighted[0],
            selectCategory: () {
              unSelectAll();
              highlighted[0] = Colors.blue;
              widget.homePage.item = FruitCards(homePage: widget.homePage,);
              widget.homePage.setState((){});
            }),
        CategoryCard(
            image:
                const Image(width: 25, image: AssetImage('assets/images/category/vegetables.png')),
            text: const Text('Vegetables', style: TextStyle(fontSize: 8)),
            highlight: highlighted[1],
            selectCategory: () {
              unSelectAll();
              highlighted[1] = Colors.blue;
              widget.homePage.item = VegetableCards(homePage: widget.homePage);
              widget.homePage.setState(() {
              });
            }),
        CategoryCard(
            image:
                const Image(width: 25, image: AssetImage('assets/images/category/meat.png')),
            text: const Text('Meats', style: TextStyle(fontSize: 8)),
            highlight: highlighted[2],
            selectCategory: () {
              unSelectAll();
              highlighted[2] = Colors.blue;
              widget.homePage.item = MeatCards(homePage: widget.homePage);
              widget.homePage.setState(() {});
            }),
        CategoryCard(
            image:
                const Image(width: 25, image: AssetImage('assets/images/category/dairy.png')),
            text: const Text('Dairy', style: TextStyle(fontSize: 8)),
            highlight: highlighted[3],
            selectCategory: () {
              unSelectAll();
              highlighted[3] = Colors.blue;
              widget.homePage.item = DairyCards(homePage: widget.homePage);
              widget.homePage.setState(() {});
            }),
      ],
    );
  }
}
