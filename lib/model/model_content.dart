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
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 34),
          height: 53,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: CWhiteColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Text("Here are contents and data from Customers", style: GoogleFonts.rubik(
              fontSize: 25, fontWeight: FontWeight.w500
            ),),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Show", style: GoogleFonts.rubik(
                fontSize: 25, 
                fontWeight: FontWeight.w500, color: CBlackColor
              ),),
              Container(
                decoration: BoxDecoration(
                  color: CCustomerColor,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: TextButton.icon(onPressed: (){}, icon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 41,
                    width: 42,
                    decoration: BoxDecoration( 
                      color: CProductColor,
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: Icon(Icons.add, color: CCustomerColor,),
                  ),
                ), label: Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Text("Add Agency", style: GoogleFonts.rubik(
                    fontSize: 25, fontWeight: FontWeight.w500, color: CWhiteColor
                  ),),
                )),
              ),
            ],
          ),
        ),
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
              SizedBox(height: 30,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 24),
               child: Row(
                children: [
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