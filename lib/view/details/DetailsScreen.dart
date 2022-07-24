import 'package:chairluxeshop/constants.dart';
import 'package:chairluxeshop/models/product.dart';
import 'package:chairluxeshop/size_config.dart';
import 'package:chairluxeshop/view/home/body/widgets/body.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'widgets/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: buildAppBar(),
      body: DBody(product: product,),
      
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
          onPressed: () => Get.back(),
          icon: SvgPicture.asset("assets/icons/arrow-long-left.svg")),
          actions: [
            IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/bag.svg")),
            SizedBox(width: SizeConfig.defaultSize,)
          ],
    );
  }
}
