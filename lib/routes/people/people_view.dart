import 'package:flutter/material.dart';
import 'package:red_social_flutter/models/user.dart';
import 'package:red_social_flutter/routes/people/people_controller.dart';

import 'friend_view.dart';

class PeopleView extends StatefulWidget {
  static const routeName = '/people';
  const PeopleView({super.key});

  @override
  State<PeopleView> createState() => _PeopleViewState();
}

class _PeopleViewState extends State<PeopleView> {
  List<User> listUser = [];
  final peopleController = PeopleController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    peopleController
        .getUsers()
        .then((value) => setState(() => listUser = value));
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        // foregroundColor: Colors.black,
        title: const Text(
          "Notificaciones",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.count(
            crossAxisCount: 2,
            children: listUser.map((user) => UserWidget(user)).toList()),
      ),
    );
  }
}
