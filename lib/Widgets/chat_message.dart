import 'package:flutter/material.dart';
import 'package:gpt_bot/model/model.dart';
import 'package:gpt_bot/pages/chat_page.dart';

class ChatMessageWidget extends StatelessWidget {
  final String text;
  final ChatMessageType chatMessageType;

  const ChatMessageWidget(
      {super.key, required this.text, required this.chatMessageType});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(16),
      color: chatMessageType == ChatMessageType.bot
          ? botbackgroundColor
          : backgroundColor,
      child: Row(
        children: <Widget>[
          chatMessageType == ChatMessageType.bot
              ? Container(
                  margin: EdgeInsets.only(right: 16),
                  child: CircleAvatar(
                    backgroundColor: Color.fromRGBO(16, 163, 127, 1),
                    child: Image.asset(
                      'assets/bot.png',
                      color: Colors.white,
                      scale: 3.0,
                    ),
                  ),
                )
              : Container(
                  child: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  )),
                  child: Text(text,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Colors.white)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
