import 'package:commit/comm_body/header.dart';
import 'package:commit/constants.dart';
import 'package:commit/model/model_content.dart';
import 'package:commit/responsive.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../sideMenu/side_menu.dart';

class Agency extends StatefulWidget {
  const Agency({super.key});

  @override
  State<Agency> createState() => _AgencyState();
}

class _AgencyState extends State<Agency> {
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
              const Expanded(child: Header( title: "Dashboard",))
                ],
              ),
              ModelContent(),
            ],
          )),
        ),
       
    );
  }
}