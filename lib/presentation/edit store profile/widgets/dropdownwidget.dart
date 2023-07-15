
import 'package:flutter/material.dart';
import 'package:jiitak/core/constants.dart';

class DropDownWidget extends StatelessWidget {
  final String value;
  const DropDownWidget({
    super.key,
    required this.size, required this.value,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width *.3,
      
      
      child: DropdownButtonFormField(
        
        icon: const Icon(Icons.keyboard_arrow_down_rounded,size: 30,),
        decoration: const InputDecoration(
          
          border: OutlineInputBorder(
            borderSide: BorderSide(color: kBlackColor)
            // gapPadding: 0
          )
        ),
        value: value,
         items:items
            .map(
              (String items) => DropdownMenuItem(
                value: items,
                child: Text(items,style: const TextStyle(fontSize: 20),),
              ),
            )
            .toList(), onChanged: (value) {
        
      },),
    );
  }
}
