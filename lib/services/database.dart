import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future<void> addUserInfo(userData) async {
    Firestore.instance.collection("users").add(userData).catchError((e) {
      print(e.toString());
    });
  }

  getUserInfo(String email) async {
    return Firestore.instance
        .collection("users")
        .where("userEmail", isEqualTo: email)
        .getDocuments()
        .catchError((e) {
      print(e.toString());
    });
  }

  getChats() async{
    return Firestore.instance
        .collection("chats")
        .orderBy('time')
        .snapshots();
  }


  void addMessage(chatMessageData){
    Firestore.instance
        .collection("chats")
        .add(chatMessageData).catchError((e){
      print(e.toString());
    });
  }

}
