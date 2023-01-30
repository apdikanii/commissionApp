import 'package:commit/constants.dart';
import 'package:commit/sideMenu/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: CWhiteColor,
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          const Text("Dashboard", style: TextStyle(
            fontWeight: FontWeight.w500, fontSize: 30, color: CBlackColor
          ),),
          SizedBox(width: kDefaultPadding * 2,),
          Expanded(child: TextField(
            onChanged: (value) {},
            decoration: InputDecoration(
              hintText: "search",
              fillColor: CWhiteColor,
              filled: true,
              suffixIcon: Padding(padding: EdgeInsets.all(kDefaultPadding * 0.75),
              child: WebsafeSvg.asset("assets/Icons/Search.svg",
                              width: 24,),),
              border: OutlineInputBorder( 
                borderRadius: BorderRadius.all(Radius.circular(10)),
              )
            ),
          )),
          SizedBox(width: kDefaultPadding * 2,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: CGreyColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    maxRadius: 24,
                    backgroundColor: Color(0xFF5041BC),
                    backgroundImage: AssetImage("assets/images/profilepc.png",),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("Admin", style: GoogleFonts.karla(
                      fontSize: 18, fontWeight: FontWeight.w400, color: CBlackColor
                    ),),
                  ),
                 WebsafeSvg.asset(
                      "assets/Icons/Angle down.svg",
                      width: 16,
                      color: Colors.black,
                    ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}