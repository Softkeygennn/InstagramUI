import 'package:flutter/material.dart';

class StoryWidgets extends StatelessWidget {
  const StoryWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(10, (index) {
                return Container(
                  height: 69,
                  width: 69,
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient:
                      LinearGradient(colors: [Color(0xFF9B2282), Color(0xFFEEA863)])),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      height: 65,
                      width: 65,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          width: 65,
                          height: 65,
                          decoration: const BoxDecoration(
                              boxShadow: [BoxShadow(color: Colors.grey, spreadRadius: 1)],
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('assets/profile.jpg'))),
                        ),
                      ),
                    ),
                  ),
                );
              }),),
            ),
          ),

        ],
      );

  }
}
