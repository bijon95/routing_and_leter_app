import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
 var email;
 Profile({this.email});
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.email),),
      body: InkWell(
        onTap: (){},
        child: Text("Profile"),
      ),
    );
  }
}
