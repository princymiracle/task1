


import 'package:flutter/material.dart';

class FactCalculator extends StatefulWidget {
  FactCalculator({super.key});

  @override
  State<FactCalculator> createState() => _FactCalculatorState();
}


class _FactCalculatorState extends State<FactCalculator> {
  TextEditingController numController = TextEditingController();
  List<int> factors = [];

  void findfactors(int number ){
    factors.clear();
    for(int i =1; i<number; i++){
      if(number % i==0){
        factors.add(i);
      }
    }
    setState((){});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Factor Calculator",style: TextStyle(fontSize: 20,color: Colors.white),),
        backgroundColor: Colors.pink,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: numController,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              int number = int.tryParse(numController.text) ?? 0;
              findfactors(number);

            }, child: Text("FIND ALL FACTORS"),),
            SizedBox(height: 20.0,),
            Text('Factors: ${factors.isEmpty ? "None" : factors.join(",")}',style: TextStyle(fontSize: 18),),
          ],
        ),
      ),

    );
  }
}
