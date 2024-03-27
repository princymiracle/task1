import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'EncounterWidget.dart';
import 'Model.dart';

class EncounterPage extends StatefulWidget {
  const EncounterPage({super.key});

  @override
  State<EncounterPage> createState() => _EncounterPageState();
}

class _EncounterPageState extends State<EncounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Encounter",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.sp),),
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 3.w),
            child: Container(
              height: 2.h,
              width: 8.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.blue,
              ),
              child: Center(child: Text("Pro",style: TextStyle(color: Colors.white,fontSize: 10.sp),),),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 2.w,right: 2.w,top: 2.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    //childAspectRatio: 4 / 5,
                    childAspectRatio:  3/5,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0
                ),
                itemCount: Encounter.length,
                itemBuilder: (context, index) =>
                    EncounterW(EncModel: Encounter[index]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
