import 'package:flutter/material.dart';
import '../cart_with_count.dart';
import '../productCards/cart_page.dart';
import '../productCards/fruits.dart';
import '../variables.dart';
import 'category_items.dart';
import 'description_text.dart';
import 'discount_cards.dart';
import 'search_bar.dart';

HomePage? homePage;

class HomePageState extends StatefulWidget {
  const HomePageState({super.key});
  @override
  HomePage createState() => HomePage();
}

class HomePage extends State {
  Widget? item;
  @override
  void dispose() {
    homePage = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    homePage = this;
    // item = FruitCards(homePage: this);
    return Scaffold(
        appBar: AppBar(
          title: Text('Daily Groceries', style: mainText),
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            CartWithCount(
              inCartProducts: cartProducts.length,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DescriptionText(),
              const SearchBar(),
              const DiscountCards(),
              Padding(
                padding: EdgeInsets.all(padding),
                child: const Text(
                  "Select Category",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              CategoryItems(homePage: this),
              item ?? FruitCards(homePage: this),
            ],
          ),
        ));
  }
}
