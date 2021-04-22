import 'package:flutter/material.dart';

class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text('Forms'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Padding(padding: EdgeInsets.all(20.0), child: UserForm()));
  }
}

class UserData {
  String firstName;
  String lastName;
  String email;
}

class UserForm extends StatefulWidget {
  @override
  _UserFormState createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final _formKey = GlobalKey<FormState>();

  UserData data = UserData();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
                hintText: 'First Name',
                labelText: 'Name',
                icon: const Icon(Icons.person_add_alt)),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            onSaved: (newValue) {
              data.firstName = newValue;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: 'Last Name',
                labelText: 'Last Name',
                icon: const Icon(Icons.person)),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            onSaved: (newValue) {
              data.lastName = newValue;
            },
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                hintText: 'someone@gmail.com',
                labelText: 'Email',
                icon: const Icon(Icons.email)),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            onSaved: (newValue) {
              data.email = newValue;
            },
          ),
          Container(
            width: screenSize.width,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 20.0),
              //   child: Center(
              child: RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    // If the form is valid, display a Snackbar.
                    _formKey.currentState.save();
                    print(data.email);
                    print(data.firstName);
                    print(data.lastName);
                  }
                },
                color: Colors.blue[500],
                child: Text('Submit'),
              ),
              // ),
            ),
          )
        ],
      ),
    );
  }
}
