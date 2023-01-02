import 'package:butterfly/constants.dart';
import 'package:butterfly/models/product.dart';
import 'package:flutter/material.dart';

import '../Widgets/detais/details_body.dart';

class ProductDetails extends StatelessWidget {
  final Product product;

  const ProductDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
      appBar: buidDetailsAppbar(context),
      body: DetailsBody(product: product,),
    );
  }

  AppBar buidDetailsAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        "رجوع",
        style: TextStyle(color: Colors.blue),
      ),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Colors.blue,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
