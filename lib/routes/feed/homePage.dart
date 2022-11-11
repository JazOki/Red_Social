import 'package:flutter/material.dart';
import 'package:red_social_flutter/routes/feed/postPage.dart';
import'package:red_social_flutter/routes/feed/feedPage.dart';

class homePage extends StatefulWidget {
  static String id = 'homePage';
  static const routeName = '/homePage';

  @override
  State<homePage> createState() => _homePageState();
}
class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [FeedPage(), postPage()],
          ),
        ),
      ),
    );
  }
}