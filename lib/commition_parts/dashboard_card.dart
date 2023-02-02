import 'package:commit/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({super.key, required this.title, 
  required this.bottomText, required this.numValue,  required this.color, required this.BColor});

  final String title, bottomText, numValue;
  final Color color, BColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
              margin: EdgeInsets.only(top: 30, left: 25),
              // height: MediaQuery.of(context).size.height * 16,
              height: 160,
              width: 268,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 20,
                    top: 30,
                    child: Text(title, style: GoogleFonts.rubik(
                      fontSize: 25, fontWeight: FontWeight.w500, color: CWhiteColor,
                    ),)),
                    Positioned(
                      
                      right: 23,
                      top: 33,
                      child: Row(
                        children: [
                          Container(
                            width: 13,
                            height: 13,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)
                            ),
                          ),
                          Container(
                            width: 13,
                            height: 13,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)
                            ),
                          ),
                          Container(
                            width: 13,
                            height: 13,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)
                            ),
                          ),
                        ],
                    )),
                    Positioned(
                      top: 60,
                      left: 102,
                      child: Text( numValue ,style:
                       GoogleFonts.roboto(
                      fontSize: 25, fontWeight: FontWeight.w700, color: CWhiteColor
                    ),)),
                    Positioned(
                      right: 81,
                      bottom: 20,
                      child: Container(
                      height: 30,
                      width: 105,
                      decoration: BoxDecoration(
                        color: BColor,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(bottomText, textAlign: TextAlign.center, style: GoogleFonts.roboto(
                          fontSize: 10, fontWeight: FontWeight.w900, color: CWhiteColor
                        ),),
                      ),
                      ))
                ],
              ),
            ),
      ],
    );
  }
}