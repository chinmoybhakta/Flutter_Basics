import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/App_With_Provider/AppWithProvider_03.dart';
import 'package:provider_state_management/provider/Provider.dart';

class Appwithprovider02 extends StatefulWidget {
  const Appwithprovider02({super.key});

  @override
  State<Appwithprovider02> createState() => _Appwithprovider02State();
}

class _Appwithprovider02State extends State<Appwithprovider02> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberProvider>(
      builder: (context, NP, child) {
        return Scaffold(
          appBar: AppBar(),
          floatingActionButton: FloatingActionButton(onPressed: (){
            NP.add();
          }, child: Icon(Icons.add),),
          body: Column(
            children: [
              Text("${NP.numbers.last}", style: const TextStyle(fontSize: 30),),
              SizedBox(
                width: double.maxFinite,
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: NP.numbers.length,
                    itemBuilder: (context, index){
                      return Text("${NP.numbers[index]} ", style: const TextStyle(fontSize: 30),);
                    }),
              ),
              InkWell(child: Text("third", style: const TextStyle(fontSize: 30),),
              onLongPress: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Appwithprovider03()));
              },)
            ],
          ),
        );
      },
    );
  }
}
