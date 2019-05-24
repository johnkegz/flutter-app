import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart'; 
import '../../scoped_models/scoped_counters.dart';

class WidgetThree extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return ScopedModelDescendant<ScopedCounter>(
      builder: (context, child, model) => 
      Text('widget two is ${model.counter2.count}'));
  }
}
