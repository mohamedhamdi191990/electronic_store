import 'package:butterfly/Screens/product_details.dart';
import 'package:butterfly/models/product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class ProductCard extends StatelessWidget {
  final int itemIndex;
  final Product product;

  const ProductCard({required this.itemIndex, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: primaryPadding,
        horizontal: primaryPadding / 2,
      ),
      decoration: BoxDecoration(),
      height: primaryPadding * 10,
      alignment: Alignment.bottomCenter,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetails(product: product),
            ),
          );
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(22),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 15),
                      blurRadius: 25)
                ],
              ),
              height: 160,
              width: 400,
              margin: EdgeInsets.all(primaryPadding / 2),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              child: Container(
                height: 160,
                width: 200,
                padding: EdgeInsets.symmetric(horizontal: primaryPadding),
                child: Image.asset(
                  product.image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              height: 100,
              width: 140,
              bottom: 0.0,
              right: 0.0,
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Column(
                  children: [
                    Text(
                      product.title,
                      style: GoogleFonts.getFont("Almarai",
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: titleColor),
                    ),
                    Text(
                      product.subTitle,
                      style: GoogleFonts.getFont("Almarai",
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: subtitleColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: primaryPadding / 2),
                      child: Container(
                        height: 30,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius:
                                BorderRadius.all(Radius.circular(22))),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Center(
                            child: Text(
                              "السعر:\$${product.price}",
                              style: GoogleFonts.getFont(
                                "Almarai",
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: priceColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
