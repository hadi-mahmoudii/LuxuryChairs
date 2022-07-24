import 'package:chairluxeshop/constants.dart';
import 'package:chairluxeshop/models/product.dart';
import 'package:chairluxeshop/size_config.dart';
import 'package:chairluxeshop/view/details/widgets/Description_Pr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Details_pr.dart';

class DBody extends StatelessWidget {
  DBody({required this.product});
  final defaultsize = SizeConfig.defaultSize;
  final Product product;
  bool isPortrait = SizeConfig.orientation == Orientation.portrait;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SizedBox(
      width: double.infinity,
      height: SizeConfig.screenHeight,
      child: Stack(
        children: [
          ProductDetails(
            product: product,
          ),
          Positioned(
              bottom: 0,
              right: isPortrait ? 0 : SizeConfig.screenWidth! / 3,
              left: 0,
              child: DescriptionProduct(product: product)),
          Positioned(
              right: 0,
              top: isPortrait ? 65 : 0,
              child: SizedBox(
                  width: isPortrait
                      ? SizeConfig.screenWidth! * 0.7
                      : SizeConfig.screenWidth! / 2.5,
                  child: AspectRatio(
                    aspectRatio: isPortrait ? 0.8 : 1.1,
                    child: Hero(
                      tag: product.id,
                      child: Image.network(
                        product.image,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  )))
        ],
      ),
    ));
  }
}
