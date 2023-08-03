// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfileTiles extends StatelessWidget {
  double height;
  double width;

  String? sufImaage;
  Function()? ontap;
  MyProfileTiles(
      {Key? key,
      required this.height,
      required this.width,
      required this.sufImaage,
      required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return InkWell(
      onTap: ontap,
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
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: (user.photoURL == null)
                      ? Image.network(
                          'https://img.freepik.com/premium-vector/young-man-avatar-isolated-icon-vector-illustration-design_24877-15466.jpg?size=626&ext=jpg&ga=GA1.1.388573599.1678453951&semt=ais',
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        )
                      : Image.network(
                          user.photoURL!,
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        ))),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.displayName!,
                style: GoogleFonts.inter(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                user.email!.split('@')[0],
                style: GoogleFonts.inter(
                    fontSize: 18, fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'View Profile',
                    style: GoogleFonts.inter(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset(
                        sufImaage!,
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            width: 18,
          )
        ]),
      ),
    );
  }
}
