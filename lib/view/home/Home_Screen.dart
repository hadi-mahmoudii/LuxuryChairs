import 'package:chairluxeshop/constants.dart';
import 'package:chairluxeshop/size_config.dart';
import 'package:chairluxeshop/view/home/body/widgets/body.dart';
import 'package:flutter/material.dart';
import 'body/widgets/Appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }
}
