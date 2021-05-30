
import 'package:cogym/Utils/snackBarUtil.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

class AuthenticationRepository {
  var auth = FirebaseAuth.instance;
  // enum Status {Unitialized, Authenticated, Authenticated, Authenticating, Unauthenticated}
  Future<bool> signIn(context, email, password) async {
    auth.signInWithEmailAndPassword(
        email: email, password: password).then((_) {
      Navigator.popAndPushNamed(context, 'telaPrincipal');
      return true;
    }).catchError((error) {
      var errorCode = error.code;
      if (errorCode == 'wrong-password') {
        styleSnackBar("Email ou senha incorretos", context);
        return false;
      } else {
        styleSnackBar("Insira um email e senha válidos", context);
        return false;
      }
    }
    );
  }
  Future signOut(context) {
    auth.signOut().then((_) {
      Navigator.popAndPushNamed(context, 'telaLogin');
    }).catchError((error) {
      var errorCode = error.code;
      styleSnackBar(errorCode, context);
    });
  }
}