import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jiitak/presentation/home/bottom_nav_bar.dart';
import 'package:jiitak/presentation/stamp_details_screen/stamp_details.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const BottomNavBar(),
                    ));
                  },
                  child: const Text(
                    'Home screen',
                    style: TextStyle(fontSize: 20),
                  )),
                   ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const StampDetailsScreen(),
                    ));
                  },
                  child: const Text(
                    'Stamp details screen',
                    style: TextStyle(fontSize: 20),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
