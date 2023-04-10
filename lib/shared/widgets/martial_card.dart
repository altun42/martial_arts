import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';
import 'package:martial_arts/modules/martialDetail/martial_detail_screen.dart';
import 'package:martial_arts/routes/app_pages.dart';

class MartialCard extends StatelessWidget {
  MartialCard({
    super.key,
    required this.path,
    required this.name,
    required this.philosophy,
  });
  final String path;
  final String name;
  final String philosophy;

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: () {
        Get.to(() => MartialDetailScreen(), arguments: [
          path,
          name,
          philosophy
        ]);
      },
      child: Container(
        height: 280,
        width: 230,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(path),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(50)),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: BlurryContainer(
            blur: 8,
            height: 90,
            width: 230,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)),
            child: Padding(
              padding: EdgeInsets.only(top: 2, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        fontFamily: "SpecialElite"),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Uzak Doğu Dövüş",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                        fontFamily: "SpecialElite"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
