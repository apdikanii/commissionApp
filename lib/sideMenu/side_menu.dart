import 'package:commit/constants.dart';
import 'package:commit/extention.dart';
import 'package:commit/responsive.dart';
import 'package:commit/sideMenu/side_menu_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: const EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
      color: CCustomerColor,
      child: SafeArea(child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35, top: 53, bottom: 12),
                  child: Image.asset( "assets/images/logo.png", width: 199, height: 60,
              ),
                ),
              // const Spacer(),
              if(!Responsive.isDesktop(context)) 
              const CloseButton()
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Divider(thickness: 1, color: CGreyColor,),
            ),
            const SizedBox(height: 36,),
            // Row(
            //   children: [
            //     InkWell(
            //       onTap: () {},
            //       child: Stack(
            //           children: [
            //             WebsafeSvg.asset("assets/Icons/Edit.svg",),
            //              Text("hhhh"),
            //           ],
            //         ),
            //       ),
                
            //   ],
            // )
            SideMenuItem(iconSrc: "assets/Icons/Send.svg",
             title: "Dashboard", press: (){}, 
             isActive: true, isHover: false),

             SideMenuItem(iconSrc: "assets/Icons/Send.svg",
             title: "Agents", press: (){}, 
             isActive: false, isHover: false),

             SideMenuItem(iconSrc: "assets/Icons/Send.svg",
             title: "Customers", press: (){}, 
             isActive: false, isHover: false),

             SideMenuItem(iconSrc: "assets/Icons/Send.svg",
             title: "Products", press: (){}, 
             isActive: false, isHover: false),

             SideMenuItem(iconSrc: "assets/Icons/Send.svg",
             title: "Orders", press: (){}, 
             isActive: false, isHover: false),

             SideMenuItem(iconSrc: "assets/Icons/Send.svg",
             title: "Users", press: (){}, 
             isActive: false, isHover: false),

            // TextButton.icon(onPressed: () {}, 
            // icon: WebsafeSvg.asset("assets/Icons/Edit.svg", 
            // color: Colors.black, width: 16), label: const Text("New message",
            //       style: TextStyle(color: Color.fromARGB(255, 117, 99, 99))),
            //       ).addNeumorphism(
            //         topShadowColor: Colors.white,
            //         bottomShadowColor: const Color(0xFF234395).withOpacity(0.2),
            //       ),
            
          ],
        ),
      )),
    );
  }
}