import 'package:flutter/material.dart';
import 'package:jiitak/core/constants.dart';
import 'package:jiitak/presentation/edit%20store%20profile/widgets/text_feilds.dart';

import 'widgets/image_card.dart';

class EditStoreProfileScreen extends StatelessWidget {
  const EditStoreProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const CircleAvatar(
              backgroundColor: Color(0x198C807A),
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        title: const Text('店舗プロフィール編集'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Badge.count(
              count: 99,
              largeSize: 20,
              backgroundColor: const Color(0xFFEE7D42),
              child: const Icon(
                Icons.notifications_none_outlined,
                color: Colors.grey,
                size: 30,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width / 16),
        child: ListView(
          children: [
            TextFeilds(title: '店舗名', hintText: 'Mer キッチン'),
            const SizedBox(
              height: 15,
            ),
            TextFeilds(title: '代表担当者名', hintText: '林田　絵梨花'),
            const SizedBox(
              height: 15,
            ),
            TextFeilds(title: '店舗電話番号', hintText: '123 - 4567 8910'),
            const SizedBox(
              height: 15,
            ),
            TextFeilds(title: '店舗住所', hintText: '大分県豊後高田市払田791-13'),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.maxFinite,
              height: size.width / 2,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/map.png',
                      ),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: '店舗外観',
                      style: TextStyle(color: kBlackColor, fontSize: 16)),
                  TextSpan(
                      text: '*',
                      style: TextStyle(color: kRedColor, fontSize: 16)),
                ])),
                const SizedBox(
                  width: 5,
                ),
                const Text('(最大3枚まで)',
                    style: TextStyle(color: Colors.grey, fontSize: 16))
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                ImageWidget(size: size, imagePath: 'assets/images/image0.png'),
                const SizedBox(
                  width: 8,
                ),
                ImageWidget(size: size, imagePath: 'assets/images/image0.png'),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  width: size.width * .22,
                  height: size.width * .22,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 0.3),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.image_outlined,
                          size: 30,
                        ),
                        Text('写真を追加')
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: '店舗内観',
                      style: TextStyle(color: kBlackColor, fontSize: 16)),
                  TextSpan(
                      text: '*',
                      style: TextStyle(color: kRedColor, fontSize: 16)),
                ])),
                const SizedBox(
                  width: 5,
                ),
                const Text('(1枚〜3枚ずつ追加してください)',
                    style: TextStyle(color: Colors.grey, fontSize: 14))
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                ImageWidget(size: size, imagePath: 'assets/images/image1.png'),
                const SizedBox(
                  width: 8,
                ),
                ImageWidget(size: size, imagePath: 'assets/images/image1.png'),
                const SizedBox(
                  width: 8,
                ),
                ImageWidget(size: size, imagePath: 'assets/images/image1.png'),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
             const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: '料理写真',
                      style: TextStyle(color: kBlackColor, fontSize: 16)),
                  TextSpan(
                      text: '*',
                      style: TextStyle(color: kRedColor, fontSize: 16)),
                ])),
                const SizedBox(
                  width: 5,
                ),
                const Text('(1枚〜3枚ずつ追加してください)',
                    style: TextStyle(color: Colors.grey, fontSize: 14))
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                ImageWidget(size: size, imagePath: 'assets/images/image2.png'),
                const SizedBox(
                  width: 8,
                ),
                ImageWidget(size: size, imagePath: 'assets/images/image3.png'),
                const SizedBox(
                  width: 8,
                ),
                ImageWidget(size: size, imagePath: 'assets/images/image4.png'),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: 'メニュー写真',
                      style: TextStyle(color: kBlackColor, fontSize: 16)),
                  TextSpan(
                      text: '*',
                      style: TextStyle(color: kRedColor, fontSize: 16)),
                ])),
                const SizedBox(
                  width: 5,
                ),
                const Text('(1枚〜3枚ずつ追加してください)',
                    style: TextStyle(color: Colors.grey, fontSize: 14))
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                ImageWidget(size: size, imagePath: 'assets/images/image5.png'),
                const SizedBox(
                  width: 8,
                ),
                ImageWidget(size: size, imagePath: 'assets/images/image6.png'),
                const SizedBox(
                  width: 8,
                ),
                ImageWidget(size: size, imagePath: 'assets/images/image7.png'),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
