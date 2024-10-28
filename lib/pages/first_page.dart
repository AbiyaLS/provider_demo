import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/pages/second_page.dart';
import 'package:provider_example/provider/provider_class.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context,numberProviderModel,child)=>
       Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Center(
              child: Text(
                "Example for Provider",
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
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SecondPage()));
            },
              child: Text("Next Page", style: TextStyle(color: Colors.white),),
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.purple)),)
          ],
        ),
      ),
    );
  }
}
