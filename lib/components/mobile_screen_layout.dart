import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Widgets/contacts_list.dart';
import 'package:whatsapp_ui_clone/components/colors.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 0 ,
          title: const Text('Whatsapp', style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
          centerTitle: false,
          actions: [
            IconButton(onPressed: () {} , icon: const Icon(Icons.search)),
            IconButton(onPressed: () {} , icon: const Icon(Icons.more_vert,
            color: Colors.grey)),
          ],
          bottom: const TabBar(
              indicatorColor: tabColor,
              indicatorWeight: 4,
              labelColor: tabColor,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              tabs: [
                Tab(text: 'CHATS',),
                Tab(text: "STATUS",),
                Tab(text: 'CALLS',),
              ]),
        ),
        body: const ContactsList(),
      ),
    );
  }
}