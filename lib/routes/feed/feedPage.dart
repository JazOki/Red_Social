import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  static String id = 'feedPage';
  static const routeName = '/feedPage';

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "malware",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.black87,
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.message,
                      color: Colors.black87,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
