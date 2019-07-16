import 'package:flutter/material.dart';
import './bloc.dart';

void main()=>runApp(MaterialApp(title: 'ok1',home: MyApp(),));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int a=0,b=0,c=0;
  final bloc=Bloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder(
          stream: bloc.op,
          initialData: 0,
          builder: (context, AsyncSnapshot<int> snapshot) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('${snapshot.data}',style: Theme.of(context).textTheme.display1),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (v){
                      a=int.parse(v);
                      bloc.ip.add(a);
                    },
                  ),
                )
              ],
            );
          }
        )
      ),
      
    );
  }
}