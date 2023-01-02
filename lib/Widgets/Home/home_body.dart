import 'package:butterfly/Widgets/Home/product_card.dart';
import 'package:butterfly/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:butterfly/constants.dart';

import '../../Screens/product_details.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: primaryPadding / 2,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: CupertinoColors.secondarySystemGroupedBackground,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  margin: EdgeInsets.only(top: 70),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: products[index],

                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
