import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Appwithoutprovider02 extends StatefulWidget {
  final List<int> numbers;
  const Appwithoutprovider02({super.key, required this.numbers});

  @override
  State<Appwithoutprovider02> createState() => _Appwithoutprovider02State();
}

class _Appwithoutprovider02State extends State<Appwithoutprovider02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          widget.numbers.add(widget.numbers.last + 1);
        });
      }, child: Icon(Icons.add),),
      body: Column(
        children: [
          Text("${widget.numbers.last}",
            style: const TextStyle(fontSize: 30),),
          SizedBox(
            width: double.maxFinite,
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.numbers.length,
              itemBuilder: (context, index){
                return Text("${widget.numbers[index]} ",
                  style: const TextStyle(fontSize: 30),);
              },
            ),
          ),
        ],
      ),
    );
  }
}
