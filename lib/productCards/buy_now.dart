import 'package:flutter/material.dart';
import 'package:grocery_app/homePage/home_page.dart';
import 'package:grocery_app/productCards/cart_page.dart';
import 'package:url_launcher/url_launcher.dart';

class BuyNow extends StatefulWidget {
  final String sku;
  final bool fromProductPage;
  final bool fromCartPage;
  bool cashOnDelivery = false;
  BuyNow(
      {super.key,
      this.fromProductPage = false,
      this.fromCartPage = false,
      this.sku = ''});

  @override
  State<BuyNow> createState() => _BuyNowState();
}

class _BuyNowState extends State<BuyNow> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _phoneNumberController = TextEditingController();

  final TextEditingController _addressController = TextEditingController();

  void _sendToWhatsApp() async {
    var name = _nameController.text;
    var phoneNumber = _phoneNumberController.text;
    var address = _addressController.text;
    var business = '+14099347339';
    String message =
        'Name: $name\nPhone Number: $phoneNumber\nAddress: $address';
    if (widget.fromProductPage) {
      message += '\nSku: ${widget.sku}';
    }
    if (widget.fromCartPage) {
      String temp = '';
      for (int i = 0; i < cartProducts.length; i++) {
        temp += '\nSKU: ${cartProducts[i].last}';
      }
      message += temp;
      cartProducts.clear();
    }
    var url = 'https://wa.me/$business?text=${Uri.encodeComponent(message)}';

    print(url);
    var uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  final TextStyle mainTextStyle = const TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Checkout'),
          titleTextStyle: mainTextStyle,
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 221, 221, 221),
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              if (cartPageState != null) {
                cartPageState!.setState(() {});
              }
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Delivery Address', style: mainTextStyle),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 6),
                  TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'Name',
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _phoneNumberController,
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _addressController,
                    decoration: const InputDecoration(
                      labelText: 'Address',
                    ),
                  ),
                  const SizedBox(height: 5),
                ],
              ),
              const SizedBox(height: 20),
              Text('Payment Method', style: mainTextStyle),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Expanded(
                    child: MyButton(
                        width: 150,
                        color: Colors.white,
                        widget: Image(
                            image:
                                AssetImage('assets/images/buttons/gpay.png'))),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: MyButton(
                        width: 150,
                        color: Colors.white,
                        widget: Image(
                            image: AssetImage(
                                'assets/images/buttons/applepay.png'))),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Expanded(
                    child: MyButton(
                        width: 150,
                        color: Colors.white,
                        widget: Image(
                            image: AssetImage(
                                'assets/images/buttons/debitcard.png'))),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        if (widget.cashOnDelivery) {
                          widget.cashOnDelivery = false;
                        } else {
                          widget.cashOnDelivery = true;
                        }
                        setState(() {});
                      },
                      child: MyButton(
                          width: 150,
                          color: widget.cashOnDelivery
                              ? Colors.black
                              : Colors.white,
                          widget: const Image(
                            image: AssetImage('assets/images/buttons/cod.png'),
                            width: 100,
                          )),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 80),
              Align(
                child: InkWell(
                  onTap: () {
                    if (_nameController.text == '' ||
                        _phoneNumberController.text == '' ||
                        _addressController.text == '') {
                      return;
                    }
                    _sendToWhatsApp();
                    if (homePage != null) {
                      homePage!.setState(() {});
                    }
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: const MyButton(
                      width: 290,
                      widget: Text('Place Order',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      color: Colors.black),
                ),
              )
            ],
          ),
        ));
  }
}

class MyButton extends StatelessWidget {
  const MyButton(
      {super.key,
      required this.widget,
      required this.color,
      this.width = 100,
      this.height = 50});
  final Widget widget;
  final Color color;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: width,
            height: height,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
                border: Border.all(width: 1.5),
                borderRadius: BorderRadius.circular(5),
                color: color),
            child: widget)
      ],
    );
  }
}
