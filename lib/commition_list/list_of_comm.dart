
// import 'package:commit/constants.dart';
// import 'package:commit/responsive.dart';
// import 'package:commit/sideMenu/side_menu.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart' show kIsWeb;
// import 'package:websafe_svg/websafe_svg.dart';

// class ListOfComm extends StatefulWidget {
//   const ListOfComm({super.key});

//   @override
//   State<ListOfComm> createState() => _ListOfCommState();
// }

// class _ListOfCommState extends State<ListOfComm> {
//   final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldkey,
//       drawer: ConstrainedBox(constraints: const BoxConstraints(maxWidth: 250),
//         child: const SideMenu(),
//       ),
//       body: Container(
//         padding: const EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
//         color: CCustomerColor,
//         child: SafeArea(
//           right: false,
//           child: Column(
//             children: [
//               Padding(padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
//                 child: Row(
//                   children: [
//                     if(!Responsive.isDesktop(context))
//                       IconButton(onPressed: (){
//                         _scaffoldkey.currentState?.openDrawer();
//                       }, 
//                       icon: const Icon(Icons.menu)),
//                       if(!Responsive.isDesktop(context))
//                        const SizedBox(width: 5,),
//                       Expanded(child: TextField(
//                         onChanged: (value) {},
//                         decoration: InputDecoration(
//                           hintText: "Search",
//                           fillColor: CWhiteColor,
//                           filled: true,
//                           suffixIcon: Padding(padding: const EdgeInsets.all(kDefaultPadding * 0.75),
//                           child: WebsafeSvg.asset("assets/Icons/Search.svg",
//                           width: 24),),
//                           border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),
//                           borderSide: BorderSide.none,),
//                         ),
//                       ))
//                   ],
//                 ),
//               ),
//               const SizedBox(height: kDefaultPadding,),
//                Padding(padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
//                child: Row(
//                 children: [
//                   WebsafeSvg.asset(
//                     "assets/Icons/Angle down.svg",
//                     width: 16,
//                     color: Colors.black,
//                   ),
//                   const SizedBox(width:  5,),
//                   const Text(
//                     "Sort by date ",
//                     style: TextStyle(fontWeight: FontWeight.w500),
//                   ),
//                   const Spacer(),
//                   MaterialButton(onPressed: () {},
//                     minWidth: 20,
//                     child: WebsafeSvg.asset(
//                       "assets/Icons/Sort.svg",
//                       width: 16,
//                     ),
//                   )

//                 ],
//                ),
//                ),
//                const SizedBox(height: kDefaultPadding,),
//               //  Expanded(child: ListView.builder(
//               //    itemCount: emails.length,
//               //   itemBuilder: (context, index) => EmailCard(
//               //       isActive: Responsive.isMobile(context) ? false : index == 0,
//               //       email: emails[index],
//               //       press: (){
//               //         Navigator.push(context, MaterialPageRoute( builder: (context) => 
//               //           CommBody(emails[index])));
//               //       }
//               //   )))
//             ],
//           )),
//       ),

//     );
//   }
// }