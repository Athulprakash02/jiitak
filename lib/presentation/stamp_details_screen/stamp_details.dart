import 'package:flutter/material.dart';
import 'package:jiitak/core/constants.dart';

import 'widgets/stamp_screen_star_container.dart';

class StampDetailsScreen extends StatelessWidget {
  const StampDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: const Color(0xFFA7B0FF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFA7B0FF),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const CircleAvatar(
              backgroundColor: Color(0xFF939EFF),
              child: Icon(
                Icons.arrow_back_ios_new_rounded,color: kWhiteColor,
              ),
            ),
          ),
        ),
        title: const Text(
          'スタンプカード詳細',
          style: TextStyle(color: kWhiteColor),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.remove_circle_outline),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mer キッチン',
                  style: TextStyle(
                      fontSize: 16,
                      color: kWhiteColor,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      '現在の獲得数 ',
                      style: TextStyle(
                        fontSize: 13,
                        color: kWhiteColor,
                      ),
                    ),
                    Text(
                      '30 ',
                      style: TextStyle(
                          fontSize: 26,
                          color: kWhiteColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '個',
                      style: TextStyle(
                          fontSize: 16,
                          color: kWhiteColor,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            width: size.width,
            decoration: const BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    width: size.width,
                    height: size.width * .68,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            2,
                            (index) => SizedBox(
                                width: size.width,
                                child: StampScreenStarContainer(size: size)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: size.width / 16, right: size.width / 16),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '2 / 2枚目',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                      Text(
                        'スタンプ獲得履歴',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                              SizedBox(height: 8,),

                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: size.width/16),
                    child: ListView.separated(
                      separatorBuilder: (context, index) => const Divider(color: Colors.black,),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 8,),
                              Text('2021 / 11 / ${18-index}',style: const TextStyle(color: Color.fromARGB(255, 107, 107, 107)),),
                              const SizedBox(height: 8,),

                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Text('スタンプを獲得しました。',style: TextStyle(fontSize: 15),),
                              Text('1 個',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                            ],),
                              const SizedBox(height: 8,),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
