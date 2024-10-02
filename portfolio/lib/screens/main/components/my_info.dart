import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const Color(0xFF242430),
        child: Column(
          children: [
            const Spacer(flex: 2,),
            const CircleAvatar(
              radius: 50,
              backgroundImage:
                  AssetImage("assets/images/my_pic.jpg"),
              backgroundColor: Color.fromARGB(255, 53, 53, 74),    
            ),
            const Spacer(),
            Text(
              'Mohamed Sadiq',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Text(
              'Flutter Developer \n Passionate about crafting mobile apps',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            const Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}