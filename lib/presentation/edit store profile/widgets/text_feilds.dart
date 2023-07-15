import 'package:flutter/material.dart';
import 'package:jiitak/core/constants.dart';

class TextFeilds extends StatelessWidget {
  final String title;
  final String hintText;
   TextFeilds({
    super.key, required this.title, required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(children: [
          TextSpan(text: title,style: TextStyle(color: kBlackColor,fontSize: 16)),
          TextSpan(text: '*', style: TextStyle(color: kRedColor,fontSize: 16))
        ])),
         SizedBox(
      height: 50,
      child: TextField(
      
        decoration: InputDecoration(
          hintText: hintText,
          
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8)
          )
        ),
      ),
    )
      ],
    );
  }
}