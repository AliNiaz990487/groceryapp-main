import 'package:flutter/material.dart';


class CategoryCard extends StatelessWidget {
  final double width, height;
  final Image image;
  final Text text;
  final Function()? selectCategory;
  final Color highlight;
  const CategoryCard(
      {super.key, this.width = 60,
      this.height = 60,
      required this.image,
      required this.text,
      this.selectCategory,
      this.highlight = Colors.black,
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectCategory,
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: highlight),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 186, 185, 185), blurRadius: 8)
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(flex: 2, child: image),
              Expanded(child: text),
            ],
          )),
    );
  }
}
