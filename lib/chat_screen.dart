import 'package:chat_app_ui/widgets/chat_list.dart';
import 'package:chat_app_ui/widgets/favorite_contacts.dart';
import 'package:flutter/material.dart';


class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,

        //sec appBar
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: const Text(
            "Chats",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
          ),
          actions: [
            const Icon(
              Icons.settings,
              color: Colors.white,
            )
          ],
        ),
        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //sec text
            FavContacts(),
             SizedBox(
              height: 10,
            ),

            ChatList(),
          ],
        ));
  }
}
