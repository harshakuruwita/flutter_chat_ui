
import 'package:flutter/material.dart';

class CommonQustion extends StatelessWidget {
  const CommonQustion({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
     
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildButton(context, 'Give me tips\nto overcome procrastination'),
                    buildButton(context, 'Explain nostalgia\nto a kindergartener'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildButton(context, 'Create a recipe\nusing ingredients from my kitchen'),
                    buildButton(context, 'Create a morning routine\nto boost my productivity'),
                  ],
                ),
              ],
            );
          } else {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildButton(context, 'Give me tips\nto overcome procrastination'),
                buildButton(context, 'Explain nostalgia\nto a kindergartener'),
                buildButton(context, 'Create a recipe\nusing ingredients from my kitchen'),
                buildButton(context, 'Create a morning routine\nto boost my productivity'),
              ],
            );
          }
        },
      ),
    );

  Widget buildButton(BuildContext context, String text) => Container(
     decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
      child: Column(
        children: [
          Text(text),
          // Add an icon here if desired
        ],
      ),
    );
}