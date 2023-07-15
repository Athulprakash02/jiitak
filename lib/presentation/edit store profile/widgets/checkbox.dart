
import 'package:flutter/material.dart';

class CheckBox extends StatelessWidget {
  final String text;
  final bool checked;
  const CheckBox({
    super.key, required this.text, required this.checked,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Checkbox(
        activeColor:  const Color(0xFFEE7D42),
        value: checked, onChanged: (value) {
        
      },),
      Text(text,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
    ],);
  }
}
