import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/App_Without_Provider/AppWithoutProvider.dart';
import 'package:provider_state_management/provider/Provider.dart';

import 'App_With_Provider/AppWithProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Usage of Provider',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_)=>NumberProvider())],
      child: MaterialApp(
        home: Appwithprovider()
            ),
    );
  }
}


//MUST have to wrap Material APP to register and no naviogator should be allowed

