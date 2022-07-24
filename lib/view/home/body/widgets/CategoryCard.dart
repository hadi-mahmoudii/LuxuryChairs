import 'package:chairluxeshop/services/fetchCategories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants.dart';
import '../../../../controllers/categoriesController.dart';
import '../../../../models/categories.dart';
import '../../../../size_config.dart';
import '../../../../widgets/TextTitle.dart';

class BuildCategoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.defaultSize! * 2),
      child: FutureBuilder(
          future: fetchCategories(),
          builder: ((context, snapshot) {
            return snapshot.hasData
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: 
                       List.generate(snapshot.data!.length, (index) => CategoryCard(category: snapshot.data![index]))
                      
                    ),
                  )
                : Center(child: Image.asset("assets/ripple.gif"));
          })),
    );
  }
}


class CategoryCard extends StatelessWidget {
  final categoriesCon = Get.put(CategoriesCon());

  CategoryCard({required this.category});
  final Category category;

  @override
  Widget build(BuildContext context) {
    final int numOfProduct = category.numOfProducts ?? 100;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize!),
      child: SizedBox(
          width: SizeConfig.defaultSize! * 20.5,
          child: AspectRatio(
              aspectRatio: 0.83,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ClipPath(
                    clipper: CateforyCustomShape(),
                    child: AspectRatio(
                      aspectRatio: 1.025,
                      child: Container(
                        padding: EdgeInsets.all(SizeConfig.defaultSize! * 2),
                        color: kSecondaryColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextTitle(title: category.title),
                            SizedBox(
                              height: SizeConfig.defaultSize,
                            ),
                            Text(
                              "$numOfProduct+ products",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: kTextColor.withOpacity(0.6)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: AspectRatio(
                        aspectRatio: 1.15,
                        child: FadeInImage.assetNetwork(
                          placeholder: "assets/spinner.gif",
                          image: category.image,
                        ),
                      ))
                ],
              ))),
    );
  }
}

class CateforyCustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double height = size.height;
    double width = size.width;
    double cornerSize = 30;

    path.lineTo(0, height - cornerSize);
    path.quadraticBezierTo(0, height, cornerSize, height);
    path.lineTo(width - cornerSize, height);
    path.quadraticBezierTo(width, height, width, height - cornerSize);
    path.lineTo(width, cornerSize);
    path.quadraticBezierTo(width, 0, width - cornerSize, 0);
    path.lineTo(cornerSize, cornerSize * 0.75);
    path.quadraticBezierTo(0, cornerSize, 0, cornerSize * 2);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
