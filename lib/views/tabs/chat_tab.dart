import 'package:flutter/material.dart';
import 'package:myprofile/constants/my_styles.dart';
import 'package:myprofile/views/message.dart';
import 'package:page_transition/page_transition.dart';

import '../../constants/my_colors.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({Key? key}) : super(key: key);

  @override
  _ChatTabState createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  List<Map> chatList = [
    {
      "name": "User 1",
      "lastMessage": "Hi! how are you",
      "unSeenCount": 1,
      "sender": "jfijijheiri",
      "timeStamp": "6:00 pm"
    },
    {
      "name": "User 2",
      "lastMessage": "I am working right now",
      "unSeenCount": 0,
      "sender": "fdfedfdfgdffd",
      "timeStamp": "3:00 am"
    },
    {
      "name": "User 3",
      "lastMessage": "Flutter is awesome",
      "unSeenCount": 0,
      "sender": "pradeepto",
      "timeStamp": "12:00 am"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: chatList.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () => Navigator.push(
                context,
                PageTransition(
                    child: const Message(memberID: '', uid: ''),
                    type: PageTransitionType.rightToLeft)),
            leading: const CircleAvatar(
              foregroundImage: AssetImage("assets/avatar.jpg"),
            ),
            title: Text(chatList[index]["name"],
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: MyStyles.design.bodyText(fontColor: Colors.black)),
            subtitle: Text(chatList[index]["lastMessage"]+chatList[index]["lastMessage"]+chatList[index]["lastMessage"],
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: MyStyles.design.bodyText(fontColor: Colors.grey, fontSize: 14)),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.circle,
                    size: 14,
                    color: chatList[index]["unSeenCount"] < 1 ? Colors.white : kButtonColor),
                Text(chatList[index]["timeStamp"],
                    style: MyStyles.design.bodyText(fontColor: Colors.grey.shade700, fontSize: 12)),
              ],
            ),
          );
        }, separatorBuilder: (BuildContext context, int index) =>const SizedBox(height: 10));
  }
}
