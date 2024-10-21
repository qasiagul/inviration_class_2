import 'package:flutter/material.dart';
import 'package:inviration_class_2/counter.dart';
import 'package:inviration_class_2/custome_chat_bubble.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:CustomChatBuble(msg: 'hello', time: '6:41 PM'),
    );
  }
}
