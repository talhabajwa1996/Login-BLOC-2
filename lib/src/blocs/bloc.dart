import 'dart:async';
import '../blocs/validation_mixin.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Object with Validator {
  //final _email = StreamController<String>.broadcast();
  //final _password = StreamController<String>.broadcast();

  final _email = BehaviorSubject<String>(); //Using RxDart
  final _password = BehaviorSubject<String>();

  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);

  Stream<bool> get submitValidate => Rx.combineLatest2(
        email,
        password,
        (e, p) => true,
      );

  submit() {
    final email = _email.value;
    final password = _password.value;
    print("The Email is $email");
    print("The Password is $password");
  }

  dispose() {
    _email.close();
    _password.close();
  }
}
