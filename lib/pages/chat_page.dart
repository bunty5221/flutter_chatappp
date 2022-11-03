import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';

import 'chat_detail.dart';


class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
          itemCount: chatData.length,
          
          itemBuilder: (context, i) => Column(
            children: [
              Divider(
                height: 10.0,
              ),
              ListTile(
                leading: CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage(chatData[i].avatar 
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      chatData[i].name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      chatData[i].time,
                      style: const TextStyle(color: Colors.grey, fontSize: 14.0),
                    ),
                  ],
                ),
                subtitle: Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    chatData[i].message,
                    style: const TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
               
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatDetailPage(),
                    ),
                  );
                },
                
              ),
            ],
          ),


    ));
  }
}