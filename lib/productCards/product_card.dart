import 'package:flutter/material.dart';
import 'package:grocery_app/productCards/cart_page.dart';
import '../homePage/home_page.dart';

class ProductCard extends StatelessWidget {
  final List<dynamic> product;
  final String sku;
  final HomePage homePage;
  const ProductCard({
    super.key,
    required this.product,
    required this.sku,
    required this.homePage,
  });

  bool isInCartProducts(){
      for(int i = 0; i<cartProducts.length; i++){
        if(cartProducts[i][6] == sku) { return true;}
      }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
          width: 150,
          height: 200,
          decoration: BoxDecoration(
              color: product[5], borderRadius: BorderRadius.circular(6)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8, top: 2, bottom: 0),
                child: Text(
                  product[0],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 17),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8, top: 0, bottom: 4),
                child: Text(
                  product[1],
                  style: const TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8, top: 5, bottom: 0),
                child: Text(
                  product[2],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 15),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8, top: 0, bottom: 0),
                child: Text(
                  product[3],
                  style: const TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
            ),
            Expanded(
                flex: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage(product[4])),
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                IconButton(
                  tooltip: "Add to Cart",
                  icon: const Icon(Icons.shopping_cart_checkout_sharp,
                  color: Colors.white,
                  ),
                  // ignore: invalid_use_of_protected_member
                  onPressed: () => homePage.setState((){
                    if(isInCartProducts()){ return; }
                    product.add(sku);
                    cartProducts.add(product);
                  }),
                )
              ],
            )
          ])),
    );
  }
}
