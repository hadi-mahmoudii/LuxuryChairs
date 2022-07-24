import 'package:chairluxeshop/models/product.dart';
import 'package:chairluxeshop/services/fetchProducts.dart';
import 'package:chairluxeshop/size_config.dart';
import 'package:chairluxeshop/view/details/DetailsScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants.dart';

class BuildProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: FutureBuilder(
        future: fetchProduct(),
        builder: ((context, snapshot) {
          return snapshot.hasData
              ? GridView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data!.length,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          SizeConfig.orientation == Orientation.portrait
                              ? 2
                              : 4,
                      childAspectRatio: 0.7,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20),
                  itemBuilder: ((context, index) =>
                      ProductCard(product: snapshot.data![index])))
              : Center(child: Image.asset("assets/ripple.gif"));
        }),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()=> Get.to(()=> DetailsScreen(product: product)),
      child: Container(
        width: SizeConfig.defaultSize! * 13.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: kSecondaryColor),
        child: AspectRatio(
            aspectRatio: 0.8,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Hero(
                    tag: product.id,
                    child: FadeInImage.assetNetwork(
                        placeholder: "assets/spinner.gif", image: product.image),
                  ),
                ),
                Text(
                  product.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.defaultSize! * 0.5,
                ),
                Text(
                  "\$${product.price.toString()}",
                  style:
                      TextStyle(fontSize: 12, color: kTextColor.withOpacity(0.6)),
                )
              ],
            )),
      ),
    );
  }
}
