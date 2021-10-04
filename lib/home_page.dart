
import 'package:abdullahapp/about.dart';
import 'package:flutter/material.dart';

import 'profile.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),),
      body: Center(child:
        Column(
          children: [
            InkWell(
                onTap: (){

    Navigator.push(
            context,
    MaterialPageRoute(builder: (context) =>
            Profile(email: "email",)));
    },

                child: Text("Email ")),
            InkWell(
                onTap: (){

                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>
                          Profile(email: "Name",)));
                },

                child: Text("Name ")),
          ],
        ),),
    );
  }
}

