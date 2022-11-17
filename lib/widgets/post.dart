import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _Post();
}

class _Post extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 480,
      margin: EdgeInsets.only(top: 30),
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: CircleAvatar(),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      "Jazmin Castellanos",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Icon(Icons.more_horiz),
              )
            ],
          ),
          ConstrainedBox(
            constraints: new BoxConstraints(
              minHeight: 150,
              minWidth: 150,
              maxHeight: 350.0,
              maxWidth: MediaQuery.of(context).size.width,
            ),
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Image.network(
                  "https://images.pexels.com/photos/4974360/pexels-photo-4974360.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
                  // "https://images.unsplash.com/photo-1628563694622-5a76957fd09c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aW5zdGFncmFtJTIwcHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80"
                  ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
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
                              child: Icon(Icons.favorite_border, color: Colors.red),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 35,
                              child: Text("Like"),
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
                              child: Icon(Icons.add_comment, color: Colors.green),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 70,
                              child: Text("Comments"),
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
                              child: Icon(Icons.share,
                                  color: Colors.black),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 65,
                              child: Text("Compartir"),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
