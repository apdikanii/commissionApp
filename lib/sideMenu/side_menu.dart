import 'package:commit/comm_body/header.dart';
import 'package:commit/constants.dart';
import 'package:commit/extention.dart';
import 'package:commit/comm_body/pages/agency.dart';
import 'package:commit/responsive.dart';
import 'package:commit/sideMenu/side_menu_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SideMenu extends StatelessWidget {
  SideMenu({super.key});
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    // final name = 'Sarah Abs';
    // final email = 'sarah@abs.com';
    // final urlImage =
    //     'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';
    return Drawer(
      child: Material(
        color: CCustomerColor,
        child: ListView(
          children: [
            // buildHeader(
            //   urlImage: urlImage,
            //   name: name,
            //   email: email,
            //   onClicked: () => Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) => UserPage(
            //       urlImage: urlImage,
            //     ),
            //   )),
            // ),

            SafeArea(child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    const Spacer(),
                    if(!Responsive.isDesktop(context) && !Responsive.isTablet(context)) CloseButton(),
                    ],
                  ),
                  Padding(
                        padding: const EdgeInsets.only(left: 15, top: 33, bottom: 12),
                        child: Image.asset( "assets/images/logo.png", width: 170, height: 60,
                    ),
                      ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35),
                    child: Divider(thickness: 1, color: CGreyColor,),
                  ),
                  const SizedBox(height: 36,),
            
                ],
              ),
            )),
            Container(
            // height: double.infinity,
            // padding: const EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
            // color: CCustomerColor,
            padding: padding,
            child: Column(
              children: [
                buildMenuItem(
                    text: 'Agency',
                    icon: Icons.people,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Customers',
                    icon: Icons.favorite_border,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Products',
                    icon: Icons.workspaces_outline,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Orders',
                    icon: Icons.update,
                    onClicked: () => selectedItem(context, 3),
                  ),
              ],
            )
          ),
          ],
        ),
      ),
    );
  }

  //  Widget buildHeader({
  //   required String urlImage,
  //   required String name,
  //   required String email,
  //   required VoidCallback onClicked,
  // }) =>
  //     InkWell(
  //       onTap: onClicked,
  //       child: Container(
  //         padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
  //         child: Row(
  //           children: [
  //             CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
  //             SizedBox(width: 20),
  //             Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Text(
  //                   name,
  //                   style: TextStyle(fontSize: 20, color: Colors.white),
  //                 ),
  //                 const SizedBox(height: 4),
  //                 Text(
  //                   email,
  //                   style: TextStyle(fontSize: 14, color: Colors.white),
  //                 ),
  //               ],
  //             ),
  //             Spacer(),
  //             CircleAvatar(
  //               radius: 24,
  //               backgroundColor: Color.fromRGBO(30, 60, 168, 1),
  //               child: Icon(Icons.add_comment_outlined, color: Colors.white),
  //             )
  //           ],
  //         ),
  //       ),
  //     );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = CProductColor;

    return ListTile(
      leading: Icon(icon, color: color, weight: 21.8,),
      title: Text(text, style: GoogleFonts.nunito(
        fontSize: 20, fontWeight: FontWeight.w600, color: color
      )),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Agency(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Agency(),
        ));
        break;
    }
  }
}
