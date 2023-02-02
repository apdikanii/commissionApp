import 'package:commit/comm_body/header.dart';
import 'package:commit/commition_parts/dashboard.dart';
import 'package:commit/constants.dart';
import 'package:commit/responsive.dart';
import 'package:commit/sideMenu/side_menu.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CommBody extends StatefulWidget {
  const CommBody({super.key});

  @override
  State<CommBody> createState() => _CommBodyState();
}

class _CommBodyState extends State<CommBody> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      // appBar: Header(context, _scaffoldkey),
      drawer: ConstrainedBox(constraints: const BoxConstraints(
        maxWidth: 270),
        child: const SideMenu(),),
        backgroundColor: CBglightColor,
        body: Container(
          padding: const EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
          child: SafeArea(
            right: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  if(!Responsive.isDesktop(context) && !Responsive.isTablet(context))
                    IconButton(onPressed: (){
                      _scaffoldkey.currentState?.openDrawer();
                    }, 
                    icon: const Icon(Icons.menu)),
                    if(!Responsive.isDesktop(context))
                     const SizedBox(width: 5,),
              const Expanded(child: Header( title: "Dashboard",))
                ],
              ),
              Dashboard(),
              
            ],
          )),
        ),
       
    );
  }
}