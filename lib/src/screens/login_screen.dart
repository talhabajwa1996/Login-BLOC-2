import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          email(),
          SizedBox(height: 8.0),
          password(),
          SizedBox(height: 8.0),
          submitButton(),
        ],
      ),
    );
  }

  Widget email() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'example@example.com',
        errorText: 'Invalid Email',
      ),
    );
  }

  Widget password() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
    );
  }

  Widget submitButton() {
    return RaisedButton(
      child: Text('Submit'),
      color: Colors.blue,
      onPressed: () {},
    );
  }
}
