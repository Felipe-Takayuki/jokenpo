import 'package:flutter/material.dart';

class MyDividerWidget extends StatefulWidget {
  const MyDividerWidget({super.key, required this.mensage});
  final String mensage;
  @override
  State<MyDividerWidget> createState() => _MyDividerWidgetState();
}

class _MyDividerWidgetState extends State<MyDividerWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: double.infinity,
         height: 10,
         decoration: const BoxDecoration(color: Colors.black),),
         Text(widget.mensage),
         Container(width: double.infinity,
         height: 10,
         decoration: const BoxDecoration(color: Colors.black),),
      ],
    );
  }
}