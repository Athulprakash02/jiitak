import 'package:flutter/material.dart';
import 'package:jiitak/core/constants.dart';
import 'package:jiitak/presentation/edit%20store%20profile/widgets/text_feilds.dart';

import 'widgets/checkbox.dart';
import 'widgets/dropdownwidget.dart';
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
                          color: Colors.grey,
                        ),
                        Text('写真を追加',style: TextStyle(color: Colors.grey),)
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
            const SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: '営業時間',
                      style: TextStyle(color: kBlackColor, fontSize: 16)),
                  TextSpan(
                      text: '*',
                      style: TextStyle(color: kRedColor, fontSize: 16)),
                ])),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    DropDownWidget(size: size, value: '10:00'),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      '~',
                      style: TextStyle(fontSize: 30),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    DropDownWidget(size: size, value: '20:00'),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: 'ランチ時間',
                      style: TextStyle(color: kBlackColor, fontSize: 16)),
                  TextSpan(
                      text: '*',
                      style: TextStyle(color: kRedColor, fontSize: 16)),
                ])),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    DropDownWidget(size: size, value: '11:00'),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      '~',
                      style: TextStyle(fontSize: 30),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    DropDownWidget(size: size, value: '15:00'),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                  text: '定休日',
                  style: TextStyle(color: kBlackColor, fontSize: 16)),
              TextSpan(
                  text: '*', style: TextStyle(color: kRedColor, fontSize: 16)),
            ])),
            const Row(
              children: [
                CheckBox(
                  text: '月',
                  checked: false,
                ),
                SizedBox(
                  width: 10,
                ),
                CheckBox(
                  text: '火',
                  checked: false,
                ),
                SizedBox(
                  width: 10,
                ),
                CheckBox(
                  text: '水',
                  checked: false,
                ),
                SizedBox(
                  width: 10,
                ),
                CheckBox(
                  text: '木',
                  checked: false,
                ),
              ],
            ),
            const Row(
              children: [
                CheckBox(
                  text: '金',
                  checked: false,
                ),
                SizedBox(
                  width: 10,
                ),
                CheckBox(
                  text: '土',
                  checked: true,
                ),
                SizedBox(
                  width: 10,
                ),
                CheckBox(
                  text: '日',
                  checked: true,
                ),
                SizedBox(
                  width: 10,
                ),
                CheckBox(
                  text: '祝',
                  checked: true,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: '料理カテゴリー',
                      style: TextStyle(color: kBlackColor, fontSize: 16)),
                  TextSpan(
                      text: '*',
                      style: TextStyle(color: kRedColor, fontSize: 16)),
                ])),
                SizedBox(
                  width: size.width * .6,
                  child: DropdownButtonFormField(
                    icon: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 30,
                    ),
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: kBlackColor)
                            // gapPadding: 0
                            )),
                    value: '料理カテゴリー選択',
                    items: itemString
                        .map(
                          (String items) => DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {},
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: '予算',
                      style: TextStyle(color: kBlackColor, fontSize: 16)),
                  TextSpan(
                      text: '*',
                      style: TextStyle(color: kRedColor, fontSize: 16)),
                ])),
                Row(
                  children: [
                    TextFeildsBottom(size: size, hintText: '¥ 1,000'),
                    const SizedBox(width: 5,),
                    const Text('~', style: TextStyle(fontSize: 30),),
                    const SizedBox(width: 5,),
                    TextFeildsBottom(size: size, hintText: '¥ 2,000')
                  ],
                ),
                const SizedBox(height: 15,),
                TextFeilds(title: 'キャッチコピー', hintText: '美味しい！リーズナブルなオムライスランチ！'),
                const SizedBox(height: 15,),
                TextFeilds(title: '座席数', hintText: '40席'),
                const SizedBox(height: 15,),
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: '喫煙席',
                      style: TextStyle(color: kBlackColor, fontSize: 16)),
                  TextSpan(
                      text: '*',
                      style: TextStyle(color: kRedColor, fontSize: 16)),
                ])),
                const Row(children: [
                  CheckBox(text: '有', checked: true),
                  SizedBox(width: 15,),
                  CheckBox(text: '無', checked: false)
                ],),
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: '駐車場',
                      style: TextStyle(color: kBlackColor, fontSize: 16)),
                  TextSpan(
                      text: '*',
                      style: TextStyle(color: kRedColor, fontSize: 16)),
                ])),
                const Row(children: [
                  CheckBox(text: '有', checked: true),
                  SizedBox(width: 15,),
                  CheckBox(text: '無', checked: false)
                ],),
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: '来店プレゼント',
                      style: TextStyle(color: kBlackColor, fontSize: 16)),
                  TextSpan(
                      text: '*',
                      style: TextStyle(color: kRedColor, fontSize: 16)),
                ])),
                const Row(children: [
                  CheckBox(text: '有（最大３枚まで）', checked: true),
                  SizedBox(width: 15,),
                  CheckBox(text: '無', checked: false)
                ],),
                const SizedBox(height: 15,),
                Row(children: [
                  ImageWidget(size: size, imagePath: 'assets/images/icecream.png'),
                  const SizedBox(width: 8,),
                  ImageWidget(size: size, imagePath: 'assets/images/tin.png'),
                   const SizedBox(width: 8,),
                  ImageWidget(size: size, imagePath: 'assets/images/cocacola.png'),
                ],),
                const SizedBox(height: 15,),
                TextFeilds(title: '来店プレゼント名', hintText: 'いちごクリームアイスクリーム, ジュース'),
                const SizedBox(height: 40,),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [Color(0xFFEE7D42), Color(0xFFFFC7AB)])
                  ),
                  child: ElevatedButton(
                    style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xFFEE7D42))),
                    onPressed: () {
                    
                  }, child: const Text('編集を保存')),
                )


              ],
            )
          ],
        ),
      ),
    );
  }
}

class TextFeildsBottom extends StatelessWidget {
  final String hintText;
  const TextFeildsBottom({
    super.key,
    required this.size,
    required this.hintText,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * .3,
      height: 40,
      child: Center(
        child: TextField(
          decoration:
              InputDecoration(hintText: hintText, border: const OutlineInputBorder()),
        ),
      ),
    );
  }
}
