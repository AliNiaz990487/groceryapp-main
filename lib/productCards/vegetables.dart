import 'package:flutter/material.dart';
import '../homePage/home_page.dart';
import '../variables.dart';
import 'product_card.dart';
import 'product_page.dart';

class VegetableCards extends StatelessWidget{
  const VegetableCards({super.key, required this.homePage});

  final HomePage homePage;
  productPage(BuildContext context, int index){
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context)=>ProductPage(
        homePage: homePage,
        description: vegetableDescriptions[index], sku: 've-$index', index: index, products: vegetables,))
    );
  }

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      shrinkWrap: true,
      itemCount: vegetables.length~/2,
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
                    product: vegetables[column1],
                    sku: 've-$column1', 
                    homePage: homePage,
                    ),
              ),
            ),
                
            Expanded(
              child: InkWell(
                onTap: (){productPage(context, column2);},
                child: ProductCard(
                  product: vegetables[column2],
                  sku: 've-$column2',
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


