import 'package:flutter/material.dart';
import 'package:jiitak/core/constants.dart';

import 'widgets/days_tab.dart';
import 'widgets/home_page_main_card.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

 

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
          child: SingleChildScrollView(
            child: Column(
                  children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: size.width,
              height: 90,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: days.length,
                itemBuilder: (context, index) {
                  return DaysTab(index: index);
                },
              ),
            ),
            SizedBox(
              width: size.width,
              height: size.height*.7,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return HomePageMainCard(size: size,index: index,);
                },
              ),
            ),
            
                  ],
                ),
          )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kWhiteColor,
        onPressed: () {
        
      },child: Icon(Icons.location_on_outlined,color: kBlackColor,size: 30,),),
     
    );
  }
}
