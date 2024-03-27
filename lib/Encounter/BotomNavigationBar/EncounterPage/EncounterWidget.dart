import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'Model.dart';

class EncounterW extends StatelessWidget {
  EncounterModel EncModel;
  EncounterW({super.key,required this.EncModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(EncModel.images,fit: BoxFit.cover,),
        SizedBox(height: 2.w,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(EncModel.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp),),
            SizedBox(height: 1.h,),
            Text(EncModel.subtitle,style: TextStyle(color: Colors.grey),),
            SizedBox(height: 2.h,),
            Row(
              children: [
                Container(
                  height: 2.h,
                  width: 10.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add,size: 2.h,color: Colors.redAccent,),
                      Text(EncModel.title2,style: TextStyle(color: Colors.redAccent),),
                    ],
                  ),
                ),
                SizedBox(width: 2.w,),
                Container(
                  height: 2.h,
                  width: 15.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: Center(child: Text(EncModel.title3,style: TextStyle(color: Colors.grey),)),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}