import 'package:flutter/material.dart';

class FormNewPost extends StatefulWidget {
  const FormNewPost({super.key});

  @override
  State<FormNewPost> createState() => _FormNewPost();
}

class _FormNewPost extends State<FormNewPost> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      height: 120,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: const CircleAvatar(),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                width: 250,
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: "¿Qué estás pensando?",
                      border: InputBorder.none),
                ),
              )
            ],
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
          )
        ],
      ),
    );
  }
}
