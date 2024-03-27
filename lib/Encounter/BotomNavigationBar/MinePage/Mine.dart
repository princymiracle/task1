import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MinePage extends StatefulWidget {
  const MinePage({super.key});

  @override
  State<MinePage> createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding:  EdgeInsets.only(top: 4.h),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                        border: Border.all(width: 4,color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ],
                        shape: BoxShape.circle,
                        image:  DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/img_profile.png",
                          ),
                        )
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // border: Border.all(
                        //   width: 4,
                        //   color: Colors.white,
                        // ),
                        color: Colors.black.withOpacity(0.5),
                      ),
                      child: Icon(Icons.camera_alt_outlined,color: Colors.white,),
                    ),
                  ),
                ],
              ),
              // Stack(
              //   children: [
              //     Image.asset("assets/images/img_profile.png",fit: BoxFit.cover,),
              //   ],
              // ),
              // Stack(
              //   children: [
              //     Image.asset(name),
              //   ],
              // ),
              Padding(
                padding:  EdgeInsets.only(top: 2.h,left: 4.w,right: 4.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.language),
                            SizedBox(width: 2.w,),
                            Text("Select Language"),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                      ],
                    ),
                    SizedBox(height: 2.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.lock_outline_sharp),
                            SizedBox(width: 2.w,),
                            Text("Privacy Policy"),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                      ],
                    ),
                    SizedBox(height: 2.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.security_rounded),
                            SizedBox(width: 2.w,),
                            Text("Terms of Service"),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                      ],
                    ),
                    SizedBox(height: 2.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.memory_outlined),
                            SizedBox(width: 2.w,),
                            Text("Member Support"),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                      ],
                    ),
                    SizedBox(height: 2.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.support),
                            SizedBox(width: 2.w,),
                            Text("Member Support"),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                      ],
                    ),
                    SizedBox(height: 2.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.verified_user_outlined),
                            SizedBox(width: 2.w,),
                            Text("Version"),
                          ],
                        ),
                        Text("1.0.1.0",style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
