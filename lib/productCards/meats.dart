import 'package:flutter/material.dart';
import '../homePage/home_page.dart';
import '../variables.dart';
import 'product_card.dart';
import 'product_page.dart';

class MeatCards extends StatelessWidget{
  const MeatCards({super.key, required this.homePage});

  final HomePage homePage;
    productPage(BuildContext context, int index){
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context)=>ProductPage(
        homePage: homePage,
        description: meatDescriptions[index], sku: 'me-$index', index: index, products: meats,))
    );
  }

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      shrinkWrap: true,
      itemCount: meats.length~/2,
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
                    product: meats[column1],
                    sku: 'me-$column1',
                    homePage: homePage,
                    ),
              ),
            ),
                
            Expanded(
              child: InkWell(
                onTap: (){productPage(context, column2);},
                child: ProductCard(
                  product: meats[column2],
                  sku: 'me-$column2',
                  homePage: homePage
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
