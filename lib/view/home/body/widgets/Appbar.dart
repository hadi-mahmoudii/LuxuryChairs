 import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../constants.dart';
import '../../../../size_config.dart';
 
 AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/menu.svg'),
          iconSize: SizeConfig.defaultSize),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/scan.svg',
              height: SizeConfig.defaultSize! * 2.4,
            )),
        const Center(
            child: Text(
          'scan',
          style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
        )),
        SizedBox(
          width: SizeConfig.defaultSize,
        ),
      ],
    );
  }

