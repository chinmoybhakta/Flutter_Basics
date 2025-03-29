import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider_state_management/App_Without_Provider/AppWithoutProvider_02.dart';

class Appwithoutprovider extends StatefulWidget {
  const Appwithoutprovider({super.key});

  @override
  State<Appwithoutprovider> createState() => _AppwithoutproviderState();
}

class _AppwithoutproviderState extends State<Appwithoutprovider> {
  List<int> numbers = [1, 2, 3, 4];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          numbers.add(numbers.last + 1);
        });
      }, child: Icon(Icons.add),),
      body: Column(
        children: [
          Text("${numbers.last}",
          style: const TextStyle(fontSize: 30),),
          Expanded(
              child: ListView.builder(
              itemCount: numbers.length,
              itemBuilder: (context, index){
                return Text("${numbers[index]}",
                style: const TextStyle(fontSize: 30),);
              },
          )
          ),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Appwithoutprovider02(numbers: numbers)));
          }, child: const Text("Second"))
        ],
      ),
    );
  }
}
