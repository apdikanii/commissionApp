
import 'package:commit/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SideMenuItem extends StatelessWidget {
  const SideMenuItem({super.key, required this.iconSrc, required this.title, 
  required this.press, required this.isActive, required this.isHover});

  final String iconSrc, title;
  final VoidCallback press;
  final bool isActive, isHover;
  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //   itemCount: 4,
    //   itemBuilder: (context, index) {
    //     return Row(

    //     )
    //   });
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
              width: 225,
              height: 45,
              decoration: (isActive || isHover) ? BoxDecoration(
                color: CProductColor,
                borderRadius: BorderRadius.circular(10),
              ) : null,
            child:  Padding(
              padding: const EdgeInsets.only(left: 20),
              child: TextButton.icon(onPressed: () {}, 
              icon: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: WebsafeSvg.asset(iconSrc, 
                color: (isActive || isHover) ? const Color(0xFFFFFFFF): null, width: 16),
              ), 
              label: Text(title, style: GoogleFonts.nunito(
                fontSize: 20, fontWeight: FontWeight.w600, color: CWhiteColor,
              ),
                    ),
               ),
            ),
        ),
       
      ],
    );
  }
}