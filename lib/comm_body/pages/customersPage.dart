import 'package:commit/comm_body/header.dart';
import 'package:commit/constants.dart';
import 'package:commit/model/agencts_content.dart';
import 'package:commit/model/tables/customer_table.dart';
import 'package:commit/sideMenu/side_menu.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomersPage extends StatefulWidget {
  const CustomersPage({super.key});

  @override
  State<CustomersPage> createState() => _CustomersPageState();
}

class _CustomersPageState extends State<CustomersPage> {
 final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      drawer: ConstrainedBox(constraints: const BoxConstraints(
        maxWidth: 270),
        child: SideMenu(),),
        backgroundColor: CBglightColor,
        body: Container(
          padding: const EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
          child: SafeArea(
            // right: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  // if(!Responsive.isDesktop(context) && !Responsive.isTablet(context))
                    IconButton(onPressed: (){
                      _scaffoldkey.currentState?.openDrawer();
                    }, 
                    icon: const Icon(Icons.menu)),
                    // if(!Responsive.isDesktop(context))
                     const SizedBox(width: 5,),
              const Expanded(child: Header( title: "Customers",))
                ],
              ),
               // Banner Part will start from here
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
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 24),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Row(
                //       children: [
                //          Text("Show", style: GoogleFonts.rubik(
                //         fontSize: 25, 
                //         fontWeight: FontWeight.w500, color: CBlackColor
                //       ),),
                //       //bottom field will put here

                //       ],
                //      ),
                //       Container(
                //         decoration: BoxDecoration(
                //           color: CCustomerColor,
                //           borderRadius: BorderRadius.circular(5)
                //         ),
                //         child: TextButton.icon(onPressed: (){}, icon: Padding(
                //           padding: const EdgeInsets.all(10.0),
                //           child: Container(
                //             height: 41,
                //             width: 42,
                //             decoration: BoxDecoration( 
                //               color: CProductColor,
                //               borderRadius: BorderRadius.circular(40)
                //             ),
                //             child: Icon(Icons.add, color: CCustomerColor,),
                //           ),
                //         ), label: Padding(
                //           padding: const EdgeInsets.only(right: 25),
                //           child: Text("Add Customer", style: GoogleFonts.rubik(
                //             fontSize: 25, fontWeight: FontWeight.w500, color: CWhiteColor
                //           ),),
                //         )),
                //       ),
                //     ],
                //   ),
                // ),
                //Table Part start from here 
                CustomerTable()
            ],
          )),
        ),
       
    );
  }
}