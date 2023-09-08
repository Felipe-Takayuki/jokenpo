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
        Expanded(
          child: Container(
           height: 5,
           decoration: const BoxDecoration(color: Colors.black),),
        ),
         Padding(
           padding: widget.mensage.isNotEmpty? const EdgeInsets.all(2.0) : const EdgeInsets.all(0),
           child: Text(widget.mensage, style: const TextStyle(fontFamily: 'MinecraftFont', fontSize: 20),),
         ),
         Expanded(
           child: Container(
           height: 5,
           decoration: const BoxDecoration(color: Colors.black),),
         ),
      ],
    );
  }
}