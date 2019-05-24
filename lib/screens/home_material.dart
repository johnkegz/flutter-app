import 'package:flutter/material.dart';
import '../models/user.dart';

class HomeMaterial extends StatefulWidget {
  @override
  _HomeMaterialState createState() => _HomeMaterialState();
}

class _HomeMaterialState extends State<HomeMaterial> {
  final _formkey = GlobalKey<FormState>();
  final _user = User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: Builder(
          builder: (context) => Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: 'First name'),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your f name';
                      }
                    },
                    onSaved: (val) => setState(() => _user.firstName = val),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Second name'),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your second name';
                      }
                    },
                    onSaved: (val) => setState(() => _user.firstName = val),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Text('subscribe'),
                  ),
                  SwitchListTile(
                      title: const Text('Monthly News Letter'),
                      value: _user.newsletter,
                      onChanged: (bool val) =>
                          setState(() => _user.newsletter = val)),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Text('Interests'),
                  ),
                  CheckboxListTile(
                    title: const Text('PassionCooking'),
                    value: _user.passions[User.PassionCooking],
                    onChanged: (bool val) => setState(
                        () => _user.passions[User.PassionCooking] = val),
                  ),
                  CheckboxListTile(
                    title: const Text('PassionHiking'),
                    value: _user.passions[User.PassionHiking],
                    onChanged: (bool val) => setState(
                        () => _user.passions[User.PassionHiking] = val),
                  ),
                  CheckboxListTile(
                    title: const Text('PassionTraveling'),
                    value: _user.passions[User.PassionTraveling],
                    onChanged: (bool val) => setState(
                        () => _user.passions[User.PassionTraveling] = val),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: RaisedButton(
                        onPressed: () {
                          final form = _formkey.currentState;
                          if (form.validate()) {
                            form.save();
                            _user.save();
                            _showDialog(context);
                          }
                        },
                        child: Text('save')),
                  )
                ],
              )),
        ),
      ),
    );
  }

  _showDialog(BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('submitting')));
  }
}
