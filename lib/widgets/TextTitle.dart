import 'package:chairluxeshop/size_config.dart';
import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
   TextTitle({
    
    required this.title,
  });

  final String title;
  final defaultSize = SizeConfig.defaultSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:
          TextStyle(fontSize: defaultSize! * 1.6, fontWeight: FontWeight.bold),
    );
  }
}
