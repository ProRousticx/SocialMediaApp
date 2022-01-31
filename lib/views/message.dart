import 'package:flutter/material.dart';

import '../constants/my_colors.dart';
import '../constants/my_styles.dart';

class Message extends StatefulWidget {
  final String uid, memberID;
  const Message({Key? key, required this.uid, required this.memberID}) : super(key: key);

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  final TextEditingController messageController = TextEditingController();

  @override
  void dispose() {
    messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          contentPadding: const EdgeInsets.all(0),
          leading: const CircleAvatar(
            foregroundImage: AssetImage("assets/avatar.jpg"),
          ),
          title: Text("Pradeepto",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: MyStyles.design.bodyText(fontWeight: FontWeight.bold)),
          subtitle: Text("last seen: 2 mins ago",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: MyStyles.design.bodyText(fontSize: 14)),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                buildMyBubble("Hi, how are you doing?", "9:00pm"),
                buildMemberBubble("thanks! am fine...how are you?", "9:01pm"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), border: Border.all(color: kButtonColor)),
            child: Row(
              children: [
                Expanded(
                  flex: 9,
                  child: TextFormField(
                    controller: messageController,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                        hintText: "Write a message",
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.image, color: Colors.grey),
                        )),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.send, color: kIconColor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildMyBubble(String message, String msgTime) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: kButtonColor),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              message,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: MyStyles.design.bodyText(fontColor: Colors.black),
            ),
            const SizedBox(height: 10),
            Text(
              msgTime,
              maxLines: 1,
              style: MyStyles.design.bodyText(fontColor: Colors.grey.shade700, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  buildMemberBubble(String message, String msgTime) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: MyStyles.design.bodyText(fontColor: Colors.black),
            ),
            const SizedBox(height: 10),
            Text(
              msgTime,
              maxLines: 1,
              style: MyStyles.design.bodyText(fontColor: Colors.grey.shade700, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
