import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/route/route/routes.dart';
import 'package:task1/route/screen/gesture.dart';
import 'package:task1/route/screen/gesture.dart';



class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Image.asset('assets/images/l1.png',fit: BoxFit.cover,height: 200,width: 200,),),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'name',
                hintText: 'Enter your name,username',
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'email',
                hintText: 'Enter your emil',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: passController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Enter your password',
              ),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: () => Get.toNamed(Routes.gesturePage),

           child: Text("Sign up"),
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(Size(100, 50),),
            ),
          ),
        ],
      ),
    );
  }
}
