import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewLeter extends StatefulWidget {
  const ViewLeter({Key? key}) : super(key: key);

  @override
  _ViewLeterState createState() => _ViewLeterState();
}

class _ViewLeterState extends State<ViewLeter> {
  var leter = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
  ];
  var imagelist = [
    'img/apple.jpg',
    'img/ball.jpg',
    'img/cat.png',
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
  ];
  var name = [
    'Apple',
    'Ball',
    'Cat',
    "Doll",
    "E",
    "F",
    "G",
    "H",
    "I",
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            child: Image.asset('img/bg.jpg',fit: BoxFit.fill,),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(leter[index],style: TextStyle(fontSize: 72,fontWeight: FontWeight.bold,color: Colors.red),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(onTap: () {
                      index--;
                      setState(() {

                      });
                    }, child: Icon(Icons.arrow_back_ios)),
                    Container(
                        height: 200,
                        width: 150,
                        child: Image.asset(imagelist[index])),
                    InkWell(
                        onTap: () {
                          index++;
                          setState(() {});
                        },
                        child: Icon(Icons.arrow_forward_ios_rounded)),
                  ],
                ),
                Text(name[index],style: TextStyle(fontSize: 72,fontWeight: FontWeight.bold,color: Colors.red),),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
