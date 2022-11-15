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
      height: 200,
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
