// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:task1/apicall/models/PostModel.dart';
// import 'dart:convert';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//
//   List<PostModel> postList =[];
//   Future<List<PostModel>> getPostApi ()async{
//     final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
//     var data = jsonDecode(response.body.toString());
//     if(response.statusCode == 200){
//
//     // for(Map e in data){
//     //   postList.add(PostModel.fromJson(e));
//     // }
//     return postList ;
//     }else {
//       return postList ;
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Api"),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: FutureBuilder(
//               future: getPostApi(),
//                 builder: (context, snapshot){
//                   if(!snapshot.hasData){
//                     return Text('Loading');
//                   }else{
//                     return ListView.builder(
//                       itemCount: postList.length,
//                         itemBuilder: (context, index){
//                       return Text(index.toString());
//                     }
//                     );
//                   }
//                 }
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:task1/apicall/models/PostModel.dart';

class PostApi extends StatefulWidget {
  const PostApi({super.key});

  @override
  State<PostApi> createState() => _PostApiState();
}

class _PostApiState extends State<PostApi> {
  String url  = "https://dummyjson.com/comments";
  List<CommentModels> comments = [];

  @override
  void initState() {
    cathdata();
    super.initState();
  }

  cathdata() async{
    try{
      http.Response response = await http.get(Uri.parse(url));
      print("response ${response.body}");
      Map<String,dynamic> jsondata = jsonDecode(response.body);
      print("jsondata ${jsondata}");

      if(response.statusCode ==200){
        List data =jsondata['comments'];
        comments = data.map((e) => CommentModels.fromJson(e) ).toList();
        setState(() {
        });
      }
    }catch(e){
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comments"),
      ),
      body: ListView.builder(
        itemCount: comments.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text(comments[index].id.toString()),
            title: Text(comments[index].body.toString()),
            subtitle: Text(comments[index].postId.toString()),
          );

      },),

    );
  }
}
