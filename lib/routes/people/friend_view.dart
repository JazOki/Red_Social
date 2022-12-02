import 'package:flutter/material.dart';
import 'package:red_social_flutter/models/user.dart';
import 'package:red_social_flutter/routes/people/friend_controller.dart';

class FriendView extends StatefulWidget {
  static const routeName = '/friend';
  const FriendView({super.key});

  @override
  State<FriendView> createState() => _FriendViewState();
}

class _FriendViewState extends State<FriendView> {
  List<User> listFriends = [];
  final friendController = FriendController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FriendController.getFriends()
        .then((value) => setState(() => listFriends = value));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: listFriends.map((user) => UserWidget(user)).toList(),
      ),
    );
  }
}

class UserWidget extends StatelessWidget {
  final User user;
  const UserWidget(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[800],
      height: 160,
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Text(
        user.name, //llamada de los usuarios 
        // style: TextStyle(
        //   fontWeight: FontWeight.bold,
        // ),
      ),
    );
    // return Text(user.email);
  }
}
