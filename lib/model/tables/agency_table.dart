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
      child: Table(
        children: [
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
              TableCell(child: Text("Full Name")),
              TableCell(child: Text("Business")),
              TableCell(child: Text("Phone Number")),
              TableCell(child: Text("Action")),
            ]
          ),
          TableRow(
            children: [
              TableCell(child: Text("1")),
              TableCell(child: Text("Jane Cooper")),
              TableCell(child: Text("Nike")),
              TableCell(child: Text("(808) 555-0111")),
              TableCell(child: Icon(Icons.delete)),
            ]
          ),
        ],
      ),
    );
  }
}