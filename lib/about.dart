import 'package:flutter/material.dart';

import 'home_page.dart';
class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        // leading: IconButton(
        //   onPressed: (){
        //     Navigator.pop(context);
        //   },
        //   icon: Icon(Icons.home),
        // ),
      ),
      body: Center(
        child: InkWell(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()));

            },
            child: Text("About")),
      ),
    );
  }
}

