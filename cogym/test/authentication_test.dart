import 'package:cogym/Repository/authenticationRepository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth{}
class MockFirebaseUser extends Mock implements FirebaseAuth{}
class MockAuthResult extends Mock implements FirebaseAuth{}
class MockBuildContext extends Mock implements BuildContext {}
// class MockUserCredential extends Mock implements FirebaseAuth{}

void main() {
  final user = MockUser(
    isAnonymous: false,
    uid: 'someuid',
    email: 'bob@somedomain.com',
    displayName: 'Bob',
  );
  MockBuildContext _context = MockBuildContext();
  MockFirebaseAuth _auth = MockFirebaseAuth();
  BehaviorSubject<MockFirebaseUser> _user = BehaviorSubject<MockFirebaseUser>();
  var authRepository = AuthenticationRepository();
  
  group('User test', () {
    //TODO Teste de autenticação
    // when(_auth.signInWithEmailAndPassword(email: "bob@somedomain.com", password: "password")).thenAnswer((_) async {
    //   _user.add(MockFirebaseUser());
    // });
    test('Sign in with email and password', () async {

      authRepository.signIn(_context, "user1", "password");
      // expect(_repo, matcher)
    });
    test('Sign out', () async {

    });
  });
}
