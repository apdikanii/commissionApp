import 'package:commit/constants.dart';
import 'package:commit/model/bottom_changable.dart';
import 'package:commit/model/tables/agency_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ModelContent extends StatelessWidget {
  const ModelContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 
        //Table will call here
        
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: AgencyTable(),
        ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text("Showing 1 to 7 of 599 entries", style: GoogleFonts.karla(
                  fontSize: 20, fontWeight: FontWeight.w400, color: CBlackColor
                ),),
              ),
              SizedBox(height: 50,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 24),
               child: Row(
                children: const [
                BottomChangable(text: "Previous"),
                BottomChangable(text: "1"),
                BottomChangable(text: "2"),
                BottomChangable(text: "3"),
                BottomChangable(text: "4"),
                BottomChangable(text: "5"),
                BottomChangable(text: "..."),
                BottomChangable(text: "Next")
                ],
               ),
             )
            ],
          ),
          SizedBox(height: 30,),
          Text("CawaaleICT 2022",textAlign: TextAlign.center, style: GoogleFonts.karla(
            fontSize: 15, fontWeight: FontWeight.w400, color: CBlackColor
          ),)
      ],
    );
  }
  
  
}