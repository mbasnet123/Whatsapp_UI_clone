import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/components/colors.dart';
import 'package:whatsapp_ui_clone/components/info.dart';
import 'package:whatsapp_ui_clone/components/mobile_chat_screen.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: info.length,
                  itemBuilder: (context, index){
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const MobileChatScreen(),));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              title: Text(info[index]['name'].toString(),
                                  style: const TextStyle(fontSize: 19)),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(top: 6),
                                child: Text(info[index]['message'].toString(),
                                style: const TextStyle(fontSize: 16),),
                              ),
                                leading: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    info[index]['profilePic'].toString(),
                                  ),
                                  radius: 30,
                                ),

                                trailing: Text(
                                  info[index]['time'].toString(),
                                  style: const TextStyle(fontSize: 12,
                                  color: Colors.grey),),
                            ),
                          ),
                        ),
                        const Divider(color: dividerColor, indent: 85,),
                      ],
                    );
                  },
                  ),
            ],
          ),
        ),
    );
  }
}
