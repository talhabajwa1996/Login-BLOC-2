import 'dart:async';
import 'validators.dart';

class Bloc extends Object with Validator{
  final _email = StreamController<String>();
  final _password = StreamController<String>();

  Stream<String> get email => _email.stream.transform(emailValidator);
  Stream<String> get password => _password.stream.transform(passwordValidator);

  Function(String) get addEmail => _email.sink.add;
  Function(String) get addPassword => _password.sink.add;

  dispose(){
    _email.close();
    _password.close();
  }
}