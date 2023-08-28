import 'package:firebase_auth/firebase_auth.dart';

import 'package:flex_fit/shared/widgets/custom_snackbar.dart';

class FirebaseAuthMethods {
  Future<String> signUp({required String email, required String password, required context}) async {
    String result = "Some error occurred";
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      CustomSnackBar.show(context: context, message: 'Login Successfully!');
      result = 'success';
    } catch (e) {
      CustomSnackBar.show(context: context, message: 'Something went wrong! , ${e.toString()}');
    }
    return result;
  }

  Future<String> logIn({required String email, required String password, required context}) async {
    String result = 'Some error occurred';
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      result = 'success';
      CustomSnackBar.show(context: context, message: 'Login Siccessfully');
    } catch (e) {
      CustomSnackBar.show(context: context, message: e.toString());
    }
    return result;
  }
}
