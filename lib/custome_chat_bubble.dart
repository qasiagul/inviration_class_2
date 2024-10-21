import 'package:flutter/material.dart';

class CustomChatBuble extends StatelessWidget {
  final String? name;
  final String msg;
  final String time;
  const CustomChatBuble({
    super.key,
    this.name,
    required this.msg,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 100,
      width: double.infinity,
      color: Colors.yellow,
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.pink,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [Text(name ?? "Anonymous",style: TextStyle(fontSize: 15),), Text(msg,style: TextStyle(fontSize: 15))],
          ),
          Spacer(),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [Text(time,style: TextStyle(fontSize: 15), )],
          )
        ],
      ),
    );
  }
}