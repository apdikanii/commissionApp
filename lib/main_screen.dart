
import 'package:commit/comm_body/comm_body.dart';
import 'package:commit/comm_body/header.dart';
import 'package:commit/commition_list/list_of_comm.dart';
import 'package:commit/sideMenu/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'responsive.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Responsive(
      mobile: CommBody(),
      tablet: Row(
        children: [
          Expanded(flex: 6, child: SideMenu()),
          Expanded(flex: 9, child: CommBody())
        ],
      ),
      desktop: Row(
        children: [
          Expanded(
            flex: _size.width >= 1340 ? 2 : 4,
            child: SideMenu(),),
            // Expanded(
            //   flex: _size.width >= 1340 ? 3 : 5,
            //   child: SideMenu()),
            Expanded( 
              flex: _size.width >= 1340 ? 8 : 10,
              child: CommBody())
        ],
      ),
    );
  }
}