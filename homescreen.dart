import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/bottombar_widgets.dart';
import 'package:instagram_ui/widgets/post_widgets.dart';
import 'package:instagram_ui/widgets/story.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.camera_alt_outlined,
        size: 30,
        color: Colors.grey[600],
        ),
        titleSpacing: 3,
        title: const Text("Instagram",
        style: TextStyle(
          decoration: TextDecoration.none,
          fontFamily: 'billabong',
          fontSize: 35,
        ),
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.search, size: 35,),
          ),
          IconButton(
            onPressed: (){},
            icon:Image.asset('assets/messanger.png', ),),
        ],
      ),
body: const Column(
  children: [
    StoryWidgets(),
    Divider(color: Colors.grey,),
    Expanded(child: PostWidgets(),)
  ],
),
bottomNavigationBar: const BottomBarWidgets(),
    );
  }
}
