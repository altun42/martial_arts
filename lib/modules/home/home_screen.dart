import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';
import 'package:martial_arts/modules/home/home_screen_controller.dart';
import 'package:martial_arts/shared/widgets/martial_card.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import '../martialDetail/martial_detail_screen.dart';
import 'card_list.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
   

    Get.put(HomeScreenController());
    return Scaffold(
      body: SingleChildScrollView(child: Obx(() {
        return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(images[controller.imageIndex.value].path),
                    fit: BoxFit.cover)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Container(
                    color: Colors.black,
                    height: 270,
                    child: Column(
                      children: [
                        Padding(
                    padding: EdgeInsets.only(top: 50, left: 15),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                            style: TextStyle(fontSize: 25),
                            children: [
                              TextSpan(
                                  text: "MARTIAL  ARTS",
                                  style: TextStyle(
                                      fontFamily: "SedgwickAveDisplay",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 35,
                                      foreground: Paint()
                                        ..shader = LinearGradient(
                                                colors: [
                                              Colors.white,
                                              Colors.white,
                                              Colors.grey,
                                              Colors.white,
                                              
                                            ],
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight)
                                            .createShader(Rect.fromLTWH(
                                                0, 0, 200, 70))))
                            ]),
                      ),
                    ),
                  ),
                        Padding(
                            padding: EdgeInsets.only(top: 40, left: 15),
                            child: Row(
                              children: [
                                Text(
                                  "Merhaba",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontFamily: "SpecialElite",
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Çaylak",
                                  style: TextStyle(
                                      color: Color(0xffb9b5b5),
                                      fontSize: 30,
                                      fontFamily: "SpecialElite",
                                      fontWeight: FontWeight.w200),
                                ),
                              ],
                            )),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 13, right:95),
                          child: Text(
                            
                            "Dövüş Becerinizi İnsanlığın\n\n İyiliği İçin Kullanın",
                            style: TextStyle(
                              
                                fontFamily: "SpecialElite",
                                fontSize: 19,
                                color: Color.fromARGB(255, 135, 133, 133),
                                fontWeight: FontWeight.w200),
                                textAlign: TextAlign.justify,
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25, left: 15),
                    child: Text(
                      "Dövüş Sanatları",
                      style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                          fontFamily: "SpecialElite",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      width: 400,
                      height: 280,
                      child: ScrollSnapList(
                        itemCount: cards.length,
                        dynamicItemSize: true,
                        itemSize: 230,
                        onItemFocus: (p0) {
                      controller.imageIndex.value = p0;
                      
                        },
                        reverse: true,
                        itemBuilder: (context, index) {
                      return MartialCard(
                          path: cards[index].path, name: cards[index].name,philosophy: cards[index].philosophy,);
                        },
                      ),
                    ),
                  )
                ],
              ),
            ));
      })),
    );
  }
}
