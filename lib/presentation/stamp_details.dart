import 'package:flutter/material.dart';
import 'package:jiitak/core/constants.dart';

class StampDetailsScreen extends StatelessWidget {
  const StampDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA7B0FF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFA7B0FF),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Color(0xFF939EFF),
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
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
            decoration: const BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22))),
          ))
        ],
      ),
    );
  }
}
