import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          email(bloc),
          SizedBox(height: 8.0),
          password(bloc),
          SizedBox(height: 8.0),
          submitButton(bloc),
        ],
      ),
    );
  }

  Widget email(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: ('Email'),
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget password(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changePassword,
          obscureText: true,
          decoration: InputDecoration(
            hintText: ('Password'),
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget submitButton(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.submitValidate,
      builder: (context, snapshot) {
        return RaisedButton(
          onPressed: snapshot.hasData ? (){
            bloc.submit();
          } : null,
          child: Text('Submit'),
          color: Colors.lightBlue,
        );
      },
    );
  }
}
