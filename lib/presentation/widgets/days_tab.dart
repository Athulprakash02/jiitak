import 'package:flutter/material.dart';
import 'package:jiitak/core/constants.dart';

class DaysTab extends StatelessWidget {
  final int index;
  const DaysTab({
    super.key, required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        // width: 40,
        // height: 50,
        decoration: BoxDecoration(
          color: index==0? const Color(0xFFFAAA14) : Colors.transparent,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(weeksDays[index],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: index==0?  kWhiteColor : kBlackColor,),),
            Text(days[index],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: index==0?  kWhiteColor : kBlackColor),)
          ],),
        ),
      ),
    );
  }
}
