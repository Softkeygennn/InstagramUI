import 'package:flutter/material.dart';
class BottomBarWidgets extends StatelessWidget {
  const BottomBarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(

      child: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items:  const [
          BottomNavigationBarItem(icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.video_call),
              label: 'Reels',
          ),
          // BottomNavigationBarItem(icon: Icon(Icons.add),
          //     label: 'Add',
          // ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline_rounded),
              label: 'Heart',
          ),
          BottomNavigationBarItem(icon: CircleAvatar(
            // backgroundImage: AssetImage(),
          ),
              label: 'User'
          ),
        ],
      ),
    );
  }
}
