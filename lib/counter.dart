import 'dart:developer';

import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 0;
  bool isLogin = false;

  changeStatus() {
    isLogin = !isLogin;
    setState(() {});
  }

  addCounterValue() {
    counter++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              isLogin ? 'Welcome' : 'Bye',
              style: const TextStyle(fontSize: 28),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              changeStatus();
              // addCounterValue();
              log("button pressed");
              log(counter.toString());
            },
            child: Text(isLogin ? "Login" : 'Logout'),
          ),
          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(Icons.import_contacts),
          // ),
          // ElevatedButton(
          //   onPressed: () {},
          //   child: const Text("Click"),
          // ),
          // TextButton(
          //   onPressed: () {},
          //   child: const Text("Click Here"),
          // ),
          // GestureDetector(
          //   onTap: () {},
          //   child: Container(
          //     color: Colors.amber,
          //     child: Text("data"),
          //   ),
          // ),
          // InkWell(
          //   onTap: () {},
          //   child: Container(
          //     color: Colors.amber,
          //     child: Text("data"),
          //   ),
          // )
        ],
      )),
    );
  }
}