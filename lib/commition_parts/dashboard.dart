import 'package:commit/commition_parts/dashboard_card.dart';
import 'package:commit/commition_parts/total_comm_table.dart';
import 'package:commit/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                DashboardCard(title: "Agency", bottomText: "View All", BColor: Color(0xFF398A07), numValue: "5,000", color: CAgencyColor),
                DashboardCard(title: "Customers", bottomText: "View All", BColor: Color(0xFF3A2AAF), numValue: "12 456", color: CCustomerColor),
                DashboardCard(title: "Products", bottomText: "View All", BColor: Color(0xFFB65801), numValue: "21", color: CProductColor),
                DashboardCard(title: "Orders", bottomText: "View All", BColor: Color(0xFF0472AF), numValue: "\$ 507", color: COrdersColor),
              ],
            ),
          ),
          TotalCommTable(),
         
        ],
      ),
    );
  }
}