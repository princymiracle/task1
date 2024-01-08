import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GesturePage extends StatefulWidget {

   // GesturePage(  this.nameFromeHome);
   // var nameFromeHome;
  @override
  State<GesturePage> createState() => _GesturePageState();
}
class _GesturePageState extends State<GesturePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
            child: Icon(Icons.arrow_back),
        ),
      ),
      body:
         Center(
          child: Column(
            children: [
              // Text("Hello , ${widget.nameFromeHome}"),
              Text("Hello World"),
              SizedBox(height: 5,),
              Text("Hello Guys"),
              SizedBox(height: 5,),
              InkWell(
                  child: RichText(
                    text: new TextSpan(
                      text: "Next"
                    ),
                  ),
              ),
            ],
          ),
        ),
    );
  }
}

