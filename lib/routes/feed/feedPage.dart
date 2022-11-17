import 'package:flutter/material.dart';
import 'package:red_social_flutter/widgets/form_new_post.dart';
import 'package:red_social_flutter/widgets/post.dart';
import 'package:red_social_flutter/widgets/stories.dart';
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
          "Malware",
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
      body: Stack(children: [
        ListView(
          children: [
            FormNewPost(),
            Stories(),
            ...[
              Post(),
              Post(),
              Post(),
            ]
          ],
        ),
        Container(
          width: double.maxFinite,
          height: double.maxFinite,
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: double.maxFinite,
            height: 50,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.center,
                        // color: Colors.black,
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.33,

                        child: Container(
                          width: 100,
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 30,
                                child: Icon(Icons.live_tv, color: Colors.red),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 30,
                                child: Text("Live"),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.center,
                        // color: Colors.black,
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.33,

                        child: Container(
                          width: 100,
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 30,
                                child: Icon(Icons.photo, color: Colors.green),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 38,
                                child: Text("Photo"),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.center,
                        // color: Colors.black,
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.33,

                        child: Container(
                          width: 100,
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 30,
                                child: Icon(Icons.camera_roll,
                                    color: Colors.purpleAccent),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 35,
                                child: Text("room"),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
