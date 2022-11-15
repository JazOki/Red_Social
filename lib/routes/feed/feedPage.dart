import 'package:flutter/material.dart';
import 'package:red_social_flutter/widgets/form_new_post.dart';
// import 'package:red_social_flutter/widgets/text_field_icon.dart';

class FeedPage extends StatefulWidget {
  static String id = 'feedPage';
  static const routeName = '/feedPage';

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "malware",
          style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.w700, color: Colors.blue),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.black87,
                  )),
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
      body: Column(
        children: [
          FormNewPost(),
          // TextFieldIcon(controller: TextEditingController(), icon: Icons.add),
          // TextFieldIcon(controller: TextEditingController(), icon: Icons.add_a_photo_sharp)
        ],
      ),
    );
  }
}
