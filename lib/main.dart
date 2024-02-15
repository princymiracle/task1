import 'dart:html';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/FactorCalculator/FactorCalculator.dart';
import 'package:task1/LogInPage.dart';
import 'package:task1/UrlLauncher.dart';
import 'package:task1/apicall/api_call.dart';
import 'package:task1/route/route/routes.dart';
import 'package:task1/route/route/screen.dart';
import 'package:task1/route/screen/firstscreen.dart';
import 'API/CartApi/CartApi.dart';
import 'API/GetDemoController.dart';
import 'API/GetView.dart';
import 'APICall_Getx/ProductListView.dart';
import 'XYZ.dart';
import 'example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     home: FactCalculator(),
     //  initialRoute: Routes.loginPage,
     //  getPages: Screens.routes,
    );
  }
}


//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }



//  images
//
// import 'package:flutter/material.dart';
// import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
//
// void main() => runApp(new MyApp());
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Example',
//       home:  XYZ(title: 'GeeksForGeeks'),
//     );
//   }
// }
//
// class XYZ extends StatefulWidget {
//   XYZ({ required this.title});
//
//   final String title;
//
//   @override
//   _XYZState createState() => new _XYZState();
// }
//
// class _XYZState extends State<XYZ> {
//   List<int> data = [];
//   int currentLength = 0;
//
//   final int increment = 10;
//   bool isLoading = false;
//
//   @override
//   void initState() {
//     _loadMore();
//     super.initState();
//   }
//
//   Future _loadMore() async {
//     setState(() {
//       isLoading = true;
//     });
//
//     // Add in an artificial delay
//     await new Future.delayed(const Duration(seconds: 2));
//     for (var i = currentLength; i <= currentLength + increment; i++) {
//       data.add(i);
//     }
//     setState(() {
//       isLoading = false;
//       currentLength = data.length;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//         backgroundColor: Colors.green,
//       ),
//       body: LazyLoadScrollView(
//         isLoading: isLoading,
//         onEndOfPage: () => _loadMore(),
//         child: ListView.builder(
//           itemCount: data.length,
//           itemBuilder: (context, position) {
//             return DemoItem(position, key: Key("Hello"),);
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class DemoItem extends StatelessWidget {
//   final int position;
//
//   const DemoItem(
//       this.position, {
//         required Key key,
//       }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 Container(
//                   color: Colors.deepOrange,
//                   height: 40.0,
//                   width: 40.0,
//                 ),
//                 SizedBox(width: 8.0),
//                 Text("Item $position"),
//               ],
//             ),
//             Text(
//                 "GeeksforGeeks.org was created with a goal "
//                     "in mind to provide well written, well "
//                     "thought and well explained solutions for selected"
//                     " questions. The core team of five super geeks"
//                     " constituting of technology lovers and computer"
//                     " science enthusiasts have been constantly working"
//                     " in this direction ."),
//           ],
//         ),
//       ),
//     );
//   }
// }

