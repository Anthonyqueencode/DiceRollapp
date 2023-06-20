import 'package:flutter/material.dart';
import './rollerApp.dart';

class flipApp extends StatelessWidget {
  const flipApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
        // OutlinedButton(
        //     onPressed: () => Navigator.push(
        //         context, MaterialPageRoute(builder: (context) => rollerApp())),
        Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => rollerApp()));
          },
          child: const Text('Flip the dice <>',
              style: TextStyle(
                color: Color.fromARGB(255, 18, 8, 205),
                fontSize: 30,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ))),
      SizedBox(
        height: 10,
      )
    ]);
  }
}

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
