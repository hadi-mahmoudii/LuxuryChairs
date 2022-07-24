
import 'package:chairluxeshop/size_config.dart';
import 'package:chairluxeshop/view/home/body/widgets/productsCard.dart';
import 'package:chairluxeshop/widgets/TextTitle.dart';
import 'package:flutter/material.dart';
import 'CategoryCard.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 20.0, top: 10),
              child: TextTitle(
                title: 'Browse by Categories',
              ),
            ),
            BuildCategoryCard(),
            const Divider(height: 5),
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: TextTitle(title: 'Recommands for you'),
            ),
            BuildProductCard(),
          ],
        ),
      ),
    );
  }
}

