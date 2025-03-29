import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/Provider.dart';

class Appwithprovider03 extends StatefulWidget {
  const Appwithprovider03({super.key});

  @override
  State<Appwithprovider03> createState() => _Appwithprovider03State();
}

class _Appwithprovider03State extends State<Appwithprovider03> {
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
              Expanded(
                child: ListView.builder(
                    itemCount: NP.numbers.length,
                    itemBuilder: (context, index){
                      return Text("${NP.numbers[index]} ", style: const TextStyle(fontSize: 30),);
                    }),
              ),
            ],
          ),
        );
      },
    );
  }
}
