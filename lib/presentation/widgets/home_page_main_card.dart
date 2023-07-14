import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/core/constants.dart';

import '../../application/controllers/favourite_controller.dart';

class HomePageMainCard extends StatelessWidget {
  HomePageMainCard({
    super.key,
    required this.size,
    required this.index,
  });

  final FavouriteController favouriteController =
      Get.put(FavouriteController());

  final Size size;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x26889FBB),
                  blurRadius: 25,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    width: double.maxFinite,
                    height: size.width * .5,
                    decoration: BoxDecoration(
                        // color: Colors.red,
                        image: DecorationImage(
                            image: AssetImage('assets/images/$index.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                          width: double.maxFinite,
                          child: Text(
                            '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 3, horizontal: 5),
                            // width: size.width *.5,
                            decoration: BoxDecoration(
                                color: const Color(0x19EEAB40),
                                borderRadius: BorderRadius.circular(5)),
                            child: const Text(
                              '介護付き有料老人ホーム',
                              style: TextStyle(
                                  color: Color(0xFFFAAA14), fontSize: 14),
                            ),
                          ),
                          const Text(
                            '¥ 6,000',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '5月 31日（水）08 : 00 ~ 17 : 00',
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        '北海道札幌市東雲町3丁目916番地17号',
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        '交通費 300円',
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '住宅型有料老人ホームひまわり倶楽部',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Obx(() => IconButton(
                              onPressed: () {
                                favouriteController.toggleFavourite(index);
                              },
                              icon: Icon(
                                favouriteController.isFavouriteList[index]
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color:
                                    favouriteController.isFavouriteList[index]
                                        ? kRedColor
                                        : Colors.grey,
                                size: 30,
                              )))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              top: size.width * .43,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                color: Color(0xFFFF6162),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    '本日まで',
                    style: TextStyle(fontSize: 12, color: kWhiteColor),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
