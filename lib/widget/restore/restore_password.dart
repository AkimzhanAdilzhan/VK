import 'package:flutter/material.dart';

class RestorPasswordWidgwt extends StatefulWidget {
  const RestorPasswordWidgwt({super.key});

  @override
  State<RestorPasswordWidgwt> createState() => _RestorPasswordWidgwtState();
}

class _RestorPasswordWidgwtState extends State<RestorPasswordWidgwt> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Text(
        "Restore Password",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
