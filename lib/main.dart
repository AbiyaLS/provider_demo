import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/pages/first_page.dart';
import 'package:provider_example/provider/provider_class.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>NumberListProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstPage(),
      ),
    );
  }
}
