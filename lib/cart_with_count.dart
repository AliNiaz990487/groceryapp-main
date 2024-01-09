import 'package:flutter/material.dart';

import 'productCards/cart_page.dart';

class CartWithCount extends StatefulWidget {
  const CartWithCount({
    super.key,
    required this.inCartProducts,
  });
  final int inCartProducts;
  @override
  State<CartWithCount> createState() => _CartWithCountState();
}

class _CartWithCountState extends State<CartWithCount> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Stack(
      alignment: Alignment.center,
      children: [
        IconButton(
            onPressed: widget.inCartProducts == 0? null: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CartPage())),
            icon:
                const Icon(Icons.shopping_cart_outlined, color: Colors.black)),
        widget.inCartProducts > 0
            ? Align(
                heightFactor: 2.09,
                alignment: Alignment.topCenter,
                child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(220, 76, 175, 79),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: widget.inCartProducts > 9
                        ? const Text("9+",
                            style: TextStyle(color: Colors.white, fontSize: 10))
                        : Text("${widget.inCartProducts}",
                            style: const TextStyle(
                                color: Colors.white, fontSize: 12))))
            : const SizedBox.shrink(),
      ],
    ));
  }
}
