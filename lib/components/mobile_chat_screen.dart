import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/components/colors.dart';

import 'info.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title:
        Text(info[0]['name'].toString(),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {}, icon: const Icon(
              Icons.video_call),),
          IconButton(
            onPressed: () {}, icon: const Icon(
              Icons.call),),
          IconButton(
            onPressed: () {}, icon: const Icon(
              Icons.more_vert),),
        ],
      ),
    );
  }
}
