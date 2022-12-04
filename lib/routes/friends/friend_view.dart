import 'package:flutter/material.dart';
import 'package:red_social_flutter/models/user.dart';
import 'package:red_social_flutter/routes/friends/friend_controller.dart';

class FriendView extends StatefulWidget {
  static const routeName = '/friend';
  const FriendView({super.key});

  @override
  State<FriendView> createState() => _FriendViewState();
}

class _FriendViewState extends State<FriendView> {
  List<User> listFriends = [];
  final _friendController = FriendController();

  @override
  void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _friendController
  //       .postFriends()
  //       .then((value) => setState(() => listFriends = value));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        // foregroundColor: Colors.black,
        title: const Text(
          "Solicitudes",
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
          // children: listFriends.map((user) => UserFRWidget(user)).toList()
        ),
      ),
    );
  }
}

// class UserFRWidget extends StatelessWidget {
//   final User user;
//   const UserFRWidget(this.user, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Color.fromARGB(255, 0, 0, 0),
//       height: 50,
//       margin: EdgeInsets.only(top: 10, left: 10, right: 10),
//       padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
//       child: Container(
//         width: 100,
//         child: Row(
//           children: [
//             IconButton(
//               onPressed: () async {
//                 // await FriendController.postFriends();
//                 // Navigator.pop(context);
//                 // print(context);
//               },
//               icon: const Icon(
//                 Icons.person_add,
//                 color: Colors.white,
//               ),
//             ),
//             Container(
//               alignment: Alignment.center,
//               width: 100,
//               child: Text(
//                 user.name,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.w400,
//                     color: Color.fromARGB(255, 255, 255, 255)),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
