import 'package:chairluxeshop/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';

class DescriptionProduct extends StatelessWidget {
  DescriptionProduct({required this.product});
  final defaultsize = SizeConfig.defaultSize;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: defaultsize! * 39),
      padding: EdgeInsets.only(
          top: 50, left: defaultsize! * 2, right: defaultsize! * 2),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            product.subtitle,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: defaultsize! * 1.7),
          ),
          SizedBox(
            height: defaultsize! * 2,
          ),
          Text(
            product.description.toString(),
            style: TextStyle(
                color: kTextColor.withOpacity(0.6), height: 1.5, fontSize: 17),
          ),
          SizedBox(
            height: defaultsize! * 3.5,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
                  backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                ),
                onPressed: () {},
                child: const Text(
                  "Add to Cart",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
          )
        ],
      ),
    );
  }
}
