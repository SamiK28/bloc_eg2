import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Bloc{

  final choice = StreamController<int>();
  Stream<int> get op=> choice.stream;
  Sink<int>  get ip=>choice.sink;

  // Bloc(){
  //   choice.stream.listen((int number){
      
  //   });
  // }
  void dispose(){
    choice.close();
  }

}