import 'package:flutter/material.dart';

class postPage extends StatefulWidget {
  static String id = 'postPage';
  static const routeName = '/postPage';

  @override
  State<postPage> createState() => _postPageState();
}

class _postPageState extends State<postPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      height: 200,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: CircleAvatar(),
                margin: EdgeInsets.only(left: 10),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Whats on your mind?",
                      border: InputBorder.none),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
