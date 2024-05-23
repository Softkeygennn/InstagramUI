import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostWidgets extends StatelessWidget {
  const PostWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(),
                    image: const DecorationImage(
                        image: AssetImage('assets/profile.jpg')),
                  ),
                ),
                title: const Text('Shahbaz'),
                subtitle: const Text('Multan, Punjab'),
                trailing: const Icon(Icons.more_vert),
              ),
              Container(
                height: 300,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                  image: AssetImage('assets/shahbaz.jpg'),
                )),
              ),
                ListTile(
                leading: Wrap(
                  children: [
                    const Icon(Icons.favorite, color: Colors.red,size: 30,),
                    SvgPicture.asset('assets/comment.png'),
                    SvgPicture.asset('assets/messanger.png'),
                  ],
                ),
              )
            ],
          );
        });
  }
}
