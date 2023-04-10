import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';
import 'package:martial_arts/modules/martialDetail/martial_detail_controller.dart';

class MartialDetailScreen extends GetView<MartialDetailController> {
  const MartialDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var args = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 330,
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    image: AssetImage(args[0]),
                    fit: BoxFit.fill,
                  ),
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(width: 3,color: Colors.grey)
                        )
                      ),
                      height: 330,
                      width: 300,
                      child: Image(image: AssetImage(args[0]),fit: BoxFit.fill,),
                    ),
                  ),
                )
      
              ],
            ),
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff1b1b27),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 25,top: 35,right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                        children: [
                          Text(args[1],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: "SpecialElite"
                          ),
                          ),
                          Bounceable(
                            onTap: (){},
                            child: Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                              color: Colors.white,
                                borderRadius: BorderRadius.circular(30)
                              ),
                              child: Image(image: AssetImage("assets/images/play-button.png"),fit: BoxFit.fill,)),
                          )
                        ],
                      ),
                    ),

                    Padding(
                      padding:  EdgeInsets.only(top:30,left: 25),
                      child: Text("Felsefesi",
                      style: TextStyle(
                        color: Color.fromARGB(255, 209, 207, 207),
                        fontSize: 25,
                        fontWeight: FontWeight.w200,
                          fontFamily: "SpecialElite"
                    
                    
                      ),
                      ),
                    ),
                     Padding(
                      padding:  EdgeInsets.only(left: 25),
                      child: Container(
                        height: 180,
                        
                        child: ListView(
                          children: [Column(
                            children: [
                              Text(args[2],
                              style: TextStyle(
                                color: Color.fromARGB(255, 181, 173, 173),
                                fontSize: 18,
                                height: 2,
                                fontWeight: FontWeight.w100,
                                  fontFamily: "SpecialElite"
                                              
                                              
                              ),
                              ),
                            ],
                          ),]
                        ),
                      ),
                    )
                  ],
                
              ),
            )
          ],
        ),
      ),
    );
  }
}
