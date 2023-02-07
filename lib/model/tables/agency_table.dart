import 'package:commit/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class AgencyTable extends StatelessWidget {
  const AgencyTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: CWhiteColor
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        child: Table(
          children: [
            //tabele one 
            TableRow(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: CCustomerColor
              ),
              children: [
                TableCell(child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20, bottom: 20),
                  child: Text("NO", style: GoogleFonts.rubik(
                    fontSize: 25, fontWeight: FontWeight.w500, color: CWhiteColor
                  ),),
                )),
                TableCell(child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20, bottom: 20),
                  child: Text("Full Name", style: GoogleFonts.rubik(
                    fontSize: 25, fontWeight: FontWeight.w500, color: CWhiteColor
                  ),),
                )),
                TableCell(child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20, bottom: 20),
                  child: Text("Business", style: GoogleFonts.rubik(
                    fontSize: 25, fontWeight: FontWeight.w500, color: CWhiteColor
                  ),),
                )),
                TableCell(child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20, bottom: 20),
                  child: Text("Phone Number", style: GoogleFonts.rubik(
                    fontSize: 25, fontWeight: FontWeight.w500, color: CWhiteColor
                  ),),
                )),
                TableCell(child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20, bottom: 20),
                  child: Text("Action",textAlign: TextAlign.center, style: GoogleFonts.rubik(
                    fontSize: 25, fontWeight: FontWeight.w500, color: CWhiteColor
                  ),),
                )),
                  
              ]
            ),
            //table two
            TableRow(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Color(0xFFA7AFAF)))
              ),
              children: [
                TableCell(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Text("1",style: GoogleFonts.karla(
                    fontSize: 18, fontWeight: FontWeight.w400, color: CBlackColor
                  ),),
                )),
                TableCell(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Text("Jane Cooper",style: GoogleFonts.karla(
                    fontSize: 18, fontWeight: FontWeight.w400, color: CBlackColor
                  ),),
                )),
                TableCell(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Text("Nike", style: GoogleFonts.karla(
                    fontSize: 18, fontWeight: FontWeight.w400, color: CBlackColor
                  ),),
                )),
                TableCell(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Text("(808) 555-0111",style: GoogleFonts.karla(
                    fontSize: 18, fontWeight: FontWeight.w400, color: CBlackColor
                  ),),
                )),
                TableCell(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Icon(Icons.delete)
                )),
                // TableCell(child: Actions(actions: [IconButton(onPressed: onPressed, icon: icon)], child: Icon(Icons.delete))),
              ]
            ),
            //table three

          ],
        ),
      ),
    );
  }
}