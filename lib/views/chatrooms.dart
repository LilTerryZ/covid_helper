// import 'package:covid_helper/services/authenticate.dart';
// import 'package:covid_helper/services/constants.dart';
// import 'package:covid_helper/services/helpfunctions.dart';
// import 'package:covid_helper/services/auth.dart';
// import 'package:covid_helper/services/database.dart';
// import 'package:covid_helper/views/chat.dart';
// import 'package:flutter/material.dart';
// import 'package:covid_helper/views/search.dart';
// class ChatRoom extends StatefulWidget {
//   @override
//   _ChatRoomState createState() => _ChatRoomState();
// }
//
// class _ChatRoomState extends State<ChatRoom> {
//   Stream chatRooms;
//
//   Widget chatRoomsList() {
//     return StreamBuilder(
//       stream: chatRooms,
//       builder: (context, snapshot) {
//         return snapshot.hasData
//             ? ListView.builder(
//             itemCount: snapshot.data.documents.length,
//             shrinkWrap: true,
//             itemBuilder: (context, index) {
//               return ChatRoomsTile(
//                 userName: snapshot.data.documents[index].data['chatRoomId']
//                     .toString()
//                     .replaceAll("_", "")
//                     .replaceAll(Constants.myName, ""),
//                 chatRoomId: snapshot.data.documents[index].data["chatRoomId"],
//               );
//             })
//             : Container();
//       },
//     );
//   }
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Image.asset(
//           "assets/images/logo.png",
//           height: 40,
//         ),
//         elevation: 0.0,
//         centerTitle: false,
//         actions: [
//           GestureDetector(
//             onTap: () {
//               AuthService().signOut();
//               Navigator.pushReplacement(context,
//                   MaterialPageRoute(builder: (context) => Authenticate()));
//             },
//             child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 16),
//                 child: Icon(Icons.exit_to_app)),
//           )
//         ],
//       ),
//       body: Container(
//         child: chatRoomsList(),
//       ),
//       // floatingActionButton: FloatingActionButton(
//       //   child: Icon(Icons.search),
//       //   onPressed: () {
//       //     Navigator.push(
//       //         context, MaterialPageRoute(builder: (context) => Search()));
//       //   },
//       // ),
//     );
//   }
// }
//
// class ChatRoomsTile extends StatelessWidget {
//   final String userName;
//   final String chatRoomId;
//
//   ChatRoomsTile({this.userName,@required this.chatRoomId});
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: (){
//         Navigator.push(context, MaterialPageRoute(
//             builder: (context) => Chat(
//               chatRoomId: chatRoomId,
//             )
//         ));
//       },
//       child: Container(
//         color: Colors.black26,
//         padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
//         child: Row(
//           children: [
//             Container(
//               height: 30,
//               width: 30,
//               decoration: BoxDecoration(
//                 //  color: CustomTheme.colorAccent,
//                   borderRadius: BorderRadius.circular(30)),
//               child: Text(userName.substring(0, 1),
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 16,
//                       fontFamily: 'OverpassRegular',
//                       fontWeight: FontWeight.w300)),
//             ),
//             SizedBox(
//               width: 12,
//             ),
//             Text(userName,
//                 textAlign: TextAlign.start,
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                     fontFamily: 'OverpassRegular',
//                     fontWeight: FontWeight.w300))
//           ],
//         ),
//       ),
//     );
//   }
// }
