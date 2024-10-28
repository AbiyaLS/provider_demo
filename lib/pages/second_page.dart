import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/provider_class.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context,numberProviderModel,child)=>
       Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Center(
              child: Text(
                "SECOND PAGE",
                style: TextStyle(color: Colors.white),
              )),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
           numberProviderModel.add();
          },
          backgroundColor: Colors.purple,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: Column(
          children: [
            Container(
              child: Center(
                  child: Text(
                    numberProviderModel.numbers.last.toString(),
                    style: TextStyle(fontSize: 25),
                  )),
            ),
            Expanded(child: ListView.builder(
                itemCount: numberProviderModel.numbers.length,
                itemBuilder: (context, index) {
                  return Text(
                    numberProviderModel.numbers[index].toString(), style: TextStyle(fontSize: 18),);
                })),
            ElevatedButton(onPressed: () {},
              child: Text("Next Page", style: TextStyle(color: Colors.white),),
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.purple)),)
          ],
        ),
      ),
    );;
  }
}
