import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/route/route/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
                hintText: 'Enter your email',
              ),
            ),
          ),
          SizedBox(height: 10,),
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

            ElevatedButton(onPressed: () => Get.toNamed(Routes.signPage),
             child: Text("Login"),
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(Size(100, 50),),
              ),
            ),
        ],
      ),
    );
  }
}
