import 'package:flutter/material.dart';
import 'package:grocery_app/homePage/home_page.dart';
import 'package:grocery_app/productCards/product_page.dart';
import '../variables.dart';
import 'product_card.dart';

class FruitCards extends StatelessWidget{
  const FruitCards({super.key, required this.homePage});

  final HomePage homePage;
  productPage(BuildContext context, int index){
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context)=>ProductPage(
        homePage: homePage,
        description: fruitDescriptions[index], sku: 'fu-$index', index: index, products: fruits,))
    );
  }

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      shrinkWrap: true,
      itemCount: fruits.length~/2,
      itemBuilder: (context, index) {
        int column1 = (index * 2);
        int column2 = (index * 2)+1;
        return Row(       //   1 Row
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: InkWell(
                onTap: (){productPage(context, column1);},
                child: ProductCard(
                    product: fruits[column1],
                    sku: 'fu-$column1',
                    homePage: homePage,
                    ),
              ),
            ),
                
            Expanded(
              child: InkWell(
                onTap: (){productPage(context, column2);},
                child: ProductCard(
                  product: fruits[column2],
                  sku: 'fu-$column2',
                  homePage: homePage,
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
