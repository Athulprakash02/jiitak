import 'package:flutter/material.dart';
import 'package:jiitak/core/constants.dart';

class StampScreenStarContainer extends StatelessWidget {
  const StampScreenStarContainer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: size.width/16,right: size.width/16),
      child: Container(
        height: size.width * .55,
        decoration: BoxDecoration(
          
          boxShadow: const [
          BoxShadow(
            color:Color(0x19000000),
            blurRadius: 5,
            offset: Offset(0, 5),
            spreadRadius: 5,
            blurStyle: BlurStyle.outer
          )
        ], borderRadius: BorderRadius.circular(14)),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 15,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                crossAxisCount: 5),
            itemBuilder: (context, index) {
              return Container(
                // color: kWhiteColor,
                // width:size.width *.5,
                // height: size.width *.5,
                decoration: const ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.87, 0.50),
                    end: Alignment(-0.87, -0.5),
                    colors: [Color(0xFFFAA677), Color(0x77FAA576)],
                  ),
                  shape: StarBorder(
                    points: 8,
                    innerRadiusRatio: 0.82,
                    // pointRounding: 4,
                    valleyRounding: 0,
                    rotation: 0,
                    squash: 0,
                  ),
                ),
                child: const Icon(
                  Icons.check,
                  color: kWhiteColor,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
