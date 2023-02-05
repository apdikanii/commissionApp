import 'package:commit/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomChangable extends StatelessWidget {
  const BottomChangable({super.key, required this.text, });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 3),
                height: 33,
                width: 43,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: CWhiteColor
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Text(text,textAlign: TextAlign.center, style: GoogleFonts.karla(
                    fontSize: 20, fontWeight: FontWeight.w400, color: CBlackColor
                  ),),
                ),
              );
  }
}