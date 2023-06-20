import 'package:flutter/material.dart';

import 'flipApp.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
        // backgroundColor: textColor,zzz
        Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/image/dicy1.jpg'), fit: BoxFit.cover),
      ),
      child: const flipApp(),

      // Image.asset(
      //   'assets/image/dicy1.jpg',
      //   fit: BoxFit.cover,
      //   color: Colors.pink.withOpacity(0.7),
      //   colorBlendMode: BlendMode.darken,
      // ),
      // // child: const flipApp(),
    );
  }
}
