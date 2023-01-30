
import 'package:commit/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SideMenuItem extends StatelessWidget {
  const SideMenuItem({super.key, required this.iconSrc, required this.title, 
  required this.press, required this.isActive, required this.isHover});

  final String iconSrc, title;
  final VoidCallback press;
  final bool isActive, isHover;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
              width: 225,
              height: 45,
              decoration: (isActive || isHover) ? BoxDecoration(
                color: CProductColor,
                borderRadius: BorderRadius.circular(10),
              ) : null,
              child:  TextButton.icon(onPressed: () {}, 
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: WebsafeSvg.asset(iconSrc, 
              color: (isActive || isHover) ? const Color(0xFFFFFFFF): null, width: 16),
            ), 
            label: Text(title,
                   style: const TextStyle(color: CWhiteColor)
                  ),
             ),
        ),
       
      ],
    );
  }
}