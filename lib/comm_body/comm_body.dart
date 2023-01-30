import 'package:commit/comm_body/header.dart';
import 'package:commit/constants.dart';
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
        maxWidth: 250),
        child: const SideMenu(),),
        backgroundColor: CBglightColor,
        body: Container(
          padding: const EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
          
          child: SafeArea(
            right: false,
            child: Column(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: kDefaultPadding)),
              Header(),
            ],
          )),
        ),
       
    );
  }
}