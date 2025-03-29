import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/App_With_Provider/AppWithProvider_02.dart';
import 'package:provider_state_management/provider/Provider.dart';

class Appwithprovider extends StatefulWidget {
  const Appwithprovider({super.key});

  @override
  State<Appwithprovider> createState() => _AppwithproviderState();
}

class _AppwithproviderState extends State<Appwithprovider> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberProvider>(
      builder: (context, NP, child) {
        return Scaffold(
          appBar: AppBar(),
          floatingActionButton: FloatingActionButton(onPressed: (){
            NP.add();
          },
            child: Icon(Icons.add),),
          body: Column(
            children: [
              Text("${NP.numbers.last}", style: const TextStyle(fontSize: 30),),
              Expanded(child: ListView.builder(
                  itemCount: NP.numbers.length,
                  itemBuilder: (context, index){
                    return Text("${NP.numbers[index]}", style: const TextStyle(fontSize: 30),);
                  })),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Appwithprovider02()));
              }, child: Text("second"))
            ],
          ),
        );
      },
    );
  }
}
