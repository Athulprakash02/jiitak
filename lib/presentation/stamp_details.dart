import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jiitak/core/constants.dart';

class StampDetailsScreen extends StatelessWidget {
  const StampDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.white.withOpacity(0),
        leading:CircleAvatar(
          child: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: Text('スタンプカード詳細'),
        actions: [
          Icon(Icons.remove_circle_outline),
        ],
      ),
    );
  }
}