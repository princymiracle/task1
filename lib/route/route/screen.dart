import 'package:get/get.dart';
import 'package:task1/route/route/routes.dart';
import 'package:task1/route/screen/firstscreen.dart';
import 'package:task1/route/screen/gesture.dart';
import 'package:task1/route/screen/secondpage.dart';

class Screens{

   static final routes =[
    GetPage(name: Routes.loginPage, page: () => LoginPage()),
    GetPage(name: Routes.signPage, page: () => SignPage()),
    GetPage(name: Routes.gesturePage, page: () => GesturePage()),

   ];
}

