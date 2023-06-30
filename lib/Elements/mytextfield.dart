// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  String hintText;
  MyTextField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: 293,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: TextField(
            decoration: InputDecoration(
                hintText: hintText,
                filled: true,
                fillColor: Color(0xffE3E9FF),
                contentPadding: EdgeInsets.all(12.00),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.white)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.00),
                    borderSide: BorderSide(color: Colors.black87)))),
      ),
    );
  }
}
