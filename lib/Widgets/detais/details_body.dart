import 'package:butterfly/constants.dart';
import 'package:butterfly/models/product.dart';
import 'package:flutter/material.dart';

class DetailsBody extends StatelessWidget {

 final Product product;
  const DetailsBody({required this.product});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          height: size.height * 0.6,
          width: size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(60),
              bottomRight: Radius.circular(60),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: primaryPadding * 2, right: primaryPadding * 2),
                child: Container(
                  height: 300,
                  width: size.width * 0.8,
                  child: Center(
                    child: Stack(
                      children: [
                        Container(
                          height: size.width * 0.7,
                          width: size.width * 0.7,
                          decoration: BoxDecoration(
                              color: Colors.black12, shape: BoxShape.circle),
                        ),
                        Image(image: AssetImage(product.image))
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                 product.title,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 10),
                child: Text(product.subTitle,
                    style: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: 100,
                  height: 25,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle, color: Colors.yellow),
                  child: Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Text("السعر:\$${product.price}",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),

          height: size.height * 0.15,
          width:size.width ,
          child: Text(
            product.description,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),

          ),
        )
      ],

    );
  }
}
