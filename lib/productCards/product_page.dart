import 'package:flutter/material.dart';
import '../cart_with_count.dart';
import '../homePage/home_page.dart';
import 'buy_now.dart';
import 'cart_page.dart';


ProductPageState? productPage;
class ProductPage extends StatefulWidget {
  const ProductPage(
      {super.key,
      required this.description,
      this.discount = ' ',
      required this.sku,
      this.ratting = 5,
      required this.index,
      required this.products,
      required this.homePage});

  final List<List<dynamic>> products;
  final String description;
  final String discount;
  final String sku;
  final int ratting;
  final int index;
  final HomePage homePage;
  @override
  State<ProductPage> createState() => ProductPageState();
}

class ProductPageState extends State<ProductPage> {
  final mainTextStyle = const TextStyle(
      fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black);
  final double height = 10;
  bool isInCartProducts(){
      for(int i = 0; i<cartProducts.length; i++){
        if(cartProducts[i][6] == widget.sku) { return true;}
      }
    return false;
  }
  @override
  void dispose() {
    productPage = null;
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    productPage = this;
    return Scaffold(
        appBar: AppBar(
          title: Text('Fresh', style: mainTextStyle),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back), onPressed: (){
              widget.homePage.setState(() {});
              Navigator.pop(context);
              },),
          actions: [
            CartWithCount(
              inCartProducts: cartProducts.length,
            ),
            const SizedBox(width: 10)
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: widget.products[widget.index][5],
                          ),
                          child: Image(
                              image: AssetImage(
                                  widget.products[widget.index][4]))),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GetSKU(sku: widget.sku),
                        Ratting(
                          ratting: widget.ratting,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height,
                    ),
                    Text(widget.products[widget.index][0],
                        style: mainTextStyle),
                    SizedBox(
                      height: height,
                    ),
                    Text(widget.description),
                    SizedBox(
                      height: height,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(widget.products[widget.index][2], style: mainTextStyle)
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.discount),
                        Row(children: const [
                          Icon(Icons.rocket_launch),
                          Text('Express delivery')
                        ])
                      ],
                    ),
                    SizedBox(
                      height: height,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: ()=>setState((){
                              if(isInCartProducts()){ return; }
                              cartProducts.add(widget.products[widget.index]);
                              cartProducts[cartProducts.length-1].add(widget.sku);
                            }),
                            child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.green, width: 2),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.add_shopping_cart),
                                    Text("CART",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold))
                                  ],
                                )),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => BuyNow(fromProductPage: true, sku: widget.sku,))),
                            child: Container(
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.green,
                                ),
                              alignment: Alignment.center,
                              child: const Text('BUY NOW',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}



class GetSKU extends StatelessWidget {
  final String sku;
  const GetSKU({
    super.key,
    required this.sku,
  });

  @override
  Widget build(BuildContext context) {
    return Text('SKU:  $sku');
  }
}



// ignore: must_be_immutable
class Ratting extends StatelessWidget {
  int ratting = 5;
  Ratting({super.key, int ratting = 5}) {
    if (ratting >= 0 && ratting <= 5) {
      this.ratting = ratting;
    }
  }
//5
//3
//5-3 = 2
// 5-2 = 3
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      for (int i = 0; i < (5 - (5 - ratting)); i++)
        const Icon(Icons.star, color: Color.fromARGB(255, 234, 255, 3)),
      for (int i = 0; i < (5 - ratting); i++) const Icon(Icons.star)
    ]);
  }
}
