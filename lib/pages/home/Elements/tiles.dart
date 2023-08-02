// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTiles extends StatelessWidget {
  double height;
  double width;
  String? preImage;
  String? texts;
  String? sufImaage;

  MyTiles({
    Key? key,
    required this.height,
    required this.width,
    required this.preImage,
    required this.texts,
    required this.sufImaage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(31),
          color: Colors.white,
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 73,
              width: 73,
              child: Image.asset(
                preImage!,
                height: 73,
                width: 73,
              ),
            ),
          ),
          Text(
            texts!,
            style: GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: 73,
              width: 73,
              child: Image.asset(
                sufImaage!,
                height: 47,
                width: 47,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
