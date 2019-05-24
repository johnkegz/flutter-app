import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../scoped_models/scoped_counters.dart';
import 'widgetOne.dart';
import 'widgetTwo.dart';
import 'widgetThree.dart';

class HomePage extends StatelessWidget {
  final ScopedCounter scopedCounter = ScopedCounter();
@override
Widget build(BuildContext context){
  return ScopedModel<ScopedCounter>(
    model: scopedCounter,
    child: Scaffold(
      appBar: AppBar(title: Text('yoo')),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Widget1(),
          Widget2(),
          WidgetThree(),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () => scopedCounter.increment(),
      tooltip: 'Increment',
      child: Icon(Icons.add),
    ),
    )
  );
}
}
