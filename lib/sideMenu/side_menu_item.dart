
import 'package:commit/constants.dart';
import 'package:commit/comm_body/pages/agencyPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websafe_svg/websafe_svg.dart';
class UserPage extends StatelessWidget {
  final String urlImage;

  const UserPage({
    Key? key,
    required this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          centerTitle: true,
        ),
        body: Image.network(
          urlImage,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      );
}
// class SideMenuItem extends StatelessWidget {
//   const SideMenuItem({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Material(
//         color: CCustomerColor,
//         child: ListView(
//           children:[
//             Container(
//               height: double.infinity,
//               child: Column(
//                 children: [
//                   const SizedBox(height: 12),
//                   buildMenuItem(
//                     text: 'People',
//                     icon: Icons.people,
//                     onClicked: () => selectedItem(context, 0),
//                   ),
//                   const SizedBox(height: 16),
//                   buildMenuItem(
//                     text: 'Favourites',
//                     icon: Icons.favorite_border,
//                     onClicked: () => selectedItem(context, 1),
//                   ),
//                   const SizedBox(height: 16),
//                   buildMenuItem(
//                     text: 'Workflow',
//                     icon: Icons.workspaces_outline,
//                     onClicked: () => selectedItem(context, 2),
//                   ),
//                   const SizedBox(height: 16),
//                   buildMenuItem(
//                     text: 'Updates',
//                     icon: Icons.update,
//                     onClicked: () => selectedItem(context, 3),
//                   ),
//                   const SizedBox(height: 24),
//                   Divider(color: Colors.white70),
//                   const SizedBox(height: 24),
//                   buildMenuItem(
//                     text: 'Plugins',
//                     icon: Icons.account_tree_outlined,
//                     onClicked: () => selectedItem(context, 4),
//                   ),
//                   const SizedBox(height: 16),
//                   buildMenuItem(
//                     text: 'Notifications',
//                     icon: Icons.notifications_outlined,
//                     onClicked: () => selectedItem(context, 5),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

   
//   Widget buildMenuItem({
//     required String text,
//     required IconData icon,
//     VoidCallback? onClicked,
//   }) {
//     final color = Colors.white;
//     final hoverColor = Colors.white70;

//     return ListTile(
//       leading: Icon(icon, color: color),
//       title: Text(text, style: TextStyle(color: color)),
//       hoverColor: hoverColor,
//       onTap: onClicked,
//     );
//   }

  // void selectedItem(BuildContext context, int index) {
  //   Navigator.of(context).pop();

  //   switch (index) {
  //     case 0:
  //       Navigator.of(context).push(MaterialPageRoute(
  //         builder: (context) => Agency(),
  //       ));
  //       break;
  //     case 1:
  //       Navigator.of(context).push(MaterialPageRoute(
  //         builder: (context) => Agency(),
  //       ));
  //       break;
  //   }
  // }
// }


// class SideMenuItem extends StatelessWidget {
//   const SideMenuItem({super.key, required this.iconSrc, required this.title, 
//   required this.press, required this.isActive, required this.isHover});
// //   List<String> categories = [
// //     "Dashboard",
// //     "Agency",
// //     "Customer",
// //     "Product",
// //     "Order"
// //   ];
// //   //final Function onTap;
// //   List<String> icons = [
// //      "Dashboard_icon",
// //     "Agency_icon",
// //     "Customer_icon",
// //     "Product_icon",
// //     "Order_icon"
// //   ];
// //   int current = 0;
//   final String iconSrc, title;
//   final VoidCallback press;
//   final bool isActive, isHover;
// //  
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: CCustomerColor,
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//                 width: 225,
//                 height: 45,
//                 decoration: (isActive || isHover) ? BoxDecoration(
//                   color: CProductColor,
//                   borderRadius: BorderRadius.circular(10),
//                 ) : null,
//               child:  Padding(
//                 padding: const EdgeInsets.only(left: 20),
//                 child: TextButton.icon(onPressed: () {}, 
//                 icon: Padding(
//                   padding: const EdgeInsets.only(right: 15),
//                   child: WebsafeSvg.asset(iconSrc, 
//                   color: (isActive || isHover) ? const Color(0xFFFFFFFF): null, width: 18),
//                 ), 
//                 label: Text(title, style: GoogleFonts.nunito(
//                   fontSize: 20, fontWeight: FontWeight.w600, color: CWhiteColor,
//                 ),
//                       ),
//                  ),
//               ),
//           ),
         
//         ],
//       ),
//     );
//   }
// }