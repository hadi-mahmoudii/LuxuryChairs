import 'package:chairluxeshop/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/product.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final defaultsize = SizeConfig.defaultSize;
  int choisedBox = 0;
  var lightText = TextStyle(
    color: Colors.black.withOpacity(0.4),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: defaultsize! * 34,
      width: defaultsize! * 15,
      padding: EdgeInsets.symmetric(horizontal: defaultsize! * 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.product.category.toUpperCase(), style: lightText),
          Text(
            widget.product.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: -0.5,
              fontSize: defaultsize! * 2.4,
              height: 1.5,
            ),
          ),
          SizedBox(
            height: defaultsize! * 2,
          ),
          Text(
            "form",
            style: lightText,
          ),
          Text(
            "\$${widget.product.price}",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: defaultsize! * 1.5,
                height: 1.5),
          ),
          SizedBox(
            height: defaultsize! * 2,
          ),
          Text(
            "Available colors",
            style: lightText.copyWith(fontSize: defaultsize! * 1.5),
          ),
          Row(
            children: List.generate(
                3,
                (index) => InkWell(
                    onTap: () {
                      setState(() {
                        choisedBox = index;
                      });
                    },
                    child: colorBox(
                      index,
                      choisedBox,
                    ))),
          )
        ],
      ),
    );
  }
}

Widget colorBox(int index, int choisedBox) {
  List<Color> boxColors = [
    Colors.greenAccent,
    Colors.grey,
    Colors.black,
  ];

  final defaultsize = SizeConfig.defaultSize;

  return Container(
      margin: const EdgeInsets.only(right: 5, top: 5),
      height: defaultsize! * 2,
      width: defaultsize! * 2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: boxColors[index]),
      child: SvgPicture.asset(
        "assets/icons/check.svg",
        color: choisedBox == index ? Colors.white : Colors.transparent,
        alignment: Alignment.center,
      ));
}
