import 'package:flutter/material.dart';
import '../model/model.dart';
import '../utils/style.dart';
import '../utils/customIcons.dart';
import 'productDetail.dart';

class HomePage extends StatelessWidget {
  final product = products[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 500,
              child: LayoutBuilder(builder: (ctx, ct) {
                double w = ct.maxWidth;
                double h = ct.maxHeight;
                return Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                      child: Hero(
                        tag: "bg",
                        child: Container(
                          height: h * .8,
                          width: w * .9,
                          color: Color(0xFFFFC5C5),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 65,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            product.type,
                            style: AppStyle.appbarStyle,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(product.name, style: AppStyle.headingStyle)
                        ],
                      ),
                    ),
                    Positioned(
                      top: h * .32,
                      left: -50,
                      child: Hero(
                        tag: product.name,
                        child: Image.asset(
                          product.imgUrl,
                          width: 370,
                          height: 350,
                        ),
                      ),
                    )
                  ],
                );
              }),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Amazing Speed.",
                    style: AppStyle.headingStyle2,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Incredible Power.",
                    style: AppStyle.headingStyle2,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "The Top Fuel 9.9 XX1 AXS is built for Speed and Capability on Any terrein",
                      style: AppStyle.descStyle),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, bottom: 10.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                          icon: Icon(
                            Icons.arrow_forward,
                            size: 35.0,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) =>
                                    ProductDetail(product: product),
                              ),
                            );
                          }),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
