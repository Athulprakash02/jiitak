import 'package:flutter/material.dart';
import 'package:jiitak/core/constants.dart';

import 'widgets/days_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    EdgeInsets padding = MediaQuery.paddingOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: size.width * .7,
          height: 27,
          decoration: BoxDecoration(
              color: const Color(0xFFF7F7F7),
              borderRadius: BorderRadius.circular(30)),
          child: const Text('北海道, 札幌市'),
        ),
        actions: [
          Container(
            width: 30,
            height: 20,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/filter.png'))),
          ),
          const SizedBox(
            width: 5,
          ),
          const Icon(
            Icons.favorite_outline,
            color: kRedColor,
            size: 30,
          ),
          const SizedBox(
            width: 15,
          )
        ],
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30),
            child: Container(
              width: size.width,
              height: 30,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFFFAAA14), Color(0xFFFFD78D)]),
                // color: Colors.amberAccent
              ),
              child: const Center(
                  child: Text(
                '2022年 5月 26日（木）',
                style: TextStyle(fontSize: 16),
              )),
            )),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: size.width,
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: days.length,
              itemBuilder: (context, index) {
                return DaysTab(index: index);
              },
            ),
          ),
          SizedBox(
            width: size.width,
            height: size.height,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
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
                        Container(
                          width: double.maxFinite,
                          height: size.width * .5,
                          decoration: BoxDecoration(
                              // color: Colors.red,
                              image: DecorationImage(
                                  image: AssetImage('assets/images/$index.png'),
                                  fit: BoxFit.cover)),
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
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                          color: Color(0xFFFAAA14),
                                          fontSize: 14),
                                    ),
                                  ),
                                  const Text(
                                    '¥ 6,000',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    '住宅型有料老人ホームひまわり倶楽部',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.favorite_border,
                                        color: Colors.grey,
                                        size: 30,
                                      ))
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      )),
    );
  }
}
